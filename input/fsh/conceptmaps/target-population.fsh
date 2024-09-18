Instance: TargetPopulationSnomedCodesToProprietary
InstanceOf: ConceptMap
Title: "Snomed Target Population to Proprietary Target Population"
Description: "Mapping to and from Snomed Target Population to Proprietary Target Population."
Usage: #definition

* name = "TargetPopulationSnomedCodesToProprietary"
* description = "Mapping to and from Snomed Target Population to Proprietary Target Population."
* title = "ConceptMap to and From Snomed Target Population to Proprietary Target Population"
* status = #active
* experimental = true
* date = "2024-08-30"

* group[+]
  * source = $TargetPopulation
  * target = $SCT
  * insert ElementMap(MSM, 76102007, equivalent)
  * insert ElementMap(Female-Commercial-Sex-Workers, 159799000, equivalent)
  * insert ElementMap(TG, 407375002, equivalent)
  * insert ElementMap(OVC-AIDS-Orphaned, 373927007, equivalent)
  * insert ElementMap(Mobile-Daily-Laborers, 106540006, equivalent)
  * insert ElementMap(Distance-Drivers, 87447002, equivalent)
  * insert ElementMap(Refugee, 446654005,  equivalent)
  * insert ElementMap(People-Who-Inject-Drug, 226034001, equivalent)

* group[+]
  * source = $SCT
  * target = $TargetPopulation
  * insert ElementMap(76102007, MSM, equivalent)
  * insert ElementMap(159799000, Female-Commercial-Sex-Workers, equivalent)
  * insert ElementMap(407375002, TG, equivalent)
  * insert ElementMap(373927007, OVC-AIDS-Orphaned, equivalent)
  * insert ElementMap(106540006, Mobile-Daily-Laborers, equivalent)
  * insert ElementMap(87447002, Distance-Drivers, equivalent)
  * insert ElementMap(446654005, Refugee, equivalent)
  * insert ElementMap(226034001, People-Who-Inject-Drug, equivalent)