/*CodeSystem: ARTFollowUpStatusCodeSystem
Id: art-follow-up-status-code-system
Title: "Follow Up Status"
Description: "A list of codes describing the follow up statuses"
* ^experimental = false
* ^caseSensitive = true
//* #alive-on-art "Alive on ART"
//* #to "TO"
//* #dead "Dead"
//* #drop "Drop"
//* #restart "Restart"
//* #lost "Lost"
//* #stop "Stop"*/

ValueSet: ARTFollowUpStatusValueSet
Id: art-follow-up-status-value-set
Title: "Follow Up Status"
Description: "FollowUp Status"
* ^experimental = false
* $SCT#129019007 "Taking medication"
* $LNC#45257-3 "Date dropped from HIV treatment"
* $LNC#45256-5 "HIV treatment clinic transferred to"
* $LNC#91382-2 "Date medication stopped - Reported"
* $LNC#45237-5 "Date lost to HIV treatment follow-up"
* $LNC#77978-5 "Patient died from illness of interest"
* $LNC#63936-9 "Start date of treatment or therapy"
//* include codes from system ARTFollowUpStatusCodeSystem

CodeSystem: ARVTreatmentCodeSystem
Id: arv-treatment-code-system
Title: "ARV Drugs"
Description: "A list of codes describing the ARV Drugs."
* ^experimental = false
* ^caseSensitive = true
* #1a "1a"
* #1b "1b"
* #1c "AZT + 3TC + NVP - Product containing only lamivudine and nevirapine and zidovudine"
* #1d "AZT + 3TC + EFV"
* #1e "TDF + 3TC + EFV - Product containing only efavirenz and lamivudine and tenofovir"
* #1f "TDF + 3TC + NVP"
* #1g "ABC + 3TC + EFV - Product containing abacavir and lamivudine"
* #1h "ABC + 3TC + NVP - Product containing abacavir and lamivudine"
* #1j "TDF + 3TC + DTG"
* #1k "AZT + 3TC + DTG"
* #1a-30 "1a-30"
* #1a-40 "1a-40"
* #1b-30 "1b-30"
* #1b-40 "1b-40"
* #2a "2a"
* #2b "2b"
* #2c "2c"
* #2d "2d"
* #2e "AZT + 3TC + LPV/r - Product containing lamivudine and zidovudine"
* #2f "AZT + 3TC + ATV/r - Product containing lamivudine and zidovudine"
* #2g "TDF + 3TC+ LPV/r"
* #2h "TDF + 3TC + ATV/r"
* #2i "ABC + 3TC + LPV/r - Product containing abacavir and lamivudine"
* #3a "DRV/r + DTG + AZT/3TC"
* #3b "DRV/r + DTG + TDF/3TC - Product containing dolutegravir and lamivudine"
* #3d "DRV/r + ABC + EFV + 3TC"
* #4a "4a"
* #4b "4b"
* #4c "AZT + 3TC + NVP"
* #4d "AZT + 3TC + EFV"
* #4e "TDF + 3TC + EFV"
* #4f "AZT + 3TC + LPV/r"
* #4g "ABC + 3TC + LPV/r"
* #4j "ABC + 3TC + DTG"
* #4i "TDF + 3TC + DTG"
* #4k "AZT + 3TC + DTG"
* #5a "5a"
* #5b "5b"
* #5c "5c"
* #5d "5d"
* #5e "ABC + 3TC + LPV/r"
* #5f "AZT + 3TC + LPV/r"
* #5g "TDF + 3TC + EFV"
* #5h "ABC + 3TC + EFV"
* #5i "TDF + 3TC + LPV/r"
* #5j "other"
* #5k "RAL + AZT + 3TC"
* #5m "ABC + 3TC + DTG"
* #5n "ABC + 3TC + LPV/r"
* #6f "DRV/r + DTG + ABC + 3TC"
* #other-adult-1 "Other Adult first line regimen"
* #other-adult-2 "Other Adult second line regimen"
* #other-adult-3 "Other Adult third line regimen"
* #other-children-1 "Other Children first line regimen"
* #other-children-2 "Other Children second line regimen"
* #other-children-3 "Other Children third line regimen"

ValueSet: ARVTreatmentValueSet
Id: arv-treatment-value-set
Title: "ARV Drugs"
Description: "A list of codes describing the ARV Drugs."
* ^experimental = false
* $SCT#874950001 "Product containing only efavirenz and lamivudine and tenofovir"
* $SCT#324859007 "Product containing lamivudine and zidovudine"
* $SCT#776467001 "Product containing only lamivudine and nevirapine and zidovudine"
* $SCT#787163007 "Product containing dolutegravir and lamivudine"
* $SCT#413381000 "Product containing abacavir and lamivudine"
* include codes from system ARVTreatmentCodeSystem

/*CodeSystem: HIVCarePlanCodeSystem
Id: hiv-care-plan-code-system
Title: "HIV CarePlan Codes"
Description: "A list of codes for a HIV related care plan."
* ^url = $CARE_PLAN
* ^experimental = false
* ^caseSensitive = true
//* #hiv-positive-tracking "HIV Positive Tracking"
//* #art-follow-up "ART Follow-Up"*/

/*ValueSet: HIVCarePlanValueSet
Id: hiv-care-plan-value-set
Title: "HIV CarePlan"
Description: "HIV CarePlan"
* ^experimental = false
* include codes from system hiv-care-plan-code-system*/

/*CodeSystem: HIVCarePlanActivitiesCodeSystem
Id: hiv-care-plan-activities-code-system
Title: "HIV CarePlan Activities"
Description: "A list of codes describing the HIV+ tracking care plan subcategories code"
* ^url = $CARE_PLAN_TRACKING
* ^experimental = false
* ^caseSensitive = true
//* #linked-to-care "Linked to care and treatment"
//* #final-outcome "Final Outcome"
//* #started-art "Started ART"
//* #art-not-started "ART Not Started"*/

/*ValueSet: HIVCarePlanActivitiesValueSet
Id: hiv-care-plan-activities-value-set
Title: "HIV CarePlan Activities"
Description: "HIV CarePlan Activities"
* ^experimental = false
* $LNC#63939-3 "End date of treatment or therapy"
* $LNC#63936-9 "Start date of treatment or therapy"
* $SCT#410524007 "Was not started"
* $LNC#67723-7 "Date of health-related event"
//* include codes from system HIVCarePlanActivitiesCodeSystem*/

CodeSystem: CervicalCancerCarePlanCodeSystem
Id: cervical-cancer-care-plan-code-system
Title: "Cervical Cancer CarePlan"
Description: "A list of codes describing the cervical cancer care plan category code"
* ^experimental = false
* ^caseSensitive = true
* #cervical-cancer-care-plan "Cervical cancer care plan"

/*ValueSet: CervicalCancerCarePlanValueSet
Id: cervical-cancer-care-plan-value-set
Title: "Cervical Cancer CarePlan"
Description: "Cervical Cancer CarePlan"
* ^experimental = false
* include codes from system CervicalCancerCarePlanCodeSystem*/

/*CodeSystem: ReasonNotStartedARTCodeSystem
Id: reason-not-started-art-code-system
Title: "Reason Not Started ART"
Description: "A list of codes describing the reason not started ART same day"
* ^url = $REASON_ART_NOT_STARTED
* ^experimental = false
* ^caseSensitive = true
//* #referred-tx-not-initiated "Referred TX not initiated"
//* #declined "Declined"
//* #died "Died"
//* #known-positive-on-art "Known +ve on ART"
//* #on-adherence-preparation "On adherence preparation"
//* #on-oi-management "On OI Management"*/

ValueSet: ReasonNotStartedARTValueSet
Id: reason-not-started-art-value-set
Title: "Reason Not Started ART"
Description: "Reason Not Started ART"
* ^experimental = false
* $LNC#LP73973-7 "Date patient referred for treatment"
* $LNC#LA4645-3 "Patient Died Before Therapy"
* $SCT#105480006 "Procedure declined by patient"
* $LNC#45231-8 "HIV treatment prior to enrollment"
* $LNC#47244-9 "Symptom, diagnosis, or opportunistic infection related to HIV treatment"
* $SCT#410265008 "Medication administration education, guidance, and counseling"
//* include codes from system ReasonNotStartedARTCodeSystem

/*CodeSystem: FinalOutcomeCodeSystem
Id: final-outcome-code-system
Title: "Final Outcome"
Description: "A list of codes describing the final outcome"
* ^url = $FINAL_OUTCOME
* ^experimental = false
* ^caseSensitive = true
//* #started-art "Started ART"
//* #declined "Declined"
//* #died "Died"
//* #confirmed-referral "Confirmed referral"
//* #started-art-in-other-hf "Started ART in other HF"
//* #lost-to-follow-up "Lost to Follow up"
//* #other "Other"*/

ValueSet: FinalOutcomeValueSet
Id: final-outcome-value-set
Title: "Final Outcome"
Description: "Final Outcome"
* ^experimental = false
* $LNC#45237-5 "Date lost to HIV treatment follow-up"
* $LNC#63936-9 "Start date of treatment or therapy"
* $LNC#31211-6 "Date of death"
* $SCT#105480006 "Procedure declined by patient"
* $LNC#39266-2 "Follow-up (referred to) provider /specialist Set CPHS"
* $LNC#45235-9 "Date original clinic HIV treatment start"
//* include codes from system FinalOutcomeCodeSystem

CodeSystem: PrecancerousLesionTreatmentReceivedCodeSystem
Id: precancerous-lesion-treatment-received-code-system
Title: "Precancerous Lesion Treatment Received"
Description: "A list of codes describing the precancerous lesion treatment received"
* ^experimental = false
* ^caseSensitive = true
* #no-treatment "No Treatment"
* #cryotherapy "Cryotherapy"
* #thermo-coagulation "Thermo-Coagulation"
* #leep "LEEP"
* #referred-for-leep "Referred for LEEP"
* #referred-for-suspicious-cancer-evaluation "Referred for Suspicious cancer evaluation"
//* #other "Other"

ValueSet: PrecancerousLesionTreatmentReceivedValueSet
Id: precancerous-lesion-treatment-received-value-set
Title: "Precancerous Lesion Treatment Received ValueSet"
Description: "Precancerous Lesion Treatment Received ValueSet"
* ^experimental = false
* include codes from system PrecancerousLesionTreatmentReceivedCodeSystem

CodeSystem: SuspiciousCancerousTreatmentCodeSystem
Id: suspicious-cancerous-treatment-code-system
Title: "Suspicious Cancerous Treatment"
Description: "A list of codes describing the suspicious Cancerous treatment"
* ^experimental = false
* ^caseSensitive = true
* #treated-at-facility "Treated at the facility"
* #referred-to-another-facility "Referred to another facility"
* #arrival-in-receiving-facility-confirmed "Arrival in receiving facility confirmed"
* #feedback-received-by-referring-hf "Feedback received by referring HF"

ValueSet: SuspiciousCancerousTreatmentValueSet
Id: suspicious-cancerous-treatment-value-set
Title: "Suspicious Cancerous Treatment ValueSet"
Description: "Suspicious Cancerous Treatment ValueSet"
* ^experimental = false
* include codes from system SuspiciousCancerousTreatmentCodeSystem

/*ValueSet: EntryPointValueSet
Id: entry-point-value-set
Title: "Entry Point"
Description: "Entry Point"
* ^experimental = false
* $LNC#LA9328-1 "Internal facility referral or transfer"
* $LNC#LA9331-5 "Other health care facility transfer"*/

/*ValueSet: NutritionalStatusValueSet
Id: nutritional-status-value-set
Title: "Nutritional Status ValueSet"
Description: "Nutritional Status ValueSet"
* ^experimental = false
* $SCT#17621005 "Normal"
* $SCT#238131007 "Overweight"
* $SCT#255604002 "Mild Malnutrition"
* $SCT#6736007 "Moderate Malnutrition"
* $SCT#24484000 "Severe Malnutrition"
* $SCT#414915002 "Obese"
* $SCT#717928006 "MAM"
* $SCT#717927001 "SAM"*/

ValueSet: ARVAdherenceValueSet
Id: arv-adherence-value-set
Title: "ARV Adherence ValueSet"
Description: "ARV Adherence ValueSet"
* ^experimental = false
* $LNC#LA8969-3 "Poor"
* $LNC#LA8968-5 "Fair"
* $LNC#LA8967-7 "Good"
* $LNC#91382-2 "Date medication stopped - Reported"

CodeSystem: CervicalCancerScreeningMethodCodeSystem
Id: cervical-cancer-screening-method-code-system
Title: "Cervical Cancer Screening Method"
Description: "A list of codes describing the Cervical Cancer Screening Method"
* ^experimental = false
* ^caseSensitive = true
* #hpv-dna-test "HPV DNA-test"
* #via-test "VIA test"
* #hpv-via-test "HPV VIA test"

