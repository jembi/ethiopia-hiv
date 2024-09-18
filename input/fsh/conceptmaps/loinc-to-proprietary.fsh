Instance: LOINCCodesToProprietary
InstanceOf: ConceptMap
Title: "ConceptMap to and from LOINC"
Description: "Mapping to and from proprietary concepts to LOINC."
Usage: #definition

* name = "LOINCCodesToProprietary"
* description = "Mapping to and from proprietary concepts to LOINC."
* title = "ConceptMap to and from LOINC"
* status = #active
* experimental = true
* date = "2024-08-30"

* group[+]
  * source = $ARTEligibilityStatusCodeSystem
  * target = $LNC
  * insert ElementMap(Eligible, 47240-7, equivalent)
  * insert ElementMap(Eligible-and-Ready, 47241-5, equivalent)

* group[+]
  * source = $LNC
  * target = $ARTEligibilityStatusCodeSystem
  * insert ElementMap(47240-7, Eligible, equivalent)
  * insert ElementMap(47241-5, Eligible-and-Ready, equivalent)

* group[+]
  * source = $ARTFollowUpStatus
  * target = $LNC
  * insert ElementMap(to, 45256-5, equivalent)
  * insert ElementMap(dead, 77978-5, equivalent)
  * insert ElementMap(drop, 45257-3, equivalent)
  * insert ElementMap(restart, 63936-9, equivalent)
  * insert ElementMap(lost, 45237-5, equivalent)
  * insert ElementMap(stop, 91382-2, equivalent)

* group[+]
  * source = $LNC
  * target = $ARTFollowUpStatus
  * insert ElementMap(45256-5, to, equivalent)
  * insert ElementMap(77978-5, dead, equivalent)
  * insert ElementMap(45257-3, drop, equivalent)
  * insert ElementMap(63936-9, restart, equivalent)
  * insert ElementMap(45237-5, lost, equivalent)
  * insert ElementMap(91382-2, stop, equivalent)

* group[+]
  * source = $ARVAdherence
  * target = $LNC
  * insert ElementMap(Stopped, 91382-2, equivalent)
  * insert ElementMap(Poor, LA8969-3, equivalent)
  * insert ElementMap(Fair, LA8968-5, equivalent)
  * insert ElementMap(Good, LA8967-7, equivalent)

* group[+]
  * source = $LNC
  * target = $ARVAdherence
  * insert ElementMap(91382-2, Stopped, equivalent)
  * insert ElementMap(LA8969-3, Poor, equivalent)
  * insert ElementMap(LA8968-5, Fair, equivalent)
  * insert ElementMap(LA8967-7, Good, equivalent)

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

* group[+]
  * source = $DSDAssessmentStatus
  * target = $LNC
  * insert ElementMap(Stable, LA14122-8, equivalent)
  * insert ElementMap(Unstable, LA14123-6, equivalent)

* group[+]
  * source = $LNC
  * target = $DSDAssessmentStatus
  * insert ElementMap(LA14122-8, Stable, equivalent)
  * insert ElementMap(LA14123-6, Unstable, equivalent)

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

* group[+]
  * source = $HIVPositiveTracking
  * target = $LNC
  * insert ElementMap(Started-ART, 63936-9, equivalent)
  * insert ElementMap(Final-Outcome, 63939-3, equivalent)
  * insert ElementMap(Linked-To-Care, 67723-7, equivalent)

* group[+]
  * source = $LNC
  * target = $HIVPositiveTracking
  * insert ElementMap(63936-9, Started-ART, equivalent)
  * insert ElementMap(63939-3, Final-Outcome, equivalent)
  * insert ElementMap(67723-7, Linked-To-Care, equivalent)

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

* group[+]
  * source = $ServiceProviderType
  * target = $LNC
  * insert ElementMap(Other, LA46-8, equivalent)

* group[+]
  * source = $LNC
  * target = $ServiceProviderType
  * insert ElementMap(LA46-8, Other, equivalent)