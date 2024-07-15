Instance:     PregnancyFuturePlansProprietaryToLOINC
InstanceOf:   ConceptMap
Title:     "Proprietary Pregnancy Future Plans to LOINC equivalent"
Description:  "Mapping to and from Proprietary Pregnancy Future Plans to LOINC equivalent."
Usage:        #definition

* name = "PregnancyFuturePlansProprietaryToLOINC"
* status = #active
* experimental = false
* date = "2024-05-22"

* group[+]
  * source = $YesNoCodeSystem
  * target = $LNC
  * insert ElementMap(true, LA26438-4, equivalent)
  * insert ElementMap(false, LA26440-0, equivalent)

* group[+]
  * source = $LNC
  * target = $YesNoCodeSystem
  * insert ElementMap(LA26438-4, true, equivalent)
  * insert ElementMap(LA26440-0, false, equivalent)