ValueSet: CervicalCancerScreeningMethodValueSet
Id: cervical-cancer-screening-method-value-set
Title: "Cervical Cancer Screening Method ValueSet"
Description: "Cervical Cancer Screening Method."
* ^experimental = false
* include codes from system CervicalCancerScreeningMethodCodeSystem

CodeSystem: CervicalCancerScreeningVIAResultsCodeSystem
Id: via-screening-result-code-system
Title: "Cervical Cancer Screening Results - VIA"
Description: "A list of codes describing the Cervical Cancer Screening Results"
* ^experimental = false
* ^caseSensitive = true
* #via-negative "VIA negative"
* #via-positive-cryo-thermo-coagulation-eligible "VIA positive cryo-thermo coagulation eligible"
* #via-positive-cryo-thermo-coagulation-non-eligible "VIA positive cryo-thermo coagulation non-eligible"
* #cervical-cancer-suspicious "Cervical cancer suspicious"
* #via-screening-result-unknown "Screening result unknown"
/** $SCT#787723002 "Human papillomavirus deoxyribonucleic acid detected"
* $SCT#787724008 "Human papillomavirus deoxyribonucleic acid not detected"
* $SCT#261665006 "Unknown"*/

ValueSet: CervicalCancerScreeningVIAResultsValueSet
Id: via-screening-result-value-set
Title: "Cervical Cancer Screening Results - VIA"
Description: "A list of codes describing the Cervical Cancer Screening Results"
* ^experimental = false
* include codes from system CervicalCancerScreeningVIAResultsCodeSystem

CodeSystem: CervicalCancerScreeningHPVResultsCodeSystem
Id: hpv-screening-result-code-system
Title: "Cervical Cancer Screening Results - HPV"
Description: "A list of codes describing the Cervical Cancer Screening Results"
* ^experimental = false
* ^caseSensitive = true
* #hpv-screening-result-unknown "Screening result unknown"

ValueSet: CervicalCancerScreeningHPVResultsValueSet
Id: hpv-screening-result-value-set
Title: "Cervical Cancer Screening Results - HPV"
Description: "A list of codes describing the Cervical Cancer Screening Results"
* ^experimental = false
* $LNC#LA6576-8 "Positive"
* $LNC#LA6577-6 "Negative"
* include codes from system CervicalCancerScreeningHPVResultsCodeSystem

/*ValueSet: HPVDNATestResultValueSet
Id: hpv-dna-test-result-value-set
Title: "HPV DNA Test Result ValueSet"
Description: "HPV DNA Test Result ValueSet"
* ^experimental = false
* $SCT#720005005
* $SCT#787724008
* $SCT#261665006*/

/*CodeSystem: TreatmentCodeSystem
Id: treatment-code-system
Title: "Treatment"
Description: "A list of codes describing the reason for treatment in the medication statement."
* ^experimental = false
* ^caseSensitive = true
* #arv-treatment "ARV Treatment"
* #tb-treatment "Tuberculosis treatment"
*/

/*ValueSet: ReasonForTreatmentValueSet
Id: reason-for-treatment-value-set
Title: "Reason For Treatment"
Description: "A list of codes describing the reason for treatment in the medication statement."
* ^experimental = false
//* $LNC#45260-7 "HIV ART medication"
//* $LNC#LA6762-4 "Currently on TB treatment"
* $LNC#47244-9 "Symptom, diagnosis, or opportunistic infection related to HIV treatment"
* $SCT#699618001 "Administration of prophylactic antituberculosis agent"
//* include codes from system TBTreatmentPhasesCodeSystem*/

/*CodeSystem: TBTreatmentPhasesCodeSystem
Id: tb-treatment-phases-code-system
Title: "TB Treatment Phases"
Description: "A list of codes describing the phases of TB treatment."
* ^experimental = false
* ^caseSensitive = true
//* #inh "INH"
* #continuous "Continuous"
* #alternate "Alternate"*/

/*ValueSet: TBTreatmentPhasesValueSet
Id: tb-treatment-phases-value-set
Title: "TB Treatment Phases"
Description: "A list of codes describing the phases of TB treatment."
* ^experimental = false
* include codes from system TBTreatmentPhasesCodeSystem*/

/*CodeSystem: EnhancedAdherenceCounsellingCodeSystem
Id: eac-code-system
Title: "Enhanced Adherence Counselling"
Description: "A list of codes describing the Enhanced Adherence Counselling"
* ^experimental = false
* ^caseSensitive = true
* #eac "Enhanced Adherence Counselling"

ValueSet: EnhancedAdherenceCounsellingValueSet
Id: eac-value-set
Title: "Enhanced Adherence Counselling"
Description: "Enhanced Adherence Counselling"
* ^experimental = false
* include codes from system eac-code-system*/

/*CodeSystem: CCScreeningCounseledCodeSystem
Id: cc-screening-counseled-code-system
Title: "CC Screening Counseled"
Description: "A list of codes describing the CC Screening Counseled"
* ^experimental = false
* ^caseSensitive = true
* #cc-screening-counseled "CC Screening Counseled"*/

/*ValueSet: CCScreeningCounseledValueSet
Id: cc-screening-counseled-value-set
Title: "CC Screening Counseled"
Description: "CC Screening Counseled"
* ^experimental = false
* include codes from system CCScreeningCounseledCodeSystem*/

/*CodeSystem: CCScreeningCodeSystem
Id: cc-screening-code-system
Title: "CC Screening"
Description: "A list of codes describing the CC Screening"
* ^experimental = false
* ^caseSensitive = true
* #yes "Accepted cervical cancer screening"
* #no "Didnt accept cervical cancer screening"
* #unknown "unknown"*/

/*ValueSet: CCScreeningValueSet
Id: cc-screening-value-set
Title: "CC Screening"
Description: "CC Screening"
* ^experimental = false
* include codes from system CCScreeningCodeSystem*/

CodeSystem: EncounterVisitTypeCodeSystem
Id: encounter-visit-type-code-system
Title: "Nature of Encounter"
Description: "A list of codes describing the nature of the patient visit to the health facility"
* ^experimental = false
* ^caseSensitive = true
* #unscheduled "Unscheduled"
* #scheduled "Scheduled"

ValueSet: EncounterVisitTypeValueSet
Id: encounter-visit-type-value-set
Title: "Nature of Encounter"
Description: "A list of codes describing the nature of the patient visit to the health facility"
* ^experimental = false
* include codes from system EncounterVisitTypeCodeSystem

ValueSet: OpportunisticInfectionsTreatmentValueSet
Id: opportunistic-infections-related-to-hiv-value-set
Title: "Opportunistic Infection Medication Codes"
Description: "A list of codes describing the medication for opportunistic infections related to the patient."
* ^experimental = false
* $LNC#18998-5 "Trimethoprim+Sulfamethoxazole [Susceptibility]"
* $LNC#18924-1 "Fluconazole [Susceptibility]"

/*ValueSet: TBTreatmentValueSet
Id: tb-treatment-value-set
Title: "Tuberculosis Medication Codes"
Description: "A list of codes describing Tuberculosis medication."
* ^experimental = false
* $LNC#18934-0 "Isoniazid [Susceptibility]"
* $LNC#20461-0 "Pyrazinamide [Susceptibility] by Method for Slow-growing mycobacteria"
* $LNC#25194-2 "Ethambutol 5 ug/mL [Susceptibility] by Method for Slow-growing mycobacteria"
* $LNC#18974-6 "rifAMPin [Susceptibility]"
* $LNC#100053-8 "Fluoroquinolone [Susceptibility]"
* $LNC#18860-7 "Amikacin [Susceptibility]"
* $LNC#94274-8 "Bedaquiline [Susceptibility]"
* $LNC#18872-2 "Capreomycin [Susceptibility]"
* $LNC#31039-1 "Moxifloxacin [Susceptibility]"
* $LNC#18982-9 "Streptomycin [Susceptibility]"
* $LNC#100059-5 "Rifapentine [Susceptibility]"
* include codes from system AlternateTPTProphylaxisTypeCodeSystem*/

ValueSet: TBScreeningTypeValueSet
Id: tb-screening-type-value-set
Title: "TB Screening Type Codes"
Description: "A list of codes describing the Type of TB Screening."
* ^experimental = false
//* $LNC#39263-9 "Tuberculin screen test status CPHS"
* $LNC#71773-6 "Mycobacterium tuberculosis stimulated gamma interferon [Interpretation] in Blood Qualitative"

ValueSet: TBScreeningResultValueSet
Id: tb-screening-result-value-set
Title: "TB Screening Result Codes"
Description: "A list of codes describing the result of the TB Screening."
* ^experimental = false
* $LNC#LA6576-8 "Positive"
* $LNC#LA6577-6 "Negative"

ValueSet: TBScreeningSpecimenTypeValueSet
Id: tb-screening-specimen-type-value-set
Title: "TB Screening Specimen Type Codes"
Description: "A list of codes describing the specimen types that can be taken during TB Screening for the laboratory examination."
* ^experimental = false
* $SPECIMEN_TYPE#PLAS "Plasma"
* $SPECIMEN_TYPE#SER "Serum"
* $SPECIMEN_TYPE#BLD "Whole blood"
* $SPECIMEN_TYPE#SKN "Skin"

CodeSystem: TBScreeningDiagnosticTestTypeCodeSystem
Id: tb-screening-diagnostic-test-type-code-system
Title: "TB Screening Diagnostic Test Type Codes"
Description: "A list of codes describing the types of diagnostic tests that can be peformed on the specimen taken during TB screening."
* ^experimental = false
* ^caseSensitive = true
* #Smear-microscopy-only "Smear microscopy only"
* #Gene-xpert-MTB/RIF-assay-with-other-testing "Gene-Xpert(MTB/RIF assay) with other testing"
* #Gene-xpert-MTB/RIF-assay-without-other-testing "Gene-Xpert(MTB/RIF assay) without other testing"
* #Additional-tests-other-than-Gene-Xpert "Additional tests other than Gene-Xpert"

ValueSet: TBScreeningDiagnosticTestTypeValueSet
Id: tb-screening-diagnostic-test-type-value-set
Title: "TB Screening Diagnostic Test Type Codes"
Description: "A list of codes describing the types of diagnostic tests that can be peformed on the specimen taken during TB screening."
* ^experimental = false
* include codes from system TBScreeningDiagnosticTestTypeCodeSystem

CodeSystem: TBTreatmentStatusCodeSystem
Id: tb-treatment-status-code-system
Title: "TB Treatment Status Codes"
Description: "A list of codes describing the status of TB treatment."
* ^experimental = false
* ^caseSensitive = true
* #TBRx1 "TBRx1"
* #TBRx2 "TBRx2"
* #TBRx3 "TBRx3"
* #TBRx4 "TBRx4"
* #TBRx5 "TBRx5"
* #TBRx6 "TBRx6"
* #TBRx7 "TBRx7"
* #TBRx8 "TBRx8"
* #TBRx-completed "TBRx completed"
* #TBRx-discontinued "TBRx discontinued"

ValueSet: TBTreatmentStatusValueSet
Id: tb-treatment-status-value-set
Title: "TB Treatment Status Codes"
Description: "A list of codes describing the status of TB treatment."
* ^experimental = false
* include codes from system TBTreatmentStatusCodeSystem

ValueSet: TBDiagnosticTestResultValueSet
Id: tb-diagnostic-test-result-value-set
Title: "TB Diagnostic Test Result Codes"
Description: "A list of codes describing a TB diagnostic test result."
* ^experimental = false
* $LNC#LA6577-6 "Negative"
* $LNC#LA6576-8 "Positive"
* $LNC#LA11884-6 "Indeterminate"

ValueSet: ActiveTBDiagnosisValueSet
Id: active-tb-diagnosis-value-set
Title: "Active TB Diagnosis Codes"
Description: "A list of codes describing whether the patient is infected with active TB."
* ^experimental = false
* $SCT#427099000 "Active tuberculosis"
* $SCT#11999007 "Inactive tuberculosis"

/*ValueSet: TBTreatmentOutcomeValueSet
Id: tb-treatment-outcome-value-set
Title: "TB Treatment Outcome Codes"
Description: "A list of codes describing whether the patient has completed TB/TPT treatment."
* ^experimental = false
* $SCT#255594003 "Complete"
* $SCT#410545000 "Stopped before completion"*/

CodeSystem: TPTEligibilityStatusCodeSystem
Id: tpt-eligibility-status-code-system
Title: "Eligility Status for TPT Codes"
Description: "Observation codes used for indicating whether the patient is eligible for TPT."
* ^experimental = false
* ^caseSensitive = true
* #Eligible-For-TPT "Is Eligible for TPT"
* #TPT-Reason-Not-Eligible "Reason Not Eligible for TPT"

