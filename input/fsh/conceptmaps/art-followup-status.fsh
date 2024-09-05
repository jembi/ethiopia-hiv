Instance: ARTFollowUpStatusSnomedLOINCCodesToProprietary
InstanceOf: ConceptMap
Title: "Snomed & LOINC ART Follow Up Status to Proprietary ART Follow Up Status"
Description: "Mapping to and from Snomed & LOINC ART Follow Up Status to Proprietary ART Follow Up Status."
Usage: #definition

* name = "ARTFollowUpStatusSnomedLOINCCodesToProprietary"
* description = "Mapping to and from Snomed & LOINC ART Follow Up Status to Proprietary ART Follow Up Status."
* title = "ConceptMap to and From Snomed & LOINC ART Follow Up Status to Proprietary ART Follow Up Status"
* status = #active
* experimental = false
* date = "2024-08-30"

* group[+]
  * source = $ARTFollowUpStatus
  * target = $LNC
  * insert ElementMap(to, 45256-5, equivalent)
  * insert ElementMap(dead, 77978-5, equivalent)
  * insert ElementMap(drop, 45257-3, equivalent)
  * insert ElementMap(restart, 63936-9, equivalent)
  * insert ElementMap(lost, 45237-5, equivalent)
  * insert ElementMap(stop, 91382-2, equivalent)

* group[+]
  * source = $LNC
  * target = $ARTFollowUpStatus
  * insert ElementMap(45256-5, to, equivalent)
  * insert ElementMap(77978-5, dead, equivalent)
  * insert ElementMap(45257-3, drop, equivalent)
  * insert ElementMap(63936-9, restart, equivalent)
  * insert ElementMap(45237-5, lost, equivalent)
  * insert ElementMap(91382-2, stop, equivalent)

* group[+]
  * source = $ARTFollowUpStatus
  * target = $SCT
  * insert ElementMap(alive-on-art, 129019007, equivalent)

* group[+]
  * source = $SCT
  * target = $ARTFollowUpStatus
  * insert ElementMap(129019007, alive-on-art, equivalent)