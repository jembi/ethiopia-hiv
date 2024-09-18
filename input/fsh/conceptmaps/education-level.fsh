Instance: ProprietaryEducationLevelToLOINCEducationLevel
InstanceOf: ConceptMap
Title: "Proprietary Education Level to LOINC Education Level"
Description: "Mapping to and from Proprietary Education Level to LOINC Education Level."
Usage: #definition

* name = "ProprietaryEducationLevelToLOINCEducationLevel"
* description = "Mapping to and from Proprietary Education Level to LOINC Education Level."
* title = "ConceptMap to and From proprietary education level to LOINC education Level"
* status = #active
* experimental = true
* date = "2024-01-31"

* group[+]
  * source = $EducationLevel
  * target = $LNC
  * insert ElementMap(No-Education, LA35-1, equivalent)
  * insert ElementMap(Primary, LA32466-7, equivalent)
  * insert ElementMap(Secondary, LA32467-5, equivalent)
  * insert ElementMap(Tertiary, LA15568-1, equivalent)
  * insert ElementMap(TVET, LA39-3, equivalent)
  * insert ElementMap(Other, LA46-8, equivalent)
 
* group[+]
  * source = $LNC
  * target = $EducationLevel
  * insert ElementMap(LA35-1, No-Education, equivalent)
  * insert ElementMap(LA32466-7, Primary, equivalent)
  * insert ElementMap(LA32467-5, Secondary, equivalent)
  * insert ElementMap(LA15568-1, Tertiary, equivalent)
  * insert ElementMap(LA39-3, TVET, equivalent)
  * insert ElementMap(LA46-8, Other, equivalent)