ValueSet: TPTReasonNotEligibileValueSet
Id: tpt-reason-not-eligibile-value-set
Title: "Reason Not Eligible for TPT Codes"
Description: "A list of codes used for indicating the reason why the patient is not eligible for TPT."
* ^experimental = false
* $SCT#182834008 "Drug course completed"
* $SCT#473151000 "History of tuberculosis drug therapy"
* $SCT#373147003 "Administration of medication not done due to contraindication"

CodeSystem: TPTProphylaxisTypeCodeSystem
Id: tpt-prophylaxis-type-code-system
Title: "TPT Prophylaxis Type Codes"
Description: "A list of codes describing the TPT prophylaxis type."
* ^experimental = false
* ^caseSensitive = true
* #Continuous "Continuous"
* #Alternate "Alternate"

ValueSet: TPTProphylaxisTypeValueSet
Id: tpt-prophylaxis-type-value-set
Title: "TPT Prophylaxis Type Codes"
Description: "A list of codes describing the TPT prophylaxis type."
* ^experimental = false
* $LNC#18934-0 "Isoniazid [Susceptibility]"
* include codes from system TPTProphylaxisTypeCodeSystem

ValueSet: TreatmentOutcomeValueSet
Id: treatment-outcome-value-set
Title: "Treatment Outcome Codes"
Description: "A list of codes indicating the status of the treatment."
* ^experimental = false
* $SCT#182992009 "Treatment completed"
* $SCT#182840001 "Drug treatment stopped - medical advice"

ValueSet: MonthOrdinalsValueSet
Id: month-ordinals-value-set
Title: "Month Ordinal Codes"
Description: "A list of codes indicating the month ordinals."
* ^experimental = false
* $SCT#255216001 "First"
* $SCT#81170007 "Second"
* $SCT#70905002 "Third"
* $SCT#29970001 "Fourth"
* $SCT#32088001 "Fifth"
* $SCT#53046009 "Sixth"

ValueSet: AlternateTPTProphylaxisTypeValueSet
Id: tpt-alternate-prophylaxis-type-value-set
Title: "Alternate TPT Prophylaxis Type Codes"
Description: "A list of codes describing the alternate TPT prophylaxis types to INH."
* ^experimental = false
* $SCT#346670008 "Product containing isoniazid and rifampicin"
* $SCT#410831004 "Product containing rifapentine"

/*ValueSet: TPT3HRFollowUpValueSet
Id: tpt-3hr-follow-up-value-set
Title: "TPT 3HR Follow-Up Codes"
Description: "A list of 3HR codes indicating the alternate TPT follow-up status."
* ^experimental = false
* include codes from system TPT3HRFollowUpCodeSystem*/

CodeSystem: TPTAlternateFollowUpCodeSystem
Id: tpt-alternate-follow-up-code-system
Title: "TPT Alternate Follow-Up Codes"
Description: "A code indicating that the follow-up is for an alternate TPT prophylaxis."
* ^experimental = false
* ^caseSensitive = true
* #TPT-Alternate-Follow-Up "TPT Alternate Follow Up"

CodeSystem: ARTEligibilityStatusCodeSystem
Id: art-eligibility-status-code-system
Title: "Eligility Status for ART Codes"
Description: "Observation codes used for indicating patient eligibility for ART."
* ^experimental = false
* ^caseSensitive = true
* #Not-Eligible "Not Eligible"
//* #Eligible "Eligible"
//* #Eligible-and-Ready "Eligible and Ready"

ValueSet: ARTEligibilityStatusValueSet
Id: art-eligibility-status-value-set
Title: "ART Eligibility Status"
Description: "ART Eligibility Status"
* ^experimental = false
* include codes from system ARTEligibilityStatusCodeSystem
* $LNC#47240-7 "Date determined medically eligible to start HIV treatment"
* $LNC#47241-5 "Date determined medically eligible and ready to start HIV treatment"

CodeSystem: ReasonForARTEligibilityCodeSystem
Id: reason-for-art-eligibility-code-system
Title: "Reasons For ART Eligibility"
Description: "Reasons For ART Eligibility"
* ^experimental = false
* ^caseSensitive = true
* #Test-and-Treat "Test and treat"
* #Clinical-Staging "Clinical Staging"
* #Transfer-in "Transfer in"
//* #Other "Other"

ValueSet: ReasonForARTEligibilityValueSet
Id: reason-for-art-eligibility-value-set
Title: "Reasons For ART Eligibility"
Description: "Reasons For ART Eligibility"
* ^experimental = false
* include codes from system ReasonForARTEligibilityCodeSystem

ValueSet: HIVTestResultsValueSet
Id: hiv-test-results-value-set
Title: "HIV Test Results"
Description: "HIV Test Results"
* ^experimental = false
* $LNC#LA24959-1 "HIV Negative"
* $LNC#LA24955-9 "HIV-1 Positive"

ValueSet: ConfirmedHIVPositiveValueSet
Id: confrirmed-hiv-positive-value-set
Title: "HIV Test Types"
Description: "HIV Test Types"
* ^experimental = false
* $LNC#9836-8 "HIV proviral DNA [Presence] in Blood by Probe with amplification"
* $LNC#89365-1 "HIV 1 and 2 Ab panel - Serum, Plasma or Blood by Rapid immunoassay"

/*ValueSet: PregnancyStatusValueSet
Id: pregnancy-status
Title: "Pregnancy Status"
Description: "Pregnancy Status Codes"
* ^experimental = false
* $LNC#LA15173-0 "Pregnant"
* $LNC#LA26683-5 "Not pregnant"

ValueSet: PregnancyFuturePlansValueSet
Id: pregnancy-future-plans
Title: "Pregnancy Future Plans"
Description: "Pregnancy Future Plans Codes"
* ^experimental = false
* $LNC#LA26438-4 "Yes, I want to become pregnant"
* $LNC#LA26440-0 "No, I don't want to become pregnant"

ValueSet: BreastfeedingStatusValueSet
Id: breastfeeding-status
Title: "Breastfeeding Status"
Description: "Breastfeeding Status Codes"
* ^experimental = false
* $LNC#LA29252-6 "Currently breastfeeding"
* $LNC#LA29253-4 "Not currently breastfeeding"*/

CodeSystem: YesNoCodeSystem
Id: yes-no-code-system
Title: "Yes/No Codes"
Description: "Yes/No Codes Represented as Boolean."
* ^experimental = false
* ^caseSensitive = true
* #true "Yes"
* #false "No"

ValueSet: YesNoValueSet
Id: yes-no-value-set
Title: "Yes/No Codes"
Description: "Yes/No Codes Represented as Boolean."
* ^experimental = false
* include codes from system YesNoCodeSystem

ValueSet: NutritionalStatusValueSet
Id: nutritional-status-value-set
Title: "Nutritional Status"
Description: "Nutritional Status"
* ^experimental = false
* $LNC#LA33703-2 "Mildly malnourished"
* $LNC#LA33704-0 "Moderately malnourished"
* $LNC#LA33705-7 "Severely malnourished"
* $SCT#17621005 "Normal"
* $SCT#238131007 "Overweight"
* $SCT#414915002 "Obese"
* $SCT#717928006 "MAM"
* $SCT#717927001 "SAM"

CodeSystem: NutritionalScreeningResultCodeSystem
Id: nutritional-screening-result-code-system
Title: "Nutritional Screening Result Codes"
Description: "Codes used for representing the patient's nutritional screening result."
* ^experimental = false
* ^caseSensitive = true
* #Normal "Normal"
* #Undernourished "Undernourished"
* #Over-weight "Over weight"

ValueSet: NutritionalScreeningResultValueSet
Id: nutritional-screening-result-value-set
Title: "Nutritional Screening Result"
Description: "Nutritional Screening Result"
* ^experimental = false
* include codes from system NutritionalScreeningResultCodeSystem

CodeSystem: NutritionalSupplimentsProvidedCodeSystem
Id: nutritional-suppliments-provided-code-system
Title: "Nutritional Suppliments Provided Codes"
Description: "Code used for representing the patient's nutritional suppliments provided."
* ^experimental = false
* ^caseSensitive = true
* #RUTF "Ready-to-Use Therapeutic Food"
* #RUSF "Ready-to-Use Supplementary Food"
//* #Other "Other"

ValueSet: NutritionalSupplimentsProvidedValueSet
Id: nutritional-suppliments-provided-value-set
Title: "Nutritional Suppliments Provided"
Description: "Nutritional Suppliments Provided"
* ^experimental = false
* include codes from system NutritionalSupplimentsProvidedCodeSystem

ValueSet: FamilyPlanningMethodValueSet
Id: family-planning-method-value-set
Title: "Family Planning Method"
Description: "Family Planning Method"
* ^experimental = false
* $LNC#LA14543-5 "Condoms"
* $LNC#LA27907-7 "Injectables"
* $LNC#LA27908-5 "Combined oral contraceptive pills"
* $LNC#LA27913-5 "Diaphragm or cervical cap"
* $LNC#LA14534-4 "Vasectomy"
* $LNC#LA27901-0 "Implantable rod"
* $LNC#LA14550-0 "Abstinence"
* $LNC#LA6527-1 "Intrauterine device"

/*CodeSystem: ReferredPMTCTCodeSystem
Id: referred-pmtct-code-system
Title: "Referred PMTCT Codes"
Description: "Code used for representing the patient's referral to PMTCT."
* ^experimental = false
* ^caseSensitive = true
* #Referred-PMTCT "Referred to PMTCT"*/

/*ValueSet: ReferredPMTCTValueSet
Id: referred-pmtct-value-set
Title: "Referred PMTCT"
Description: "Referred PMTCT"
* ^experimental = false
* include codes from system ReferredPMTCTCodeSystem*/

ValueSet: EdemaValueSet
Id: edema-presence-value-set
Title: "Edema Codes"
Description: "Observation codes used for indicating the prescence of Edema."
* ^experimental = false
* $LNC#72071-4 "Edema present"
* $SCT#161980004 "No edema present"

CodeSystem: ChildrenDevelopmentalMilestoneCodeSystem
Id: children-developmental-milestone-code-system
Title: "Children Developmental Milestone Codes"
Description: "Code used for representing the child's developmental milestone."
* ^experimental = false
* ^caseSensitive = true
* #Appropriate "Appropriate"
* #Regular "Regular"

ValueSet: ChildrenDevelopmentalMilestoneValueSet
Id: children-developmental-milestone-value-set
Title: "Children Developmental Milestone"
Description: "Children Developmental Milestone"
* ^experimental = false
* $LNC#LA22265-5 "Pediatric: Developmental delay"
* include codes from system ChildrenDevelopmentalMilestoneCodeSystem

ValueSet: PatientFunctionalStatusValueSet
Id: patient-functional-status-value-set
Title: "Patient Functional Status"
Description: "Patient Functional Status"
* ^experimental = false
* $SCT#716000009 "Able to perform paid work"
//* $SCT#282144007 "Able to walk"
//* $SCT#160685001 "Bed-ridden"
//* $LNC#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"
* $LNC#LA21285-4 "Ambulant"
* $LNC#LA4270-0 "Bedridden"

CodeSystem: WHOStageCodeSystem
Id: who-stage-code-system
Title: "WHO Stage Codes"
Description: "Code used for representing the patient's WHO stage."
* ^experimental = false
* ^caseSensitive = true
* #Stage-One "Stage One"
* #Stage-Two "Stage Two"
* #Stage-Three "Stage Three"
* #Stage-Four "Stage Four"
* #T1 "T1"
* #T2 "T2"
* #T3 "T3"
* #T4 "T4"

ValueSet: WHOStageValueSet
Id: who-stage-value-set
Title: "WHO Stage"
Description: "WHO Stage"
* ^experimental = false
* include codes from system WHOStageCodeSystem

CodeSystem: DSDAssessmentCodeSystem
Id: dsd-assessment-code-system
Title: "Differentiated Service Delivery"
Description: "Code used for indicating a DSD assessment."
* ^experimental = false
* ^caseSensitive = true
* #DSD-Assessment "DSD Assessment"

/*ValueSet: DSDAssessmentValueSet
Id: dsd-assessment-value-set
Title: "Differentiated Service Delivery Assessment"
Description: "Differentiated Service Delivery Assessment"
* ^experimental = false
* include codes from system DSDAssessmentCodeSystem*/

/*CodeSystem: DSDAssessmentStatusCodeSystem
Id: dsd-assessment-status-code-system
Title: "Differentiated Service Delivery - Assessment Status"
Description: "Code used for indicating the status of the DSD assessment."
* ^experimental = false
* ^caseSensitive = true
* #Stable "Stable"
* #Unstable "Unstable"*/

ValueSet: DSDAssessmentStatusValueSet
Id: dsd-assessment-status-value-set
Title: "Differentiated Service Delivery - Assessment Status"
Description: "Code used for indicating the status of the DSD assessment."
* ^experimental = false
* $LNC#LA14122-8 "Stable"
* $LNC#LA14123-6 "Unstable"
//* include codes from system DSDAssessmentStatusCodeSystem

