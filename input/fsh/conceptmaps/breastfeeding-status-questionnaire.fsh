Instance:     BreastfeedingStatusProprietaryToLOINC
InstanceOf:   ConceptMap
Title:     "Proprietary Breastfeeding Status to LOINC equivalent"
Description:  "Mapping to and from Proprietary Breastfeeding Status to LOINC equivalent."
Usage:        #definition

* name = "BreastfeedingStatusProprietaryToLOINC"
* status = #active
* experimental = true
* date = "2024-05-22"

* group[+]
  * source = $YesNoCodeSystem
  * target = $LNC
  * insert ElementMap(true, LA29252-6, equivalent)
  * insert ElementMap(false, LA29253-4, equivalent)

* group[+]
  * source = $LNC
  * target = $YesNoCodeSystem
  * insert ElementMap(LA29252-6, true, equivalent)
  * insert ElementMap(LA29253-4, false, equivalent)