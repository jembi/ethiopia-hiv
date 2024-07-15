Instance:     PregnancyStatusProprietaryToLOINC
InstanceOf:   ConceptMap
Title:     "Proprietary Pregnancy Status to LOINC equivalent"
Description:  "Mapping to and from Proprietary Pregnancy Status to LOINC equivalent."
Usage:        #definition

* name = "PregnancyStatusProprietaryToLOINC"
* status = #active
* experimental = false
* date = "2024-05-22"

* group[+]
  * source = $YesNoCodeSystem
  * target = $LNC
  * insert ElementMap(true, LA15173-0, equivalent)
  * insert ElementMap(false, LA26683-5, equivalent)

* group[+]
  * source = $LNC
  * target = $YesNoCodeSystem
  * insert ElementMap(LA15173-0, true, equivalent)
  * insert ElementMap(LA26683-5, false, equivalent)