/*CodeSystem: CategoryCodeSystem
Id: category-code-system
Title: "Category Codes"
Description: "Codes used for representing the patient's category."
* ^experimental = false
* ^caseSensitive = true
* #Category "Category"

ValueSet: CategoryValueSet
Id: category-value-set
Title: "Category"
Description: "Category"
* ^experimental = false
* include codes from system CategoryCodeSystem*/

CodeSystem: DSDCategoryCodeSystem
Id: dsd-category-code-system
Title: "Differentiated Service Delivery - Category"
Description: "Code used for indicating the category for the DSD assessment."
* ^experimental = false
* ^caseSensitive = true
* #ASM-6MMD "Appointment Spacing Model (ASM)/6MMD"
* #3MMD "3MMD"
* #FTAR "FTAR(Fast Track ART Refill)"
* #HEP-CAG "HEP-CAG(Health Extension Professional Led Community"
* #PCAD "PCAD (Community Based Group model led by Peer)"
* #AHD "AHD (Advanced HIV Disease Model)"
* #DSD-for-Adolescent "DSD for Adolescent"
* #DSD-for-MCH "DSD for MCH"
* #KP-DSD "KP_DSD"

ValueSet: DSDCategoryValueSet
Id: dsd-category-value-set
Title: "Differentiated Service Delivery - Category"
Description: "Code used for indicating the category for the DSD assessment."
* ^experimental = false
* include codes from system DSDCategoryCodeSystem

/*CodeSystem: DSDCategoryChangeCodeSystem
Id: dsd-category-change-code-system
Title: "DSD Category Change Codes"
Description: "Codes used for representing the patient's category change."
* ^experimental = false
* ^caseSensitive = true
* #Category-change "Category change"

ValueSet: DSDCategoryChangeValueSet
Id: dsd-category-change-value-set
Title: "DSD Category Change"
Description: "DSD Category Change"
* ^experimental = false
* include codes from system DSDCategoryChangeCodeSystem*/

CodeSystem: DSDReasonForCategoryChangeCodeSystem
Id: dsd-reason-for-category-change-code-system
Title: "Differentiated Service Delivery - Reason For Category Change"
Description: "Code used for indicating the reason for the category change for the DSD assessment."
* ^experimental = false
* ^caseSensitive = true
* #Returned "Returned to Conventional Care"
* #Moved "Moved to Other DSD Model"

ValueSet: DSDReasonForCategoryChangeValueSet
Id: dsd-reason-for-category-change-value-set
Title: "Differentiated Service Delivery - Reason For Category Change"
Description: "Code used for indicating the reason for the category change for the DSD assessment."
* ^experimental = false
* $LNC#77978-5 "Patient died from illness of interest"
* $LNC#45237-5 "Date lost to HIV treatment follow-up"
* $LNC#45256-5 "HIV treatment clinic transferred to"
* $LNC#LA29947-1 "Carrier status unknown"
* include codes from system DSDReasonForCategoryChangeCodeSystem

ValueSet: EncounterLocationValueSet
Id: encounter-location-value-set
Title: "Encounter Locations"
Description: "Code used for representing the location where the patient is receiving health services."
* ^experimental = false
* $LNC#LA6511-5 "Inpatient"
* $LNC#LA10053-9 "Outpatient Services"
* $LNC#LA6508-1 "STI Outpatient"
* $LNC#LA6509-9 "TB Outpatient"
* $LNC#LA7171-7 "Dermatology"
* $LNC#LA7197-2 "Pediatrics"
* $LNC#LP172899-9 "Nutrition and dietetics"
* $LNC#LA6515-6 "Self-referred (via VCT)"
* $LNC#LA6516-4 "CBO referred (referred from a community-based organization via VCT)"
* $LNC#LP96947-4 "Antenatal testing and surveillance"
* $LNC#LA20786-2 "Labor and delivery"
* $SCT#133906008 "Postpartum care"
* $LNC#LA6505-7 "PMTCT"
* $SCT#309944008 "Obstetrics department"
* $SCT#309945009 "Pediatric department"
* $SCT#309912009 "Medical department"
* $LNC#LA31960-0 "Health center - STD/HIV clinic"

ValueSet: ServiceProviderTypeValueSet
Id: service-provider-value-set
Title: "Service Providers"
Description: "Code used for representing the classification of organizations providing health services."
* ^experimental = false
* $SCT#276052003 "Public facilities"
* $SCT#394794000 "Health clinic managed by voluntary or private agents"
* $SCT#185483006 "Outreach clinic"
* $SCT#310391008 "Community clinic"
* $SCT#257622000 "Healthcare facility"
* $SCT#1991000124105 "Referred by self"

CodeSystem: EncounterTypeForEntryFromOutsideFacilityCodeSystem
Id: encounter-type-for-entry-from-outside-facility-code-system
Title: "Encounter Type Code For Entry From Outside Facility"
Description: "Code used for indicating that an encounter was captured to represent an entry point from outside the facility."
* ^experimental = false
* ^caseSensitive = true
* #ReferToCurrentFacilityEncounter "Refer To Current Facility Encounter"

ValueSet: PlanForNextStepValueSet
Id: plan-for-next-step-value-set
Title: "ART Not Started - Plan For Next Step"
Description: "Codes used for representing the plan for next steps when a patient didn't start ART the same day."
* ^experimental = false
* $LNC#53576-5 "Personal health monitoring report Document"
* $SCT#710838003 "Assessment of barriers to adherence"
* $SCT#373788008 "Treatment delay - clinical reason"

/*ValueSet: ReasonForARVPrescriptionValueSet
Id: arv-prescription-reason-value-set
Title: "Reason For ARV Prescription"
Description: "Reason For ARV Prescription"
* ^experimental = false
* $SCT#129019007 "Taking medication"
* $LNC#63936-9 "Start date of treatment or therapy"
* $SCT#182838006 "Change of medication"*/

CodeSystem: TargetPopulationCategoryCodeSystem
Id: target-population-category-code-system
Title: "Target Population Category Codes"
Description: "Codes used for representing the patient's target population category"
* ^experimental = false
* ^caseSensitive = true
* #General-Population "General Population"
* #Prisoner "Prisoner"
* #Children-Of-PLHIV "Children of PLHIV"
* #Partners-Of-PLHIV "Partners of PLHIV"
* #Discordant-Couples "Discordant Couples"
* #Other-MARPS "Other MARPS"

ValueSet: TargetPopulationCategoryValueSet
Id: target-population-category-value-set
Title: "Target Population Category"
Description: "Codes used for representing the patient's target population category"
* ^experimental = false
* $SCT#76102007 "Male homosexual"
* $SCT#159799000 "Female prostitute"
* $SCT#407375002 "Surgically transgendered transsexual"
* $SCT#373927007 "Orphan"
* $SCT#106540006 "Laborer"
* $SCT#87447002 "Truck and van driver (long-distance transport)"
* $SCT#446654005 "Refugee"
* $SCT#226034001 "Injecting drug user"
* include codes from system TargetPopulationCategoryCodeSystem

ValueSet: PatientEducationLevelValueSet
Id: patient-education-level-value-set
Title: "Patient Education Level"
Description: "Codes used for indicating the patient's highest qualification."
* ^experimental = false
* $LNC#LA35-1 "No schooling"
* $LNC#LA32466-7 "Primary school education"
* $LNC#LA32467-5 "High school education"
* $LNC#LA15568-1 "Graduated from a college or university"
* $LNC#LA39-3 "Technical or trade school"

