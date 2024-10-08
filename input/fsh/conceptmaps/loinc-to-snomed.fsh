Instance: LOINCCodesToSNOMED
InstanceOf: ConceptMap
Title: "ConceptMap to and from LOINC to SNOMED"
Description: "Mapping to and from LOINC concepts to SNOMED."
Usage: #definition

* name = "LOINCCodesToSNOMED"
* description = "Mapping to and from LOINC concepts to SNOMED."
* title = "ConceptMap to and from LOINC to SNOMED"
* status = #active
* experimental = true
* date = "2024-10-08"

* group[+]
  * source = $LNC
  * target = $SCT
  * insert ElementMap(LA8969-3, 135818000, equivalent)
  * insert ElementMap(LA8968-5, 135817005, equivalent)
  * insert ElementMap(LA8967-7, 135815002, equivalent)

* group[+]
  * source = $SCT
  * target = $LNC
  * insert ElementMap(135818000, LA8969-3, equivalent)
  * insert ElementMap(135817005, LA8968-5, equivalent)
  * insert ElementMap(135815002, LA8967-7, equivalent)