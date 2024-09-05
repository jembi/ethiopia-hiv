Instance: ARVAdherenceLOINCCodesToProprietary
InstanceOf: ConceptMap
Title: "LOINC ARV Adherence to Proprietary ARV Adherence"
Description: "Mapping to and from LOINC ARV Adherence to Proprietary ARV Adherence."
Usage: #definition

* name = "ARVAdherenceLOINCCodesToProprietary"
* description = "Mapping to and from LOINC ARV Adherence to Proprietary ARV Adherence."
* title = "ConceptMap to and From LOINC ARV Adherence to Proprietary ARV Adherence"
* status = #active
* experimental = false
* date = "2024-08-30"

* group[+]
  * source = $ARVAdherence
  * target = $LNC
  * insert ElementMap(Poor, LA8969-3, equivalent)
  * insert ElementMap(Fair, LA8968-5, equivalent)
  * insert ElementMap(Good, LA8967-7, equivalent)

* group[+]
  * source = $LNC
  * target = $ARVAdherence
  * insert ElementMap(LA8969-3, Poor, equivalent)
  * insert ElementMap(LA8968-5, Fair, equivalent)
  * insert ElementMap(LA8967-7, Good, equivalent)