/*CodeSystem: OccupationCodeSystem
Id: occupation-code-system
Title: "Occupation Codes"
Description: "Codes used for representing the patient's occupation"
* ^experimental = false
* ^caseSensitive = true
* #N/A "N/A"
* #Accountants "Accountants"
* #Accounting-and-bookkeeping-clerks "Accounting and bookkeeping clerks"
* #Accounting-associate-professionals "Accounting associate professionals"
* #Actors "Actors"
* #Administration-professionals "Administration professionals"
* #Administrative-and-commercial-managers "Administrative and commercial managers"
* #Administrative-and-executive-secretaries "Administrative and executive secretaries"
* #Administrative-and-specialised-secretaries "Administrative and specialised secretaries"
* #Advertising-and-marketing-professionals "Advertising and marketing professionals"
* #Advertising-and-public-relations-managers "Advertising and public relations managers"
* #Aged-care-services-managers "Aged care services managers"
* #Agricultural-and-forestry-production-managers "Agricultural and forestry production managers"
* #Agricultural-and-industrial-machinery-mechanics-and-repairers "Agricultural and industrial machinery mechanics and repairers"
* #Agricultural-technicians "Agricultural technicians"
* #Agricultural-forestry-and-fishery-labourers "Agricultural, forestry and fishery labourers"
* #Air-conditioning-and-refrigeration-mechanics "Air conditioning and refrigeration mechanics"
* #Air-traffic-controllers "Air traffic controllers"
* #Air-traffic-safety-electronics-technicians "Air traffic safety electronics technicians"
* #Aircraft-engine-mechanics-and-repairers "Aircraft engine mechanics and repairers"
* #Aircraft-pilots-and-related-associate-professionals "Aircraft pilots and related associate professionals"
* #Ambulance-workers "Ambulance workers"
* #Animal-producers "Animal producers"
* #Animal-producers-not-elsewhere-classified "Animal producers not elsewhere classified"
* #Announcers-on-radio-television-and-other-media "Announcers on radio, television and other media"
* #Apiarists-and-sericulturists "Apiarists and sericulturists"
* #Applications-programmers "Applications programmers"
* #Aquaculture-and-fisheries-production-managers "Aquaculture and fisheries production managers"
* #Aquaculture-workers "Aquaculture workers"
* #Architects-planners-surveyors-and-designers "Architects, planners, surveyors and designers"
* #Archivists-and-curators "Archivists and curators"
* #ARMED-FORCES "ARMED FORCES"
* #Armed-forces-occupations "Armed forces occupations"
* #Armed-forces-occupations-other-ranks "Armed forces occupations, other ranks"
* #Artistic-cultural-and-culinary-associate-professionals "Artistic, cultural and culinary associate professionals"
* #Assemblers "Assemblers"
* #Assemblers-not-elsewhere-classified "Assemblers not elsewhere classified"
* #Astrologers-fortune-tellers-and-related-workers "Astrologers, fortune-tellers and related workers"
* #Athletes-and-sports-players "Athletes and sports players"
* #Audiologists-and-speech-therapists "Audiologists and speech therapists"
* #Authors-and-related-writers "Authors and related writers"
* #Authors-journalists-and-linguists "Authors, journalists and linguists"
* #Bakers-pastry-cooks-and-confectionery-makers "Bakers, pastry-cooks and confectionery makers"
* #Bank-tellers-and-related-clerks "Bank tellers and related clerks"
* #Bartenders "Bartenders"
* #Beauticians-and-related-workers "Beauticians and related workers"
* #Bicycle-and-related-repairers "Bicycle and related repairers"
* #Biologists-botanists-zoologists-and-related-professionals "Biologists, botanists, zoologists and related professionals"
* #Blacksmiths-hammersmiths-and-forging-press-workers "Blacksmiths, hammersmiths and forging press workers"
* #Blacksmiths-toolmakers-and-related-trades-workers "Blacksmiths, toolmakers and related trades workers"
* #Bleaching-dyeing-and-fabric-cleaning-machine-operators "Bleaching, dyeing and fabric cleaning machine operators"
* #Bookmakers-croupiers-and-related-gaming-workers "Bookmakers, croupiers and related gaming workers"
* #Bricklayers-and-related-workers "Bricklayers and related workers"
* #Broadcasting-and-audio-visual-technicians "Broadcasting and audio-visual technicians"
* #Building-and-housekeeping-supervisors "Building and housekeeping supervisors"
* #Building-and-related-electricians "Building and related electricians"
* #Building-and-related-trades-workers-excluding-electricians "Building and related trades workers, excluding electricians"
* #Building-architects "Building architects"
* #Building-caretakers "Building caretakers"
* #Building-construction-labourers "Building construction labourers"
* #Building-finishers-and-related-trades-workers "Building finishers and related trades workers"
* #Building-frame-and-related-trades-workers "Building frame and related trades workers"
* #Building-frame-and-related-trades-workers-not-elsewhere-classified "Building frame and related trades workers not elsewhere classified"
* #Building-structure-cleaners "Building structure cleaners"
* #Bus-and-tram-drivers "Bus and tram drivers"
* #Business-and-administration-associate-professionals "Business and administration associate professionals"
* #Business-and-administration-professionals "Business and administration professionals"
* #Business-services-agents "Business services agents"
* #Business-services-agents-not-elsewhere-classified "Business services agents not elsewhere classified"
* #Business-services-and-administration-managers "Business services and administration managers"
* #Business-services-and-administration-managers-not-elsewhere-classified "Business services and administration managers not elsewhere classified"
* #BUSINESSMAN/WOMAN "BUSINESSMAN/WOMAN"
* #Butchers-fishmongers-and-related-food-preparers "Butchers, fishmongers and related food preparers"
* #Buyers "Buyers"
* #Cabinet-makers-and-related-workers "Cabinet-makers and related workers"
* #Car-taxi-and-van-drivers "Car, taxi and van drivers"
* #Car-van-and-motorcycle-drivers "Car, van and motorcycle drivers"
* #Carpenters-and-joiners "Carpenters and joiners"
* #Cartographers-and-surveyors "Cartographers and surveyors"
* #Cashiers-and-ticket-clerks "Cashiers and ticket clerks"
* #Cement-stone-and-other-mineral-products-machine-operators "Cement, stone and other mineral products machine operators"
* #Chefs "Chefs"
* #Chemical-and-photographic-products-plant-and-machine-operators "Chemical and photographic products plant and machine operators"
* #Chemical-and-physical-science-technicians "Chemical and physical science technicians"
* #Chemical-engineering-technicians "Chemical engineering technicians"
* #Chemical-engineers "Chemical engineers"
* #Chemical-processing-plant-controllers "Chemical processing plant controllers"
* #Chemical-products-plant-and-machine-operators "Chemical products plant and machine operators"
* #Chemists "Chemists"
* #Chief-executives-senior-officials-and-legislators "Chief executives, senior officials and legislators"
* #Child-care-services-managers "Child care services managers"
* #Child-care-workers "Child care workers"
* #Child-care-workers-and-teachers'-aides "Child care workers and teachers' aides"
* #Civil-engineering-labourers "Civil engineering labourers"
* #Civil-engineering-technicians "Civil engineering technicians"
* #Civil-engineers "Civil engineers"
* #CIVIL-SERVANT "CIVIL SERVANT"
* #Cleaners-and-helpers "Cleaners and helpers"
* #Cleaners-and-helpers-in-offices-hotels-and-other-establishments "Cleaners and helpers in offices, hotels and other establishments"
* #Cleaning-and-housekeeping-supervisors-in-offices-hotels-and-other-establishments "Cleaning and housekeeping supervisors in offices, hotels and other establishments"
* #Clearing-and-forwarding-agents "Clearing and forwarding agents"
* #Clerical-support-workers "Clerical support workers"
* #Clerical-support-workers-not-elsewhere-classified "Clerical support workers not elsewhere classified"
* #Client-information-workers "Client information workers"
* #Client-information-workers-not-elsewhere-classified "Client information workers not elsewhere classified"
* #Coding-proof-reading-and-related-clerks "Coding, proof-reading and related clerks"
* #Commercial-sales-representatives "Commercial sales representatives"
* #Commissioned-armed-forces-officers "Commissioned armed forces officers"
* #Community-health-workers "Community health workers"
* #Companions-and-valets "Companions and valets"
* #Computer-network-and-systems-technicians "Computer network and systems technicians"
* #Computer-network-professionals "Computer network professionals"
* #Concrete-placers-concrete-finishers-and-related-workers "Concrete placers, concrete finishers and related workers"
* #Conference-and-event-planners "Conference and event planners"
* #Construction-managers "Construction managers"
* #Construction-supervisors "Construction supervisors"
* #Contact-centre-information-clerks "Contact centre information clerks"
* #Contact-centre-salespersons "Contact centre salespersons"
* #Cooks "Cooks"
* #Craft-and-related-trades-workers "Craft and related trades workers"
* #Craft-and-related-workers-not-elsewhere-classified "Craft and related workers not elsewhere classified"
* #Crane-hoist-and-related-plant-operators "Crane, hoist and related plant operators"
* #Creative-and-performing-artists "Creative and performing artists"
* #Creative-and-performing-artists-not-elsewhere-classified "Creative and performing artists not elsewhere classified"
* #Credit-and-loans-officers "Credit and loans officers"
* #Crop-farm-labourers "Crop farm labourers"
* #Customer-services-clerks "Customer services clerks"
* #Customs-and-border-inspectors "Customs and border inspectors"
* #Dairy-products-makers "Dairy-products makers"
* #Dancers-and-choreographers "Dancers and choreographers"
* #Data-entry-clerks "Data entry clerks"
* #Database-and-network-professionals "Database and network professionals"
* #Database-and-network-professionals-not-elsewhere-classified "Database and network professionals not elsewhere classified"
* #Database-designers-and-administrators "Database designers and administrators"
* #Debt-collectors-and-related-workers "Debt-collectors and related workers"
* #Deep-sea-fishery-workers "Deep-sea fishery workers"
* #Dental-assistants-and-therapists "Dental assistants and therapists"
* #Dentists "Dentists"
* #Dieticians-and-nutritionists "Dieticians and nutritionists"
* #Dispensing-opticians "Dispensing opticians"
* #DOCTOR "DOCTOR"
* #Domestic-cleaners-and-helpers "Domestic cleaners and helpers"
* #Domestic-housekeepers "Domestic housekeepers"
* #Domestic-hotel-and-office-cleaners-and-helpers "Domestic, hotel and office cleaners and helpers"
* #Door-to-door-salespersons "Door to door salespersons"
* #Draughtspersons "Draughtspersons"
* #Drivers-and-mobile-plant-operators "Drivers and mobile plant operators"
* #Drivers-of-animal-drawn-vehicles-and-machinery "Drivers of animal-drawn vehicles and machinery"
* #Driving-instructors "Driving instructors"
* #Early-childhood-educators "Early childhood educators"
* #Earthmoving-and-related-plant-operators "Earthmoving and related plant operators"
* #Economists "Economists"
* #Education-managers "Education managers"
* #Education-methods-specialists "Education methods specialists"
* #Electrical-and-electronic-equipment-assemblers "Electrical and electronic equipment assemblers"
* #Electrical-and-electronic-trades-workers "Electrical and electronic trades workers"
* #Electrical-engineering-technicians "Electrical engineering technicians"
* #Electrical-engineers "Electrical engineers"
* #Electrical-equipment-installers-and-repairers "Electrical equipment installers and repairers"
* #Electrical-line-installers-and-repairers "Electrical line installers and repairers"
* #Electrical-mechanics-and-fitters "Electrical mechanics and fitters"
* #Electronics-and-telecommunications-installers-and-repairers "Electronics and telecommunications installers and repairers"
* #Electronics-engineering-technicians "Electronics engineering technicians"
* #Electronics-engineers "Electronics engineers"
* #Electronics-mechanics-and-servicers "Electronics mechanics and servicers"
* #Electrotechnology-engineers "Electrotechnology engineers"
* #Elementary-occupations "Elementary occupations"
* #Elementary-workers-not-elsewhere-classified "Elementary workers not elsewhere classified"
* #Employment-agents-and-contractors "Employment agents and contractors"
* #ENGINEER "ENGINEER"
* #Engineering-professionals-excluding-electrotechnology "Engineering professionals (excluding electrotechnology)"
* #Engineering-professionals-not-elsewhere-classified "Engineering professionals not elsewhere classified"
* #Enquiry-clerks "Enquiry clerks"
* #Environmental-and-occupational-health-and-hygiene-professionals "Environmental and occupational health and hygiene professionals"
* #Environmental-and-occupational-health-inspectors-and-associates "Environmental and occupational health inspectors and associates"
* #Environmental-engineers "Environmental engineers"
* #Environmental-protection-professionals "Environmental protection professionals"
* #FARMER "FARMER"
* #Farming-forestry-and-fisheries-advisers "Farming, forestry and fisheries advisers"
* #Fashion-and-other-models "Fashion and other models"
* #Fast-food-preparers "Fast food preparers"
* #Fibre-preparing-spinning-and-winding-machine-operators "Fibre preparing, spinning and winding machine operators"
* #Field-crop-and-vegetable-growers "Field crop and vegetable growers"
* #Filing-and-copying-clerks "Filing and copying clerks"
* #Film-stage-and-related-directors-and-producers "Film, stage and related directors and producers"
* #Finance-managers "Finance managers"
* #Finance-professionals "Finance professionals"
* #Financial-analysts "Financial analysts"
* #Financial-and-insurance-services-branch-managers "Financial and insurance services branch managers"
* #Financial-and-investment-advisers "Financial and investment advisers"
* #Financial-and-mathematical-associate-professionals "Financial and mathematical associate professionals"
* #Fire-fighters "Fire-fighters"
* #Fishery-and-aquaculture-labourers "Fishery and aquaculture labourers"
* #Fishery-workers-hunters-and-trappers "Fishery workers, hunters and trappers"
* #Fitness-and-recreation-instructors-and-program-leaders "Fitness and recreation instructors and program leaders"
* #Floor-layers-and-tile-setters "Floor layers and tile setters"
* #Food-and-beverage-tasters-and-graders "Food and beverage tasters and graders"
* #Food-and-related-products-machine-operators "Food and related products machine operators"
* #Food-preparation-assistants "Food preparation assistants"
* #Food-processing-and-related-trades-workers "Food processing and related trades workers"
* #Food-processing-wood-working-garment-and-other-craft-and-related-trades-workers "Food processing, wood working, garment and other craft and related trades workers"
* #Food-service-counter-attendants "Food service counter attendants"
* #Forestry-and-related-workers "Forestry and related workers"
* #Forestry-labourers "Forestry labourers"
* #Forestry-technicians "Forestry technicians"
* #Freight-handlers "Freight handlers"
* #Fruit-vegetable-and-related-preservers "Fruit, vegetable and related preservers"
* #Fumigators-and-other-pest-and-weed-controllers "Fumigators and other pest and weed controllers"
* #Fur-and-leather-preparing-machine-operators "Fur and leather preparing machine operators"
* #Gallery-museum-and-library-technicians "Gallery, museum and library technicians"
* #Garbage-and-recycling-collectors "Garbage and recycling collectors"
* #Garden-and-horticultural-labourers "Garden and horticultural labourers"
* #Gardeners-horticultural-and-nursery-growers "Gardeners, horticultural and nursery growers"
* #Garment-and-related-pattern-makers-and-cutters "Garment and related pattern-makers and cutters"
* #Garment-and-related-trades-workers "Garment and related trades workers"
* #General-and-keyboard-clerks "General and keyboard clerks"
* #General-office-clerks "General office clerks"
* #Generalist-medical-practitioners "Generalist medical practitioners"
* #Geologists-and-geophysicists "Geologists and geophysicists"
* #Glass-and-ceramics-plant-operators "Glass and ceramics plant operators"
* #Glass-makers-cutters-grinders-and-finishers "Glass makers, cutters, grinders and finishers"
* #Glaziers "Glaziers"
* #Government-licensing-officials "Government licensing officials"
* #Government-social-benefits-officials "Government social benefits officials"
* #Government-tax-and-excise-officials "Government tax and excise officials"
* #Graphic-and-multimedia-designers "Graphic and multimedia designers"
* #HAIRDRESSER "HAIRDRESSER"
* #Hairdressers "Hairdressers"
* #Hairdressers-beauticians-and-related-workers "Hairdressers, beauticians and related workers"
* #Hand-and-pedal-vehicle-drivers "Hand and pedal vehicle drivers"
* #Hand-launderers-and-pressers "Hand launderers and pressers"
* #Hand-packers "Hand packers"
* #Handicraft-and-printing-workers "Handicraft and printing workers"
* #Handicraft-workers "Handicraft workers"
* #Handicraft-workers-in-textile-leather-and-related-materials "Handicraft workers in textile, leather and related materials"
* #Handicraft-workers-in-wood-basketry-and-related-materials "Handicraft workers in wood, basketry and related materials"
* #Handicraft-workers-not-elsewhere-classified "Handicraft workers not elsewhere classified"
* #Health-associate-professionals "Health associate professionals"
* #Health-associate-professionals-not-elsewhere-classified "Health associate professionals not elsewhere classified"
* #Health-care-assistants "Health care assistants"
* #Health-professionals "Health professionals"
* #Health-professionals-not-elsewhere-classified "Health professionals not elsewhere classified"
* #Health-services-managers "Health services managers"
* #Heavy-truck-and-bus-drivers "Heavy truck and bus drivers"
* #Heavy-truck-and-lorry-drivers "Heavy truck and lorry drivers"
* #Home-based-personal-care-workers "Home-based personal care workers"
* #Hospitality-retail-and-other-services-managers "Hospitality, retail and other services managers"
* #Hotel-and-restaurant-managers "Hotel and restaurant managers"
* #Hotel-managers "Hotel managers"
* #Hotel-receptionists "Hotel receptionists"
* #House-builders "House builders"
* #HOUSEKEEPER "HOUSEKEEPER"
* #HOUSEWIFE "HOUSEWIFE"
* #Human-resource-managers "Human resource managers"
* #Hunters-and-trappers "Hunters and trappers"
* #Incinerator-and-water-treatment-plant-operators "Incinerator and water treatment plant operators"
* #Industrial-and-production-engineers "Industrial and production engineers"
* #Information-and-communications-technicians "Information and communications technicians"
* #Information-and-communications-technology-installers-and-servicers "Information and communications technology installers and servicers"
* #Information-and-communications-technology-operations-and-user-support-technicians "Information and communications technology operations and user support technicians"
* #Information-and-communications-technology-operations-technicians "Information and communications technology operations technicians"
* #Information-and-communications-technology-professionals "Information and communications technology professionals"
* #Information-and-communications-technology-sales-professionals "Information and communications technology sales professionals"
* #Information-and-communications-technology-service-managers "Information and communications technology service managers"
* #Information-and-communications-technology-user-support-technicians "Information and communications technology user support technicians"
* #Information-technology-trainers "Information technology trainers"
* #Inland-and-coastal-waters-fishery-workers "Inland and coastal waters fishery workers"
* #Insulation-workers "Insulation workers"
* #Insurance-representatives "Insurance representatives"
* #Interior-designers-and-decorators "Interior designers and decorators"
* #Jewellery-and-precious-metal-workers "Jewellery and precious-metal workers"
* #Journalists "Journalists"
* #Judges "Judges"
* #Keyboard-operators "Keyboard operators"
* #Kitchen-helpers "Kitchen helpers"
* #LABORER "LABORER"
* #Labourers-in-mining-construction-manufacturing-and-transport "Labourers in mining, construction, manufacturing and transport"
* #Landscape-architects "Landscape architects"
* #Laundry-machine-operators "Laundry machine operators"
* #LAWYER "LAWYER"
* #Lawyers "Lawyers"
* #Legal-professionals "Legal professionals"
* #Legal-professionals-not-elsewhere-classified "Legal professionals not elsewhere classified"
* #Legal-secretaries "Legal secretaries"
* #Legal-social-and-cultural-professionals "Legal, social and cultural professionals"
* #Legal-social-and-religious-associate-professionals "Legal, social and religious associate professionals"
* #Legal-social-cultural-and-related-associate-professionals "Legal, social, cultural and related associate professionals"
* #Legislators "Legislators"
* #Legislators-and-senior-officials "Legislators and senior officials"
* #Librarians-and-related-information-professionals "Librarians and related information professionals"
* #Librarians-archivists-and-curators "Librarians, archivists and curators"
* #Library-clerks "Library clerks"
* #Life-science-professionals "Life science professionals"
* #Life-science-technicians-excluding-medical "Life science technicians (excluding medical)"
* #Life-science-technicians-and-related-associate-professionals "Life science technicians and related associate professionals"
* #Lifting-truck-operators "Lifting truck operators"
* #Livestock-and-dairy-producers "Livestock and dairy producers"
* #Livestock-farm-labourers "Livestock farm labourers"
* #Locomotive-engine-drivers "Locomotive engine drivers"
* #Locomotive-engine-drivers-and-related-workers "Locomotive engine drivers and related workers"
* #Machinery-mechanics-and-repairers "Machinery mechanics and repairers"
* #Mail-carriers-and-sorting-clerks "Mail carriers and sorting clerks"
* #Management-and-organization-analysts "Management and organization analysts"
* #Managing-directors-and-chief-executives "Managing directors and chief executives"
* #Manufacturing-labourers "Manufacturing labourers"
* #Manufacturing-labourers-not-elsewhere-classified "Manufacturing labourers not elsewhere classified"
* #Manufacturing-managers "Manufacturing managers"
* #Manufacturing-supervisors "Manufacturing supervisors"
* #Manufacturing-mining-construction-and-distribution-managers "Manufacturing, mining, construction, and distribution managers"
* #Market-oriented-skilled-agricultural-workers "Market-oriented skilled agricultural workers"
* #Market-oriented-skilled-forestry-fishery-and-hunting-workers "Market-oriented skilled forestry, fishery and hunting workers"
* #Market-gardeners-and-crop-growers "Market gardeners and crop growers"
* #MARKETEER "MARKETEER"
* #Material-recording-and-transport-clerks "Material-recording and transport clerks"
* #Mathematicians-actuaries-and-statisticians "Mathematicians, actuaries and statisticians"
* #Mechanical-engineering-technicians "Mechanical engineering technicians"
* #Mechanical-engineers "Mechanical engineers"
* #Mechanical-machinery-assemblers "Mechanical machinery assemblers"
* #Medical-and-dental-prosthetic-technicians "Medical and dental prosthetic technicians"
* #Medical-and-pathology-laboratory-technicians "Medical and pathology laboratory technicians"
* #Medical-and-pharmaceutical-technicians "Medical and pharmaceutical technicians"
* #Medical-assistants "Medical assistants"
* #Medical-doctors "Medical doctors"
* #Medical-imaging-and-therapeutic-equipment-technicians "Medical imaging and therapeutic equipment technicians"
* #Medical-records-and-health-information-technicians "Medical records and health information technicians"
* #Medical-secretaries "Medical secretaries"
* #Messengers-package-deliverers-and-luggage-porters "Messengers, package deliverers and luggage porters"
* #Metal-finishing-plating-and-coating-machine-operators "Metal finishing, plating and coating machine operators"
* #Metal-moulders-and-coremakers "Metal moulders and coremakers"
* #Metal-polishers-wheel-grinders-and-tool-sharpeners "Metal polishers, wheel grinders and tool sharpeners"
* #Metal-processing-and-finishing-plant-operators "Metal processing and finishing plant operators"
* #Metal-processing-plant-operators "Metal processing plant operators"
* #Metal-production-process-controllers "Metal production process controllers"
* #Metal-working-machine-tool-setters-and-operators "Metal working machine tool setters and operators"
* #Metal-machinery-and-related-trades-workers "Metal, machinery and related trades workers"
* #Meteorologists "Meteorologists"
* #Meter-readers-and-vending-machine-collectors "Meter readers and vending-machine collectors"
* #Midwifery-associate-professionals "Midwifery associate professionals"
* #Midwifery-professionals "Midwifery professionals"
* #Mineral-and-stone-processing-plant-operators "Mineral and stone processing plant operators"
* #Miners-and-quarriers "Miners and quarriers"
* #Mining-and-construction-labourers "Mining and construction labourers"
* #Mining-and-metallurgical-technicians "Mining and metallurgical technicians"
* #Mining-and-mineral-processing-plant-operators "Mining and mineral processing plant operators"
* #Mining-and-quarrying-labourers "Mining and quarrying labourers"
* #Mining-engineers-metallurgists-and-related-professionals "Mining engineers, metallurgists and related professionals"
* #Mining-managers "Mining managers"
* #Mining-supervisors "Mining supervisors"
* #Mining-manufacturing-and-construction-supervisors "Mining, manufacturing and construction supervisors"
* #Mixed-crop-and-animal-producers "Mixed crop and animal producers"
* #Mixed-crop-and-livestock-farm-labourers "Mixed crop and livestock farm labourers"
* #Mixed-crop-growers "Mixed crop growers"
* #Mobile-farm-and-forestry-plant-operators "Mobile farm and forestry plant operators"
* #Mobile-plant-operators "Mobile plant operators"
* #Motor-vehicle-mechanics-and-repairers "Motor vehicle mechanics and repairers"
* #Motorcycle-drivers "Motorcycle drivers"
* #Musical-instrument-makers-and-tuners "Musical instrument makers and tuners"
* #Musicians-singers-and-composers "Musicians, singers and composers"
* #Non-commissioned-armed-forces-officers "Non-commissioned armed forces officers"
* #Numerical-and-material-recording-clerks "Numerical and material recording clerks"
* #Numerical-clerks "Numerical clerks"
* #NURSE "NURSE"
* #Nursing-and-midwifery-associate-professionals "Nursing and midwifery associate professionals"
* #Nursing-and-midwifery-professionals "Nursing and midwifery professionals"
* #Nursing-associate-professionals "Nursing associate professionals"
* #Nursing-professionals "Nursing professionals"
* #Odd-job-persons "Odd job persons"
* #Office-supervisors "Office supervisors"
* #Optometrists-and-ophthalmic-opticians "Optometrists and ophthalmic opticians"
* #OTHER "OTHER"
* #Other-artistic-and-cultural-associate-professionals "Other artistic and cultural associate professionals"
* #Other-arts-teachers "Other arts teachers"
* #Other-cleaning-workers "Other cleaning workers"
* #Other-clerical-support-workers "Other clerical support workers"
* #Other-craft-and-related-workers "Other craft and related workers"
* #Other-elementary-workers "Other elementary workers"
* #Other-health-associate-professionals "Other health associate professionals"
* #Other-health-professionals "Other health professionals"
* #Other-language-teachers "Other language teachers"
* #Other-music-teachers "Other music teachers"
* #Other-personal-services-workers "Other personal services workers"
* #Other-sales-workers "Other sales workers"
* #Other-services-managers "Other services managers"
* #Other-stationary-plant-and-machine-operators "Other stationary plant and machine operators"
* #Other-teaching-professionals "Other teaching professionals"
* #Packing-bottling-and-labelling-machine-operators "Packing, bottling and labelling machine operators"
* #Painters-and-related-workers "Painters and related workers"
* #Painters-building-structure-cleaners-and-related-trades-workers "Painters, building structure cleaners and related trades workers"
* #Paper-products-machine-operators "Paper products machine operators"
* #Paramedical-practitioners "Paramedical practitioners"
* #Pawnbrokers-and-money-lenders "Pawnbrokers and money-lenders"
* #Payroll-clerks "Payroll clerks"
* #Pelt-dressers-tanners-and-fellmongers "Pelt dressers, tanners and fellmongers"
* #Personal-care-workers "Personal care workers"
* #Personal-care-workers-in-health-services "Personal care workers in health services"
* #Personal-care-workers-in-health-services-not-elsewhere-classified "Personal care workers in health services not elsewhere classified"
* #Personal-service-workers "Personal service workers"
* #Personal-services-workers-not-elsewhere-classified "Personal services workers not elsewhere classified"
* #Personnel-and-careers-professionals "Personnel and careers professionals"
* #Personnel-clerks "Personnel clerks"
* #Pet-groomers-and-animal-care-workers "Pet groomers and animal care workers"
* #Petroleum-and-natural-gas-refining-plant-operators "Petroleum and natural gas refining plant operators"
* #Pharmaceutical-technicians-and-assistants "Pharmaceutical technicians and assistants"
* #Pharmacists "Pharmacists"
* #Philosophers-historians-and-political-scientists "Philosophers, historians and political scientists"
* #Photographers "Photographers"
* #Photographic-products-machine-operators "Photographic products machine operators"
* #Physical-and-earth-science-professionals "Physical and earth science professionals"
* #Physical-and-engineering-science-technicians "Physical and engineering science technicians"
* #Physical-and-engineering-science-technicians-not-elsewhere-classified "Physical and engineering science technicians not elsewhere classified"
* #Physicists-and-astronomers "Physicists and astronomers"
* #Physiotherapists "Physiotherapists"
* #Physiotherapy-technicians-and-assistants "Physiotherapy technicians and assistants"
* #Plant-and-machine-operators-and-assemblers "Plant and machine operators, and assemblers"
* #Plasterers "Plasterers"
* #Plastic-products-machine-operators "Plastic products machine operators"
* #Plumbers-and-pipe-fitters "Plumbers and pipe fitters"
* #POLICE "POLICE"
* #Police-inspectors-and-detectives "Police inspectors and detectives"
* #Police-officers "Police officers"
* #Policy-administration-professionals "Policy administration professionals"
* #Policy-and-planning-managers "Policy and planning managers"
* #Potters-and-related-workers "Potters and related workers"
* #Poultry-producers "Poultry producers"
* #Power-production-plant-operators "Power production plant operators"
* #Pre-press-technicians "Pre-press technicians"
* #Precision-instrument-makers-and-repairers "Precision-instrument makers and repairers"
* #Primary-school-and-early-childhood-teachers "Primary school and early childhood teachers"
* #Primary-school-teachers "Primary school teachers"
* #Print-finishing-and-binding-workers "Print finishing and binding workers"
* #Printers "Printers"
* #Printing-trades-workers "Printing trades workers"
* #Prison-guards "Prison guards"
* #Process-control-technicians "Process control technicians"
* #Process-control-technicians-not-elsewhere-classified "Process control technicians not elsewhere classified"
* #Product-and-garment-designers "Product and garment designers"
* #Product-graders-and-testers-excluding-foods-and-beverages "Product graders and testers (excluding foods and beverages)"
* #Production-and-specialised-services-managers "Production and specialised services managers"
* #Production-clerks "Production clerks"
* #Production-managers-in-agriculture-forestry-and-fisheries "Production managers in agriculture, forestry and fisheries"
* #Professional-services-managers "Professional services managers"
* #Professional-services-managers-not-elsewhere-classified "Professional services managers not elsewhere classified"
* #Professionals "Professionals"
* #Protective-services-workers "Protective services workers"
* #Protective-services-workers-not-elsewhere-classified "Protective services workers not elsewhere classified"
* #Psychologists "Psychologists"
* #Public-relations-professionals "Public relations professionals"
* #Pulp-and-papermaking-plant-operators "Pulp and papermaking plant operators"
* #Railway-brake-signal-and-switch-operators "Railway brake, signal and switch operators"
* #Real-estate-agents-and-property-managers "Real estate agents and property managers"
* #Receptionists-general "Receptionists (general)"
* #Refuse-sorters "Refuse sorters"
* #Refuse-workers "Refuse workers"
* #Refuse-workers-and-other-elementary-workers "Refuse workers and other elementary workers"
* #Regulatory-government-associate-professionals "Regulatory government associate professionals"
* #Regulatory-government-associate-professionals-not-elsewhere-classified "Regulatory government associate professionals not elsewhere classified"
* #Religious-associate-professionals "Religious associate professionals"
* #Religious-professionals "Religious professionals"
* #Research-and-development-managers "Research and development managers"
* #Restaurant-managers "Restaurant managers"
* #Retail-and-wholesale-trade-managers "Retail and wholesale trade managers"
* #Riggers-and-cable-splicers "Riggers and cable splicers"
* #Roofers "Roofers"
* #Rubber-products-machine-operators "Rubber products machine operators"
* #Rubber-plastic-and-paper-products-machine-operators "Rubber, plastic and paper products machine operators"
* #Sales-and-marketing-managers "Sales and marketing managers"
* #Sales-and-purchasing-agents-and-brokers "Sales and purchasing agents and brokers"
* #Sales-demonstrators "Sales demonstrators"
* #Sales-workers "Sales workers"
* #Sales-workers-not-elsewhere-classified "Sales workers not elsewhere classified"
* #Sales-marketing-and-development-managers "Sales, marketing and development managers"
* #Sales-marketing-and-public-relations-professionals "Sales, marketing and public relations professionals"
* #Science-and-engineering-associate-professionals "Science and engineering associate professionals"
* #Science-and-engineering-professionals "Science and engineering professionals"
* #Scribes-and-related-workers "Scribes and related workers"
* #Secondary-education-teachers "Secondary education teachers"
* #Secretaries-general "Secretaries (general)"
* #Securities-and-finance-dealers-and-brokers "Securities and finance dealers and brokers"
* #Security-guards "Security guards"
* #Senior-government-officials "Senior government officials"
* #Senior-officials-of-special-interest-organizations "Senior officials of special-interest organizations"
* #Service-and-sales-workers "Service and sales workers"
* #Service-station-attendants "Service station attendants"
* #Services-managers-not-elsewhere-classified "Services managers not elsewhere classified"
* #Sewing-machine-operators "Sewing machine operators"
* #Sewing-embroidery-and-related-workers "Sewing, embroidery and related workers"
* #Sheet-metal-workers "Sheet-metal workers"
* #Sheet-and-structural-metal-workers-moulders-and-welders-and-related-workers "Sheet and structural metal workers, moulders and welders, and related workers"
* #Shelf-fillers "Shelf fillers"
* #Ship-and-aircraft-controllers-and-technicians "Ship and aircraft controllers and technicians"
* #Ships'-deck-crews-and-related-workers "Ships' deck crews and related workers"
* #Ships'-deck-officers-and-pilots "Ships' deck officers and pilots"
* #Ships'-engineers "Ships' engineers"
* #Shoemakers-and-related-workers "Shoemakers and related workers"
* #Shoemaking-and-related-machine-operators "Shoemaking and related machine operators"
* #Shop-keepers "Shop keepers"
* #Shop-sales-assistants "Shop sales assistants"
* #Shop-salespersons "Shop salespersons"
* #Shop-supervisors "Shop supervisors"
* #Shotfirers-and-blasters "Shotfirers and blasters"
* #Sign-writers-decorative-painters-engravers-and-etchers "Sign writers, decorative painters, engravers and etchers"
* #Skilled-agricultural-forestry-and-fishery-workers "Skilled agricultural, forestry and fishery workers"
* #Social-and-religious-professionals "Social and religious professionals"
* #Social-welfare-managers "Social welfare managers"
* #Social-work-and-counselling-professionals "Social work and counselling professionals"
* #Social-work-associate-professionals "Social work associate professionals"
* #Sociologists-anthropologists-and-related-professionals "Sociologists, anthropologists and related professionals"
* #Software-and-applications-developers-and-analysts "Software and applications developers and analysts"
* #Software-and-applications-developers-and-analysts-not-elsewhere-classified "Software and applications developers and analysts not elsewhere classified"
* #Software-developers "Software developers"
* #Special-needs-teachers "Special needs teachers"
* #Specialist-medical-practitioners "Specialist medical practitioners"
* #Sports-and-fitness-workers "Sports and fitness workers"
* #Sports-coaches-instructors-and-officials "Sports coaches, instructors and officials"
* #Sports-recreation-and-cultural-centre-managers "Sports, recreation and cultural centre managers"
* #Spray-painters-and-varnishers "Spray painters and varnishers"
* #Stall-and-market-salespersons "Stall and market salespersons"
* #Stationary-plant-and-machine-operators "Stationary plant and machine operators"
* #Stationary-plant-and-machine-operators-not-elsewhere-classified "Stationary plant and machine operators not elsewhere classified"
* #Statistical-finance-and-insurance-clerks "Statistical, finance and insurance clerks"
* #Statistical-mathematical-and-related-associate-professionals "Statistical, mathematical and related associate professionals"
* #Steam-engine-and-boiler-operators "Steam engine and boiler operators"
* #Stock-clerks "Stock clerks"
* #Stonemasons-stone-cutters-splitters-and-carvers "Stonemasons, stone cutters, splitters and carvers"
* #Street-and-market-salespersons "Street and market salespersons"
* #Street-and-related-sales-and-service-workers "Street and related sales and service workers"
* #Street-and-related-service-workers "Street and related service workers"
* #Street-food-salespersons "Street food salespersons"
* #Street-vendors-excluding-food "Street vendors (excluding food)"
* #Structural-metal-preparers-and-erectors "Structural-metal preparers and erectors"
* #Subsistence-crop-farmers "Subsistence crop farmers"
* #Subsistence-farmers-fishers-hunters-and-gatherers "Subsistence farmers, fishers, hunters and gatherers"
* #Subsistence-fishers-hunters-trappers-and-gatherers "Subsistence fishers, hunters, trappers and gatherers"
* #Subsistence-livestock-farmers "Subsistence livestock farmers"
* #Subsistence-mixed-crop-and-livestock-farmers "Subsistence mixed crop and livestock farmers"
* #Supply-distribution-and-related-managers "Supply, distribution and related managers"
* #Survey-and-market-research-interviewers "Survey and market research interviewers"
* #Sweepers-and-related-labourers "Sweepers and related labourers"
* #Systems-administrators "Systems administrators"
* #Systems-analysts "Systems analysts"
* #Tailors-dressmakers-furriers-and-hatters "Tailors, dressmakers, furriers and hatters"
* #TEACHER "TEACHER"
* #Teachers'-aides "Teachers' aides"
* #Teaching-professionals "Teaching professionals"
* #Teaching-professionals-not-elsewhere-classified "Teaching professionals not elsewhere classified"
* #Technical-and-medical-sales-professionals-excluding-ICT "Technical and medical sales professionals (excluding ICT)"
* #Technicians-and-associate-professionals "Technicians and associate professionals"
* #Telecommunications-and-broadcasting-technicians "Telecommunications and broadcasting technicians"
* #Telecommunications-engineering-technicians "Telecommunications engineering technicians"
* #Telecommunications-engineers "Telecommunications engineers"
* #Telephone-switchboard-operators "Telephone switchboard operators"
* #Tellers-money-collectors-and-related-clerks "Tellers, money collectors and related clerks"
* #Textile-fur-and-leather-products-machine-operators "Textile, fur and leather products machine operators"
* #Textile-fur-and-leather-products-machine-operators-not-elsewhere-classified "Textile, fur and leather products machine operators not elsewhere classified"
* #Tobacco-preparers-and-tobacco-products-makers "Tobacco preparers and tobacco products makers"
* #Toolmakers-and-related-workers "Toolmakers and related workers"
* #Town-and-traffic-planners "Town and traffic planners"
* #Trade-brokers "Trade brokers"
* #Traditional-and-complementary-medicine-associate-professionals "Traditional and complementary medicine associate professionals"
* #Traditional-and-complementary-medicine-professionals "Traditional and complementary medicine professionals"
* #Traditional-chiefs-and-heads-of-village "Traditional chiefs and heads of village"
* #Training-and-staff-development-professionals "Training and staff development professionals"
* #Translators-interpreters-and-other-linguists "Translators, interpreters and other linguists"
* #Transport-and-storage-labourers "Transport and storage labourers"
* #Transport-clerks "Transport clerks"
* #Transport-conductors "Transport conductors"
* #Travel-attendants-and-travel-stewards "Travel attendants and travel stewards"
* #Travel-attendants-conductors-and-guides "Travel attendants, conductors and guides"
* #Travel-consultants-and-clerks "Travel consultants and clerks"
* #Travel-guides "Travel guides"
* #Tree-and-shrub-crop-growers "Tree and shrub crop growers"
* #Typists-and-word-processing-operators "Typists and word processing operators"
* #Undertakers-and-embalmers "Undertakers and embalmers"
* #Underwater-divers "Underwater divers"
* #UNEMPLOYED "UNEMPLOYED"
* #University-and-higher-education-teachers "University and higher education teachers"
* #UNKNOWN "UNKNOWN"
* #Upholsterers-and-related-workers "Upholsterers and related workers"
* #Valuers-and-loss-assessors "Valuers and loss assessors"
* #Vehicle-cleaners "Vehicle cleaners"
* #Vehicle-window-laundry-and-other-hand-cleaning-workers "Vehicle, window, laundry and other hand cleaning workers"
* #Veterinarians "Veterinarians"
* #Veterinary-technicians-and-assistants "Veterinary technicians and assistants"
* #Visual-artists "Visual artists"
* #Vocational-education-teachers "Vocational education teachers"
* #Waiters "Waiters"
* #Waiters-and-bartenders "Waiters and bartenders"
* #Water-and-firewood-collectors "Water and firewood collectors"
* #Weaving-and-knitting-machine-operators "Weaving and knitting machine operators"
* #Web-and-multimedia-developers "Web and multimedia developers"
* #Web-technicians "Web technicians"
* #Welders-and-flamecutters "Welders and flamecutters"
* #Well-drillers-and-borers-and-related-workers "Well drillers and borers and related workers"
* #Window-cleaners "Window cleaners"
* #Wood-processing-and-papermaking-plant-operators "Wood processing and papermaking plant operators"
* #Wood-processing-plant-operators "Wood processing plant operators"
* #Wood-treaters "Wood treaters"
* #Wood-treaters-cabinet-makers-and-related-trades-workers "Wood treaters, cabinet-makers and related trades workers"
* #Woodworking-machine-tool-setters-and-operators "Woodworking-machine tool setters and operators"

ValueSet: OccupationValueSet
Id: occupation-value-set
Title: "Occupation"
Description: "Occupation"
* ^experimental = false
* include codes from system OccupationCodeSystem*/

