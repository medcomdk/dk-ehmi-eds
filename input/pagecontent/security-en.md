## 7.1	EHMI Delivery Status (EDS) 

In [EHMI], the following stations are included in point-to-point message-delivery: End User Applications (EUAs), message-service-handlers (MSHs) and access-points (APs). 

All stations involved in EHMI message-delivery must register their message-handling in EHMI Delivery Status (EDS) as described in [FHIR Implementation Guide](https://build.fhir.org/ig/medcomdk/dk-ehmi-eds/). 

The stations are created in EHMI Endpoint Register (EER) and are assigned a unique device_id.

As stated in FHIR Implementation Guide, the delivery status is a profilering/profiling of the FHIR AuditEvent ressource.

Delivery status contains sensitive personal information/personfølsomme oplysninger (being the place of treatment/behandlingsstedet either as the sender or receiver of a message), and therefore the user access require a NSIS level ’Significant’.

### 7.1.1	EDS use cases
There are two main use cases regarding the use of delivery status service, EDS.

1.	Each station in EHMI message-delivery registers the delivery status in EDS. The registration happens on system level, and the individual stations can create a delivery status for the organizational contexts/organisationskontekster (combination of GLN numbers and SOR codes) for which they are whitelisted (see below).

2.	EDS provides an interface for searching and lookup/opslag, which can be used for track'n'trace of messages or for troubleshooting.
Searching and lookup can take place either at:
    1. System level for stations using their own device_id. (This way, for example, functionality can be established from end user applications, where users can search for the status of messages sent by themselves.)
    2.	Citizen level using CPR  
    3.	Super user/vendor (supporter) level using the CVR number of the users organization, and where the user is granted access via a special right (granted by SEB user catalogue)

### 7.1.2	Enrollment/whitelisting of system clients in EDS (for registration, search, and lookup)
Stations that register delivery status, and can search and read their own registrations, are registered as system clients.
In addition to the elements described in section 3.3 Enrollment of clients, the following must be specified when enrolling system clients: 
- The device_id which the station is registered with in EER
- A list of organizational contexts/organisationskontekster, for which the station sends/receives messages in the form of SOR code and GLN location number

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
SOR:<XXXXX>	(kun for systemklienter og kun ved registreringer) En angivelse af organisationens SOR kode, hvor <XXXXX> sættes til selve koden.

GLN:<YYYYY>	(kun for systemklienter og kun ved registreringer) En angivelse af organisationens GLN lokationsnummer, hvor <YYYYY> sættes til selve lokationsnummeret.

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
