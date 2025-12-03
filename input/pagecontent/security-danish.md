## 7.1	EHMI Delivery Status (EDS) 

I [EHMI] er der følgende stationer som indgår i punkt-til-punkt meddelelsesforsendelser: Fagsystemer, message-service-handlere og access-points. 

Alle stationer der indgår i en EHMI meddelelsesforsendelse skal registrere deres meddelelses-håndteringer i forsendelsesstatusservicen EDS, som beskrevet i FHIR implementation guiden på https://build.fhir.org/ig/medcomdk/dk-ehmi-eds/. 

Stationerne oprettes i EHMI Endpoint registeret (EER) og tildeles i forbindelse med oprettelsen et unikt device_id.

Som det fremgår af FHIR implementation guiden realiseres forsendelsesstatus som en profilering af FHIR AuditEvent ressourcen.

Forsendelsesstatus indeholder personfølsomme oplysninger (i form at behandlingsstedet som indgår som afsender eller modtager af en meddelelse), og brugeradgange forudsætter derfor et NSIS-niveau ’Betydelig’.

### 7.1.1	EDS usecases
Der er to overordnende usecases for anvendelsen af forsendelsesstatusservicen EDS.

1.	Stationerne i en EHMI forsendelse foretager hver især en registrering af forsendelsesstatus i EDS. Registrering sker på systemniveau, og de enkelte stationer kan oprette forsendelsesstatus for de organisationskontekster (kombinationer af GLN numre og SOR koder) som de er whitelistet til (se nedenstående).

2.	EDS stiller en grænseflade til søgning og opslag til rådighed, som kan benyttes til track’n’trace af meddelelsesforsendelser eller til fejlsøgning.  
Søgning og opslag kan enten foregå  :
    a.	På systemniveau for stationerne på deres eget device_id. (Derved kan der eksempelvis fra fagsystemer etableres funktionalitet hvor brugere kan fremsøge status for meddelelser de selv har sendt.)
    b.	På borgerniveau på eget CPR  
    c.	På superbruger/leverandør(supporter)-niveau på CVR nummer for brugerens organisation og hvor brugeren får adgang via en særlig rettighed (som tildeles gennem SEB brugerkataloget)

### 7.1.2	Indrullering/whitelisting af systemklienter i EDS (til registrering, søgning og opslag)
Stationer som registrerer forsendelsesstatus og kan søge og læse egne registreringer indrulleres som systemklienter.
Udover de i afsnit 3.3 Indrullering af klienter beskrevne elementer skal der under indrullering af systemklienter angives følgende:
    - Det device_id som stationen er registreret med i EER
    - En liste af organisationskontekster som stationen sender/modtager meddelelser for i form af SOR kode og GLN lokationsnummer

Under indrullering angives følgende som scope element:
 
(Ovenstående system/AuditEvent.crs syntaks er baseret på definitionen af scopes for FHIR ressourcer i [SMART].)
Metadata for en EDS systemklient

Udover de i afsnit 3.3.1 Metadata for klienter beskrevne metadata elementer skal følgende metadata elementer angives for systemklienter.

Metadata element	Beskrivelse
ehmi:eer:device_id	En angivelse af det device_id som stationen er registreret med i EER.
ehmi:org_context	Et array af JSON objekter bestående af name (organisationsnavn), sor (SOR kode) og gln (lokationsnummer) som stationen sender/modtager meddelelser for.

Bemærk, at det er hensigten, at Authorization Server efter produktionspiloten i stedet laver opslag på en stations organisationskontekster i EER postkasseregisteret og den eksplicit whitelisting dermed bortfalder  .
Eksempel metadata dokument for en EDS systemklient:

### 7.1.3	Indrullering/whitelisting af brugerklienter (til søgning og opslag)
Brugerklienter som anvendes af borgere eller superbrugere/supportere til at søge og læse forsendelsesstatus-registreringer indrulleres alene med de i afsnit 3.3 Indrullering af klienter beskrevne elementer. 

Under indrullering angives følgende scope element:
 
Metadata for en EDS brugerklient til søgning og opslag
For EDS brugerklienter skal der kun angives de i afsnit 3.3.1 Metadata for klienter beskrevne metadata.
Eksempel metadata dokument for en EDS brugerklient:

### 7.1.4	Kald til Token Endpoint

I tilgangen til EDS opereres der for registreringer med organisations-specifikke tokens, det vil sige at de enkelte stationers systemklienter som optræder i flere organisatoriske kontekster skal trække et særskilt token hos Authorization Server for hver SOR/GLN kontekst.
For at få udstedt et access token til at kunne tilgå EDS angives følgende scopes:
scope 	Beskrivelse