CodeSystem: CervicalCancerScreeningTypeCodeSystem
Id: cervical-cancer-screening-type-code-system
Title: "Cervical Cancer Screening Type"
Description: "Codes used for representing the cervical screening type."
* ^experimental = false
* ^caseSensitive = true
* #Routine-Screening-previous-result-negative "Routine screening (Previously negative screening result)"
* #post-treatment-follow-up-screening "Post treatment follow-up screening"

ValueSet: CervicalCancerScreeningTypeValueSet
Id: cervical-cancer-screening-type-value-set
Title: "Cervical Cancer Screening Type"
Description: "Codes used for representing the cervical screening type."
* ^experimental = false
* $LNC#LP72364-0 "Date last screened"
* include codes from system CervicalCancerScreeningTypeCodeSystem

ValueSet: CervicalCancerScreenedValueSet
Id: cervical-cancer-screened-value-set
Title: "Cervical Cancer Screened"
Description: "Codes used for representing whether screening for cervical cancer was done."
* ^experimental = false
* $SCT#1148678002 "Screening for malignant neoplasm of cervix done"
* $SCT#4461000175108 "Cervical cancer screening not done"

CodeSystem: ARVRegimenChangeCategoryCodeSystem
Id: arv-regimen-change-category-code-system
Title: "ARV Regimen Change Category"
Description: "Codes used for representing the category for the ARV regimen change."
* ^experimental = false
* ^caseSensitive = true
* #Switched "Switched"
* #Substituted "Substituted"

