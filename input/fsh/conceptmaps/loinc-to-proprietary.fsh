Instance: LOINCCodesToProprietary
InstanceOf: ConceptMap
Title: "ConceptMap to and from LOINC to Proprietary"
Description: "Mapping to and from proprietary concepts to LOINC."
Usage: #definition

* name = "LOINCCodesToProprietary"
* description = "Mapping to and from proprietary concepts to LOINC."
* title = "ConceptMap to and from LOINC to Proprietary"
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

* group[+]
  * source = $LNC
  * target = $ARVAdherence
  * insert ElementMap(91382-2, Stopped, equivalent)

* group[+]
  * source = $PS-FPM-YesNoCodeSystem
  * target = $LNC
  * insert ElementMap(ps-fpm-1.3-true, LA29252-6, equivalent)
  * insert ElementMap(ps-fpm-1.3-false, LA29253-4, equivalent)

* group[+]
  * source = $LNC
  * target = $PS-FPM-YesNoCodeSystem
  * insert ElementMap(LA29252-6, ps-fpm-1.3-true, equivalent)
  * insert ElementMap(LA29253-4, ps-fpm-1.3-false, equivalent)

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
  * source = $PS-FPM-YesNoCodeSystem
  * target = $LNC
  * insert ElementMap(ps-fpm-1.2-true, LA26438-4, equivalent)
  * insert ElementMap(ps-fpm-1.2-false, LA26440-0, equivalent)

* group[+]
  * source = $LNC
  * target = $PS-FPM-YesNoCodeSystem
  * insert ElementMap(LA26438-4, ps-fpm-1.2-true, equivalent)
  * insert ElementMap(LA26440-0, ps-fpm-1.2-false, equivalent)

* group[+]
  * source = $PS-FPM-YesNoCodeSystem
  * target = $LNC
  * insert ElementMap(ps-fpm-1.1-true, LA15173-0, equivalent)
  * insert ElementMap(ps-fpm-1.1-false, LA26683-5, equivalent)

* group[+]
  * source = $LNC
  * target = $PS-FPM-YesNoCodeSystem
  * insert ElementMap(LA15173-0, ps-fpm-1.1-true, equivalent)
  * insert ElementMap(LA26683-5, ps-fpm-1.1-false, equivalent)

* group[+]
  * source = $ServiceProviderType
  * target = $LNC
  * insert ElementMap(Other, LA46-8, equivalent)

* group[+]
  * source = $LNC
  * target = $ServiceProviderType
  * insert ElementMap(LA46-8, Other, equivalent)

* group[+]
  * source = $FinalOutcomeCodeSystem
  * target = $LNC
  * insert ElementMap(started-art, 63936-9, equivalent)
  * insert ElementMap(died, 81954-0, equivalent)
  * insert ElementMap(confirmed-referral, 39266-2, equivalent)
  * insert ElementMap(started-art-in-other-hf, 45235-9, equivalent)
  * insert ElementMap(lost-to-follow-up, 45237-5, equivalent)
  * insert ElementMap(other, LA46-8, equivalent)

* group[+]
  * source = $LNC
  * target = $FinalOutcomeCodeSystem
  * insert ElementMap(63936-9, started-art, equivalent)
  * insert ElementMap(81954-0, died, equivalent)
  * insert ElementMap(39266-2, confirmed-referral, equivalent)
  * insert ElementMap(45235-9, started-art-in-other-hf, equivalent)
  * insert ElementMap(45237-5, lost-to-follow-up, equivalent)
  * insert ElementMap(LA46-8, other, equivalent)

* group[+]
  * source = $TPTProphylaxisTypeCodeSystem
  * target = $LNC
  * insert ElementMap(inh, 18934-0, equivalent)

* group[+]
  * source = $LNC
  * target = $TPTProphylaxisTypeCodeSystem
  * insert ElementMap(18934-0, inh, equivalent)

* group[+]
  * source = $ReasonNotStartedART
  * target = $LNC
  * insert ElementMap(referred-tx-not-initiated, LP73973-7, equivalent)
  * insert ElementMap(died, LA4645-3, equivalent)
  * insert ElementMap(known-positive-on-art, 45231-8, equivalent)
  * insert ElementMap(on-oi-management, 47244-9, equivalent)
  * insert ElementMap(other, LA46-8, equivalent)

* group[+]
  * source = $LNC
  * target = $ReasonNotStartedART
  * insert ElementMap(LP73973-7, referred-tx-not-initiated, equivalent)
  * insert ElementMap(LA4645-3, died, equivalent)
  * insert ElementMap(45231-8, known-positive-on-art, equivalent)
  * insert ElementMap(47244-9, on-oi-management, equivalent)
  * insert ElementMap(LA46-8, other, equivalent)