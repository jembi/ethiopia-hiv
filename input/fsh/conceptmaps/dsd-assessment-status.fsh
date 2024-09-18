Instance: DSDAssessmentStatusLOINCCodesToProprietary
InstanceOf: ConceptMap
Title: "LOINC DSD Assessment Status to Proprietary DSD Assessment Status"
Description: "Mapping to and from LOINC DSD Assessment Status to Proprietary DSD Assessment Status."
Usage: #definition

* name = "DSDAssessmentStatusLOINCCodesToProprietary"
* description = "Mapping to and from LOINC DSD Assessment Status to Proprietary DSD Assessment Status."
* title = "ConceptMap to and From LOINC DSD Assessment Status to Proprietary DSD Assessment Status"
* status = #active
* experimental = true
* date = "2024-08-30"

* group[+]
  * source = $DSDAssessmentStatus
  * target = $LNC
  * insert ElementMap(Stable, LA14122-8, equivalent)
  * insert ElementMap(Unstable, LA14123-6, equivalent)

* group[+]
  * source = $LNC
  * target = $DSDAssessmentStatus
  * insert ElementMap(LA14122-8, Stable, equivalent)
  * insert ElementMap(LA14123-6, Unstable, equivalent)