ValueSet: ARVRegimenChangeCategoryValueSet
Id: arv-regimen-change-category-value-set
Title: "ARV Regimen Change Category"
Description: "Codes used for representing the category for the ARV regimen change."
* ^experimental = false
* include codes from system ARVRegimenChangeCategoryCodeSystem

CodeSystem: ARVRegimenSwitchTypeCodeSystem
Id: arv-regimen-switch-type-code-system
Title: "ARV Regimen Switch Type"
Description: "Codes used for representing the type for the ARV regimen switched."
* ^experimental = false
* ^caseSensitive = true
* #First-Switch "First Switch"
* #Second-Switch "Second Switch"
* #Third-Switch  "Third Switch"

ValueSet: ARVRegimenSwitchTypeValueSet
Id: arv-regimen-switch-type-value-set
Title: "ARV Regimen Switch Type"
Description: "Codes used for representing the type for the ARV regimen switched."
* ^experimental = false
* include codes from system ARVRegimenSwitchTypeCodeSystem

CodeSystem: ARVRegimenSubstituteTypeCodeSystem
Id: arv-regimen-substitute-type-code-system
Title: "ARV Regimen Substitue Type"
Description: "Codes used for representing the type for the ARV regimen substitued."
* ^experimental = false
* ^caseSensitive = true
* #First-Substitute "First Substitute"
* #Second-Substitute "Second Substitute"
* #Third-Substitute  "Third Substitute"
* #Fourth-Substitute "Fourth Substitute"
* #Fifth-Substitute  "Fifth Substitute"
* #Sixth-Substitute  "Sixth Substitute"

