Instance: SNOMEDCodesToProprietary
InstanceOf: ConceptMap
Title: "ConceptMap to and from SNOMED to Proprietary"
Description: "Mapping to and from proprietary concepts to SNOMED."
Usage: #definition

* name = "SNOMEDCodesToProprietary"
* description = "Mapping to and from proprietary concepts to SNOMED."
* title = "ConceptMap to and from SNOMED to Proprietary"
* status = #active
* experimental = true
* date = "2024-08-30"

* group[+]
  * source = $ARTFollowUpStatus
  * target = $SCT
  * insert ElementMap(alive-on-art, 129019007, equivalent)

* group[+]
  * source = $SCT
  * target = $ARTFollowUpStatus
  * insert ElementMap(129019007, alive-on-art, equivalent)

* group[+]
  * source = $HIVPositiveTracking
  * target = $SCT
  * insert ElementMap(Not-Started, 410524007, equivalent)

* group[+]
  * source = $SCT
  * target = $HIVPositiveTracking
  * insert ElementMap(410524007, Not-Started, equivalent)

* group[+]
  * source = $ServiceProviderType
  * target = $SCT
  * insert ElementMap(Health-Center, 257622000, equivalent)
  * insert ElementMap(Public-Hospital, 276052003, equivalent)
  * insert ElementMap(Private-Hospital, 309895006, equivalent)
  * insert ElementMap(NBO-FBO-Hospital, 394794000, equivalent)
  * insert ElementMap(Private-Clinic, 185483006, equivalent)
  * insert ElementMap(Self-referred, 1991000124105, equivalent)
  * insert ElementMap(Community-Referred, 310391008,  equivalent)
  * insert ElementMap(Other, LA46-8, equivalent)

* group[+]
  * source = $SCT
  * target = $ServiceProviderType
  * insert ElementMap(257622000, Health-Center, equivalent)
  * insert ElementMap(276052003, Public-Hospital, equivalent)
  * insert ElementMap(309895006, Private-Hospital, equivalent)
  * insert ElementMap(394794000, NBO-FBO-Hospital, equivalent)
  * insert ElementMap(185483006, Private-Clinic, equivalent)
  * insert ElementMap(1991000124105, Self-referred, equivalent)
  * insert ElementMap(310391008, Community-Referred, equivalent)
  * insert ElementMap(LA46-8, Other, equivalent)

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

* group[+]
  * source = $FinalOutcomeCodeSystem
  * target = $SCT
  * insert ElementMap(declined, 105480006, equivalent)

* group[+]
  * source = $SCT
  * target = $FinalOutcomeCodeSystem
  * insert ElementMap(105480006, declined, equivalent)

* group[+]
  * source = $ReasonNotStartedART
  * target = $SCT
  * insert ElementMap(declined, 105480006, equivalent)
  * insert ElementMap(on-adherence-preparation, 410265008, equivalent)

* group[+]
  * source = $SCT
  * target = $ReasonNotStartedART
  * insert ElementMap(105480006, declined, equivalent)
  * insert ElementMap(410265008, on-adherence-preparation, equivalent)

* group[+]
  * source = $EnhancedAdherenceCounselling
  * target = $SCT
  * insert ElementMap(eac, 410265008, equivalent)

* group[+]
  * source = $SCT
  * target = $EnhancedAdherenceCounselling
  * insert ElementMap(410265008, eac, equivalent)