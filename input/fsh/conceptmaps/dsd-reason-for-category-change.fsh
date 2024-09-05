Instance: DSDReasonForCategoryChangeLOINCCodesToProprietary
InstanceOf: ConceptMap
Title: "LOINC DSD Reason For Category Change to Proprietary DSD Reason For Category Change"
Description: "Mapping to and from LOINC DSD Reason For Category Change to Proprietary DSD Reason For Category Change."
Usage: #definition

* name = "DSDReasonForCategoryChangeLOINCCodesToProprietary"
* description = "Mapping to and from LOINC DSD Reason For Category Change to Proprietary DSD Reason For Category Change."
* title = "ConceptMap to and From LOINC DSD Reason For Category Change to Proprietary DSD Reason For Category Change"
* status = #active
* experimental = false
* date = "2024-08-30"

* group[+]
  * source = $DSDReasonForCategoryChange
  * target = $LNC
  * insert ElementMap(Dead, 77978-5, equivalent)
  * insert ElementMap(Lost, 45237-5, equivalent)
  * insert ElementMap(TO, 45256-5, equivalent)
  * insert ElementMap(Unknown, LA29947-1, equivalent)
  * insert ElementMap(Other, LA46-8, equivalent)

* group[+]
  * source = $LNC
  * target = $DSDReasonForCategoryChange
  * insert ElementMap(77978-5, Dead, equivalent)
  * insert ElementMap(45237-5, Lost, equivalent)
  * insert ElementMap(45256-5, TO, equivalent)
  * insert ElementMap(LA29947-1, Unknown, equivalent)
  * insert ElementMap(LA46-8, Other, equivalent)