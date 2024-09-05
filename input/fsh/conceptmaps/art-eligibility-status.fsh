Instance: ARTEligibilityStatusLOINCCodesToProprietary
InstanceOf: ConceptMap
Title: "LOINC ART Eligibility Status to Proprietary ART Eligibility Status"
Description: "Mapping to and from LOINC ART Eligibility Status to Proprietary ART Eligibility Status."
Usage: #definition

* name = "ARTEligibilityStatusLOINCCodesToProprietary"
* description = "Mapping to and from LOINC ART Eligibility Status to Proprietary ART Eligibility Status."
* title = "ConceptMap to and From LOINC ART Eligibility Status to Proprietary ART Eligibility Status"
* status = #active
* experimental = false
* date = "2024-08-30"

* group[+]
  * source = $ARTEligibilityStatusCodeSystem
  * target = $LNC
  * insert ElementMap(Eligible, 47240-7, equivalent)
  * insert ElementMap(Eligible-and-Ready, 47241-5, equivalent)

* group[+]
  * source = $LNC
  * target = $ARTEligibilityStatusCodeSystem
  * insert ElementMap(47240-7, Eligible, equivalent)
  * insert ElementMap(47241-5, Eligible-and-Ready, equivalent)