EDS	En angivelse af det er for EDS, at klienten ønsker et access token.
system/AuditEvent.crs	(kun for systemklienter) En angivelse af at tokenet skal kunne registrere/læse/fremsøge forsendelsesstatus ressourcer (som er profileringer af FHIR’s AuditEvent ressource).
user/AuditEvent.rs	(kun for brugerklienter) En angivelse af at tokenet skal kunne læse og fremsøge forsendelsesstatus ressourcer (som er profileringer af FHIR’s AuditEvent ressource).
SOR:[XXXXX]	(kun for systemklienter og kun ved registreringer) En angivelse af organisationens SOR kode, hvor [XXXXX] sættes til selve koden.

GLN:[YYYYY>] (kun for systemklienter og kun ved registreringer) En angivelse af organisationens GLN lokationsnummer, hvor [YYYYY] sættes til selve lokationsnummeret.

Eksempel på en samlet scope som indgår i kaldet for en systemklient: 

Eksemplet på et kald til Token Endpoint med ovenstående eksempel scope (bemærk at kaldet foretages via 2-vejs TLS):
 
**Valideringer af kaldet hos Authorization Server**

Kaldet til Token Endpoint valideres hos Authorization Server, som validerer klientens TLS-klientcertifikat og tjekker, at klienten er indrulleret/whitelistet med de angivne scopes. 

For systemklienter, der anmoder om et token til at foretage registreringer, mapper Authorization Serveren således client_id fra kaldet til det registrerede device_id og validerer, at klienten er whitelistet til såvel EDS servicen, den angivne ’create’ operation for AuditEvent ressourcen og den angivne organisatoriske kontekst i form af SOR kode og GLN lokationsnummer. 

For access tokens udstedt til systemklienter, der laver registreringer i EDS indlejrer Authorization Server device_id og den organisatoriske kontekst som yderligere claims i tokenet på følgende form:

Claim	Beskrivelse
ehmi:eer:device_id	En angivelse af device_id som stationen er registreret med i EER.
ehmi:org_context	Den aktuelle organisationskontekst for stationen, angivet som JSON objekt bestående af name (organisationsnavn), sor (SOR kode) og gln (lokationsnummer).

### 7.1.5	Kald til EDS

Kald til EDS foretages som beskrevet i den generelle sikkerhedsmodel som REST-kald over tovejs TLS, med access token (som er sender-constrained) i en HTTP header.

Eksempel på en systemklients ’create’ kald til EDS med AuditEvent  ressourcen angivet som JSON objekt:
 
**EDS adgangskontrol**

Forsendelsesstatusservicen tjekker at access tokenet både er gyldigt og udstedt til EDS og validerer ’sender-contrained’ egenskaben, det vil sige validerer, at det af klientens anvendte TLS-klientcertifikat matcher certifikatet, som blev indlejret i access tokenet. 

Ved registrering af en forsendelsesstatus tjekker servicen desuden, at tokenet indeholder de nødvendige scopes til at klienten må foretage registreringer i EDS. EDS tjekker endvidere hvorvidt SOR koden, GLN lokationsnummeret og device_id som den kan uddrage af access tokenet, matcher oplysningerne i den medsendte AuditEvent ressource.
 
Ved søgning og læsning afgrænser EDS servicen tilgangen:

1.	For systemklienter som repræsenter en station i et meddelelses-flow: Til registreringer foretaget af stationens eget device_id.
EDS begrænser således adgangen til forsendelsesstatusregistreringer hvori der indgår samme device_id, som fremgår af access tokenets ehmi:eer:device_id claim.

2.	For borgere som tilgår EDS via en brugerklient: Til registreringer foretaget på borgerens eget CPR nummer.

EDS begrænser således adgangen til forsendelsesstatusregistreringer hvori der indgår samme patient CPR nummer, som fremgår af access tokenets cpr claim.

3.	For superbrugere/supportere som tilgår EDS via en brugerklient: Til registreringer vedrørende egen organisation på CVR niveau.

EDS validerer først, at den adgangsgivende rolle  som tildeles superbrugere/supporter fremgår af access tokenets rolle-struktur i priv claim’et. EDS begrænser derefter adgangen til forsendelsesstatusregistreringer, hvori der indgår samme organisations CVR-nummer, som fremgår af access tokenets cvr claim.
