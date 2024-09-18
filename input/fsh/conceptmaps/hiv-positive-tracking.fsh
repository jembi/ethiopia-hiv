Instance: HIVPositiveTrackingLOINCCodesToProprietary
InstanceOf: ConceptMap
Title: "LOINC HIV Positive Tracking to Proprietary HIV Positive Tracking"
Description: "Mapping to and from LOINC HIV Positive Tracking to Proprietary HIV Positive Tracking."
Usage: #definition

* name = "HIVPositiveTrackingLOINCCodesToProprietary"
* description = "Mapping to and from LOINC HIV Positive Tracking to Proprietary HIV Positive Tracking."
* title = "ConceptMap to and From LOINC HIV Positive Tracking to Proprietary HIV Positive Tracking"
* status = #active
* experimental = false
* date = "2024-08-30"

* group[+]
  * source = $HIVPositiveTracking
  * target = $LNC
  * insert ElementMap(Started-ART, 63936-9, equivalent)
  * insert ElementMap(Final-Outcome, 63939-3, equivalent)
  * insert ElementMap(Linked-To-Care, 67723-7, equivalent)

* group[+]
  * source = $LNC
  * target = $HIVPositiveTracking
  * insert ElementMap(63936-9, Started-ART, equivalent)
  * insert ElementMap(63939-3, Final-Outcome, equivalent)
  * insert ElementMap(67723-7, Linked-To-Care, equivalent)

* group[+]
  * source = $HIVPositiveTracking
  * target = $SCT
  * insert ElementMap(Not-Started, 410524007, equivalent)

* group[+]
  * source = $SCT
  * target = $HIVPositiveTracking
  * insert ElementMap(410524007, Not-Started, equivalent)