ValueSet: ARVRegimenSubstituteTypeValueSet
Id: arv-regimen-substitute-type-value-set
Title: "ARV Regimen Substitue Type"
Description: "Codes used for representing the type for the ARV regimen substitued."
* ^experimental = false
* include codes from system ARVRegimenSubstituteTypeCodeSystem

ValueSet: ReasonARTStoppedValueSet
Id: reason-stopped-art-value-set
Title: "Reason For Stopping ART"
Description: "Codes used for representing the reasons for stopping ART."
* ^experimental = false
* $LNC#LA6529-7 "Toxicity/Side Effects"
* $LNC#LA6530-5 "Pregnancy"
* $LNC#18733-6 "Attending Progress note"
* $LNC#LA31432-0 "Not adherent to treatment"
* $LNC#LP56812-8 "Medication Regimen Status"
* $LNC#LA28316-0 "Financial concerns"
* $LNC#51855-5 "Patient Note"
* $LNC#34130-5 "Hospital Progress note"
* $LNC#LA6534-7 "Drug Out of Stock"

ValueSet: ARVSideEffectsValueSet
Id: arv-side-effects-value-set
Title: "ARV Side Effects"
Description: "Codes used for representing any side effects of the ARV medication prescribed to the patient."
* ^experimental = false
* $LNC#LA15098-9 "Nausea"
* $LNC#LA7542-9 "Fatigue"
* $LNC#LA15903-0 "Headache"
* $LNC#LA15424-7 "Diarrhea"
* $LNC#LA18969-8 "Anemia"
* $LNC#LA7469-5 "Rash"
* $LNC#LA15468-4 "Abdominal pain"
* $LNC#3141-9 "Body weight Measured"
* $LNC#LA7450-5 "Jaundice"
* $LNC#LA16358-6 "Numbness or tingling"
* $LNC#LA7460-4 "Pain"
* $LNC#LA10574-4 "Anxiety"
* $LNC#LA7428-1 "Dizziness"
* $LNC#LA15886-7 "Have nightmares"
* $LNC#LA10576-9 "Depression"
* $SCT#408508002 "Has shown no side effects from medication"

ValueSet: ReasonForARVRegimenChangeValueSet
Id: reason-for-arv-regimen-change-value-set
Title: "Reason For ARV Regimen Change"
Description: "Codes used for representing the reasons for changing the ARV regimen."
* ^experimental = false
* $LNC#LA6531-3 "Risk of Pregnancy"
* $LNC#LA6530-5 "Pregnancy"
* $LNC#LA6533-9 "New Drug Available"
* $LNC#LA6532-1 "Newly Diagnosed TB"
* $LNC#LA6534-7 "Drug Out of Stock"
* $LNC#LA6529-7 "Toxicity/Side Effects"
* $LNC#LA6535-4 "Other Reason"
* $LNC#24467-3 "CD3+CD4+ (T4 helper) cells [#/volume] in Blood"
* $LNC#20447-9 "HIV 1 RNA [#/volume] (viral load) in Serum or Plasma by NAA with probe detection"

ValueSet: ReasonsForPoorARVAdherenceValueSet
Id: reasons-for-poor-arv-adherence-value-set
Title: "Reasons For Poor ARV Adherence"
Description: "Codes used for representing the reasons for poor ARV adherence."
* ^experimental = false
* $LNC#LA6529-7 "Toxicity/Side Effects"
* $LNC#LA6534-7 "Drug Out of Stock"
* $LNC#LA18864-1 "Much better"
* $LNC#LA17144-9 "Sick person"
* $LNC#LA28316-0 "Financial concerns"
* $SCT#266934004 "Transport problem"
* $LNC#LP173580-4 "Alcohol use"
* $LNC#LA26695-9 "Forgot to take medication"
* $LNC#LA10576-9 "Depression"
* $LNC#45237-5 "Date lost to HIV treatment follow-up"
* $LNC#LL6048-4 "Medication refill arrangements - w/codes"
* $LNC#28163-4 "Not enjoying life [Living with HIV]"
* $SCT#397695000 "Finding related to ability to comply with treatment"

ValueSet: ModeOfDeliveryValueSet
Id: mode-of-delivery-value-set
Title: "Mode Of Delivery"
Description: "Codes used for representing mode of delivery."
* ^experimental = false
* $LNC#LA18963-1 "Spontaneous vaginal"
* $LNC#LA18965-6 "Caesarean section"

ValueSet: PlaceOfDeliveryValueSet
Id: place-of-delivery-value-set
Title: "Place Of Delivery"
Description: "Codes used for representing place of delivery."
* ^experimental = false
* $LNC#LA14084-0 "Home"
* $LNC#LA46-8 "Other"
* $LNC#LA18958-1 "Facility"

ValueSet: ResidentialTypeValueSet
Id: residential-type-value-set
Title: "Residential Type"
Description: "Codes used for representing patient residential type."
* ^experimental = false
* $SCT#224807002 "Urban environment"
* $SCT#224804009 "Rural environment"

ValueSet: HIVTrackingValueSet
Id: hiv-tracking-value-set
Title: "HIV Postive Tracking Care Plan Activivity Codes"
Description: "Codes used for representing activity in the Care Plan."
* ^experimental = false
* $LNC#63936-9 "Start date of treatment or therapy"
* $SCT#410524007 "Was not started"
* $LNC#67723-7 "Date of health-related event"
* $LNC#63939-3 "End date of treatment or therapy"

/*CodeSystem: ReferralReasonCodeSystem
Id: referral-reason-code-system
Title: "Referral Reason"
Description: "Codes used for representing the reason for referral."
* ^experimental = false
* ^caseSensitive = true
//* #Transferred-in-ART "To be enrolled as transferred in ART client"
//* #New-PRE-ART "To be enrolled as new PRE-ART client"
//* #Transferred-PRE-ART "To be enrolled as transferred in PRE-ART client"*/

ValueSet: ReferralReasonValueSet
Id: referral-reason-value-set
Title: "Referral Reason"
Description: "Codes used for representing the reason for referral."
* ^experimental = false
* $LNC#63936-9 "Start date of treatment or therapy"
* $LNC#45231-8 "HIV treatment prior to enrollment"
* $LNC#LA6517-2 "Currently being treated and transferred in with treatment records from within system."
* $LNC#LA6519-8 "Prior ARV treatment, but not transfer in with records, or client not abel to provide information."
* $SCT#410524007 "Was not started"
//* include codes from system ReferralReasonCodeSystem

ValueSet: HealthStatusValueSet
Id: health-status-value-set
Title: "Health Status"
Description: "Codes used for representing a patient health status."
* ^experimental = false
* $LNC#LA28121-4 "Healthy"
* $LNC#LA14937-9 "Continuous chronic illness"
* $LNC#LA4645-3 "Patient Died Before Therapy"
* $LNC#77978-5 "Patient died from illness of interest"

ValueSet: HIVTestResultValueSet
Id: hiv-test-result-value-set
Title: "HIV Test Results"
Description: "Codes used for representing a patient HIV test results."
* ^experimental = false
* $LNC#LA15256-3 "Nonreactive"
* $LNC#LA20963-7 "Positive for HIV 1"
* $LNC#LA20964-5 "Positive for HIV 2"

/*CodeSystem: ViralLoadIndicationCodeSystem
Id: viral-load-indication-code-system
Title: "Viral Load Indication"
Description: "Codes used for representing viral load indication."
* ^experimental = false
* ^caseSensitive = true
* #Viral-Load-Indication "Viral Load Indication"

ValueSet: ViralLoadIndicationValueSet
Id: viral-load-indication-value-set
Title: "Viral Load Indication"
Description: "Codes used for representing viral load indication."
* ^experimental = false
* include codes from system ViralLoadIndicationCodeSystem*/

ValueSet: ViralLoadIndicationValueSet
Id: viral-load-indication-value-set
Title: "Viral Load Indication"
Description: "Codes used for representing viral load indication."
* ^experimental = false
* $LNC#LA9035-2 "Routine"
* $LNC#LA26675-1 "Expedite"

CodeSystem: RoutineIndicationViralLoadCodeSystem
Id: routine-indication-viral-load-code-system
Title: "Routine Indication Viral Load"
Description: "Codes used for representing routine indication for viral load."
* ^experimental = false
* ^caseSensitive = true
* #1st-VL-Test-3-months-Post-ART "First viral load test at 3 months or longer post ART"
* #2nd-VL-Test-6-months-Post-ART "First viral load test at 6 months or longer post ART"
* #2nd-VL-Test-12-months-Post-ART  "2nd VL at 12 month post ART"
* #Annual-VL-Test  "Annual VL Test"
* #First-ANC-visit  "At the first ANC visit"
* #34-36-weeks-of-gestation  "At 34-36 weeks of gestation"
* #3-months-after-delivery  "Three months after delivery"
* #6-months-after-first-VL-at-postnatal-period  "Six months after the first VL at postnatal period"
* #Every-6-months-until-MTCT-ends  "Every six months until MTCT ends"
* #VL-after-EAC-Repeat-VL-50-to-1000  "VL after EAC: Repeat VL > 50 to <= 1000 copies/ml"
* #VL-after-EAC-Confirmatory-VL-Initial-50-to-1000  "VL after EAC: Confirmatory VL: Initial > 50 to <= 1000 copies/ml"

ValueSet: RoutineIndicationViralLoadValueSet
Id: routine-indication-viral-load-value-set
Title: "Routine Indication Viral Load"
Description: "Codes used for representing routine indication for viral load."
* ^experimental = false
* include codes from system RoutineIndicationViralLoadCodeSystem

CodeSystem: TargetedIndicationViralLoadCodeSystem
Id: targeted-indication-viral-load-code-system
Title: "Targeted Indication Viral Load"
Description: "Codes used for representing targeted indication for viral load."
* ^experimental = false
* ^caseSensitive = true
* #Suspected-ART-Failure "Suspected ART Failure"
* #Repeat-or-confirmatory-VL-Initial-VL-greater-than-1000 "Repeat or confirmatory VL Initial Viral load greater than 1000"

ValueSet: TargetedIndicationViralLoadValueSet
Id: targeted-indication-viral-load-value-set
Title: "Targeted Indication Viral Load"
Description: "Codes used for representing targeted indication for viral load."
* ^experimental = false
* include codes from system TargetedIndicationViralLoadCodeSystem

ValueSet: ViralLoadStatusValueSet
Id: viral-load-status-value-set
Title: "Viral Load Status"
Description: "Codes used for representing patient's viral load status."
* ^experimental = false
* $SCT#245780008 "Suppressed"
* $SCT#19032002 "Uncontrolled"

CodeSystem: EACGivenCodeSystem
Id: eac-given-code-system
Title: "EAC Given"
Description: "Codes used for representing the EAC given."
* ^experimental = false
* ^caseSensitive = true
* #EAC-1 "EAC 1"
* #EAC-2 "EAC 2"
* #EAC-3 "EAC 3"
* #EAC-4 "EAC 4"
* #EAC-5 "EAC 5"
* #EAC-6 "EAC 6"

ValueSet: EACGivenValueSet
Id: eac-given-value-set
Title: "EAC Given"
Description: "Codes used for representing the EAC given."
* ^experimental = false
* include codes from system EACGivenCodeSystem