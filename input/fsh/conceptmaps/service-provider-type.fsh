Instance: ServiceProviderTypeSnomedLOINCCodesToProprietary
InstanceOf: ConceptMap
Title: "Snomed & LOINC Service Provider Type to Proprietary Service Provider Type"
Description: "Mapping to and from Snomed & LOINC Service Provider Type to Proprietary Service Provider Type."
Usage: #definition

* name = "ServiceProviderTypeSnomedLOINCCodesToProprietary"
* description = "Mapping to and from Snomed & LOINC Service Provider Type to Proprietary Service Provider Type."
* title = "ConceptMap to and From Snomed & LOINC Service Provider Type to Proprietary Service Provider Type."
* status = #active
* experimental = true
* date = "2024-08-30"

* group[+]
  * source = $ServiceProviderType
  * target = $SCT
  * insert ElementMap(Health-Center, 257622000, equivalent)
  * insert ElementMap(Public-Hospital, 276052003, equivalent)
  * insert ElementMap(Private-Hospital, 309895006, equivalent)
  * insert ElementMap(NBO-FBO-Hospital, 394794000, equivalent)
  * insert ElementMap(Private-Clinic, 185483006, equivalent)
  * insert ElementMap(Self-referred, 1991000124105, equivalent)
  * insert ElementMap(Community-Referred, 310391008,  equivalent)
  * insert ElementMap(Other, LA46-8, equivalent)

* group[+]
  * source = $SCT
  * target = $ServiceProviderType
  * insert ElementMap(257622000, Health-Center, equivalent)
  * insert ElementMap(276052003, Public-Hospital, equivalent)
  * insert ElementMap(309895006, Private-Hospital, equivalent)
  * insert ElementMap(394794000, NBO-FBO-Hospital, equivalent)
  * insert ElementMap(185483006, Private-Clinic, equivalent)
  * insert ElementMap(1991000124105, Self-referred, equivalent)
  * insert ElementMap(310391008, Community-Referred, equivalent)
  * insert ElementMap(LA46-8, Other, equivalent)

* group[+]
  * source = $ServiceProviderType
  * target = $LNC
  * insert ElementMap(Other, LA46-8, equivalent)

* group[+]
  * source = $LNC
  * target = $ServiceProviderType
  * insert ElementMap(LA46-8, Other, equivalent)