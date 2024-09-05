Instance: CervicalCancerCarePlanLOINCCodesToProprietary
InstanceOf: ConceptMap
Title: "LOINC Cervical Cancer Care Plan to Proprietary Cervical Cancer Care Plan"
Description: "Mapping to and from LOINC Cervical Cancer Care Plan to Proprietary Cervical Cancer Care Plan."
Usage: #definition

* name = "CervicalCancerCarePlanLOINCCodesToProprietary"
* description = "Mapping to and from LOINC Cervical Cancer Care Plan to Proprietary Cervical Cancer Care Plan."
* title = "ConceptMap to and From LOINC Cervical Cancer Care Plan to Proprietary Cervical Cancer Care Plan"
* status = #active
* experimental = false
* date = "2024-08-30"

* group[+]
  * source = $CervicalCancerCarePlan
  * target = $LNC
  * insert ElementMap(cervical-cancer-care-plan, LP173209-0, equivalent)

* group[+]
  * source = $LNC
  * target = $CervicalCancerCarePlan
  * insert ElementMap(LP173209-0, cervical-cancer-care-plan, equivalent)
