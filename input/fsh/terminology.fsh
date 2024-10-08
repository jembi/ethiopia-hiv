CodeSystem: ARTFollowUpStatusCodeSystem
Id: art-follow-up-status-code-system
Title: "Follow Up Status"
Description: "A list of codes describing the follow up statuses"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #alive-on-art "Alive on ART"
* #to "TO"
* #dead "Dead"
* #drop "Drop"
* #restart "Restart"
* #lost "Lost"
* #stop "Stop"

ValueSet: ARTFollowUpStatusValueSet
Id: art-follow-up-status-value-set
Title: "Follow Up Status"
Description: "FollowUp Status"
* ^experimental = false
* ^status = #active
/** $SCT#129019007 "Taking medication"
* $LNC#45257-3 "Date dropped from HIV treatment"
* $LNC#45256-5 "HIV treatment clinic transferred to"
* $LNC#91382-2 "Date medication stopped - Reported"
* $LNC#45237-5 "Date lost to HIV treatment follow-up"
* $LNC#77978-5 "Patient died from illness of interest"*/
* $LNC#63936-9 "Start date of treatment or therapy"
* include codes from system ARTFollowUpStatusCodeSystem

// Possible codes from https://app.openconceptlab.org/#/orgs/Regenstrief/sources/LOINC/concepts/LP31423-4/
CodeSystem: ARVTreatmentCodeSystem
Id: arv-treatment-code-system
Title: "ARV Drugs"
Description: "A list of codes describing the ARV Drugs."
* ^experimental = false
* ^status = #active
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
* #2j "TDF + 3TC + DTG"
* #2k "AZT + 3TC + DTG"
* #3a "DRV/r + DTG + AZT/3TC"
* #3b "DRV/r + DTG + TDF/3TC - Product containing dolutegravir and lamivudine"
* #3c "DRV/r + ABC + 3TC + DTG"
* #3d "DRV/r + ABC + EFV + 3TC"
* #3e "DRV/r + TDF + 3TC + EFV"
* #3f "DRV/r + AZT + 3TC + EFV"
* #4a "4a"
* #4b "4b"
* #4c "AZT + 3TC + NVP"
* #4d "AZT + 3TC + EFV"
* #4e "TDF + 3TC + EFV"
* #4f "AZT + 3TC + LPV/r"
* #4g "ABC + 3TC + LPV/r"
* #4h "Other"
* #4j "ABC + 3TC + DTG"
* #4i "TDF + 3TC + DTG"
* #4k "AZT + 3TC + DTG"
* #4L "ABC+ 3TC + EFV"
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
* #5L "RAL + ABC + 3TC"
* #5m "ABC + 3TC + DTG"
* #5n "ABC + 3TC + LPV/r"
* #5o "TDF + 3TC + DTG"
* #6a "6a"
* #6b "6b"
* #6c "6c"
* #6d "6d"
* #6f "DRV/r + DTG + ABC + 3TC"
* #6g "DRV/r + ABC + 3TC + EFV"
* #6h "DRV/r + AZT + 3TC + EFV"
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
* ^status = #active
* $SCT#874950001 "Product containing only efavirenz and lamivudine and tenofovir"
* $SCT#324859007 "Product containing lamivudine and zidovudine"
* $SCT#776467001 "Product containing only lamivudine and nevirapine and zidovudine"
* $SCT#787163007 "Product containing dolutegravir and lamivudine"
* $SCT#413381000 "Product containing abacavir and lamivudine"
* $SCT#387472004 "Isoniazid"
* $SCT#387174006 "Fluconazole"
* $SCT#772196006 "Product containing only abacavir and dolutegravir and lamivudine"
* $SCT#714769003 "Product containing abacavir and dolutegravir and lamivudine"
* include codes from system ARVTreatmentCodeSystem

CodeSystem: ReasonNotStartedARTCodeSystem
Id: reason-not-started-art-code-system
Title: "Reason Not Started ART"
Description: "Reason Not Started ART"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #referred-tx-not-initiated "Referred TX not initiated"
* #declined "Declined"
* #died "Died"
* #known-positive-on-art "Known +ve on ART"
* #on-adherence-preparation "On adherence preparation"
* #on-oi-management "On OI management"
* #other "Other Specify here"

ValueSet: ReasonNotStartedARTValueSet
Id: reason-not-started-art-value-set
Title: "Reason Not Started ART"
Description: "Reason Not Started ART"
* ^experimental = false
* ^status = #active
//* $LNC#LP73973-7 "Date patient referred for treatment"
//* $LNC#LA4645-3 "Patient Died Before Therapy"
//* $SCT#105480006 "Procedure declined by patient"
//* $LNC#45231-8 "HIV treatment prior to enrollment"
//* $LNC#47244-9 "Symptom, diagnosis, or opportunistic infection related to HIV treatment"
//* $SCT#410265008 "Medication administration education, guidance, and counseling"
//* $LNC#LA46-8 "Other"
* include codes from system ReasonNotStartedARTCodeSystem

CodeSystem: FinalOutcomeCodeSystem
Id: final-outcome-code-system
Title: "Final Outcome"
Description: "Final Outcome"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #started-art "Started ART"
* #declined "Declined"
* #died "Died"
* #confirmed-referral "Confirmed referral"
* #started-art-in-other-hf "Started ART in other HF"
* #lost-to-follow-up "Lost to Follow up"
* #other "Other"

ValueSet: FinalOutcomeValueSet
Id: final-outcome-value-set
Title: "Final Outcome"
Description: "Final Outcome"
* ^experimental = false
//* $LNC#45237-5 "Date lost to HIV treatment follow-up"
//* $LNC#63936-9 "Start date of treatment or therapy"
//* $LNC#81954-0 "Date of death"
//* $SCT#105480006 "Procedure declined by patient"
//* $LNC#39266-2 "Follow-up (referred to) provider /specialist Set CPHS"
//* $LNC#45235-9 "Date original clinic HIV treatment start"
//* $LNC#LA46-8 "Other"
* include codes from system FinalOutcomeCodeSystem

CodeSystem: PrecancerousLesionTreatmentReceivedCodeSystem
Id: precancerous-lesion-treatment-received-code-system
Title: "Precancerous Lesion Treatment Received"
Description: "A list of codes describing the precancerous lesion treatment received"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #no-treatment "No Treatment"
* #cryotherapy "Cryotherapy"
* #thermo-coagulation "Thermo-Coagulation"
* #leep "LEEP"
* #referred-for-leep "Referred for LEEP"
* #referred-for-suspicious-cancer-evaluation "Referred for Suspicious cancer evaluation"
//* #other "Other"

ValueSet: CervicalCancerTreatmentReceivedValueSet
Id: cervical-cancer-treatment-received-value-set
Title: "Cervical Cancer Treatment Received"
Description: "Cervical Cancer Treatment Received"
* ^experimental = false
* ^status = #active
* $LNC#LA46-8 "Other"
* include codes from system PrecancerousLesionTreatmentReceivedCodeSystem
* include codes from system SuspiciousCancerousTreatmentCodeSystem

CodeSystem: SuspiciousCancerousTreatmentCodeSystem
Id: suspicious-cancerous-treatment-code-system
Title: "Suspicious Cancerous Treatment"
Description: "A list of codes describing the suspicious Cancerous treatment"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #treated-at-facility "Treated at the facility"
* #referred-to-another-facility "Referred to another facility"
* #arrival-in-receiving-facility-confirmed "Arrival in receiving facility confirmed"
* #feedback-received-by-referring-hf "Feedback received by referring HF"

CodeSystem: ARVAdherenceCodeSystem
Id: arv-adherence-code-system
Title: "ARV Adherence"
Description: "ARV Adherence"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Stopped "Stopped"
//* #Poor "Poor"
//* #Fair "Fair"
//* #Good "Good"

ValueSet: ARVAdherenceValueSet
Id: arv-adherence-value-set
Title: "ARV Adherence"
Description: "ARV Adherence"
* ^experimental = false
* ^status = #active
/** $LNC#LA8969-3 "Poor"
* $LNC#LA8968-5 "Fair"
* $LNC#LA8967-7 "Good"
* $LNC#91382-2 "Date medication stopped - Reported"*/
* $SCT#135818000 "General health poor"
* $SCT#135817005 "General health fair"
* $SCT#135815002 "General health good"
* include codes from system ARVAdherenceCodeSystem

CodeSystem: CervicalCancerScreeningMethodCodeSystem
Id: cervical-cancer-screening-method-code-system
Title: "Cervical Cancer Screening Method"
Description: "A list of codes describing the Cervical Cancer Screening Method"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #hpv-dna-test "HPV DNA-test"
* #via-test "VIA test"
* #hpv-via-test "HPV VIA test"
* #cytology "Cytology"

ValueSet: CervicalCancerScreeningMethodValueSet
Id: cervical-cancer-screening-method-value-set
Title: "Cervical Cancer Screening Method"
Description: "Cervical Cancer Screening Method."
* ^experimental = false
* ^status = #active
* include codes from system CervicalCancerScreeningMethodCodeSystem

CodeSystem: CervicalCancerScreeningVIAResultsCodeSystem
Id: via-screening-result-code-system
Title: "Cervical Cancer Screening Results - VIA"
Description: "A list of codes describing the Cervical Cancer Screening Results"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #via-negative "VIA negative"
* #via-positive-cryo-thermo-coagulation-eligible "VIA positive cryo-thermo coagulation eligible"
* #via-positive-cryo-thermo-coagulation-non-eligible "VIA positive cryo-thermo coagulation non-eligible"
* #cervical-cancer-suspicious "Cervical cancer suspicious"
* #screening-result-unknown "Screening result unknown"

ValueSet: CervicalCancerScreeningResultValueSet
Id: cervical-cancer-screening-result-value-set
Title: "Cervical Cancer Screening Results"
Description: "A list of codes describing the Cervical Cancer Screening Results"
* ^experimental = false
* ^status = #active
* include codes from system CervicalCancerScreeningVIAResultsCodeSystem
* include codes from system CervicalCancerScreeningHPVResultsCodeSystem

CodeSystem: CervicalCancerScreeningHPVResultsCodeSystem
Id: hpv-screening-result-code-system
Title: "Cervical Cancer Screening Results - HPV"
Description: "A list of codes describing the Cervical Cancer Screening Results"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #hpv-positive "VIA positive"
* #hpv-negative "VIA negative"
* #hpv-screening-result-unknown "Screening result unknown"

CodeSystem: CarePlanCategoryCodeSystem
Id: care-plan-category-code-system
Title: "Care Plan Categories"
Description: "A list of codes describing Care Plan categories."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #cervical-cancer-care-plan "Cervical Cancer Care Plan"
* #art-follow-up-care-plan "ART Follow-up Care Plan"
* #cotrimoxazole-care-plan "Cotrimoxazole Preventive Therapy Care Plan"
* #tb-treatment-care-plan "TB Treatment Care Plan"
* #tb-preventive-therapy-care-plan "TB Preventive Therapy Care Plan"

CodeSystem: EncounterVisitTypeCodeSystem
Id: encounter-visit-type-code-system
Title: "Nature of Encounter"
Description: "A list of codes describing the nature of the patient visit to the health facility"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #unscheduled "Unscheduled"
* #scheduled "Scheduled"

ValueSet: EncounterVisitTypeValueSet
Id: encounter-visit-type-value-set
Title: "Nature of Encounter"
Description: "A list of codes describing the nature of the patient visit to the health facility"
* ^experimental = false
* ^status = #active
* include codes from system EncounterVisitTypeCodeSystem

ValueSet: OpportunisticInfectionsTreatmentValueSet
Id: opportunistic-infections-related-to-hiv-value-set
Title: "Opportunistic Infection Medication Codes"
Description: "A list of codes describing the medication for opportunistic infections related to the patient."
* ^experimental = false
* ^status = #active
* $LNC#18998-5 "Trimethoprim+Sulfamethoxazole [Susceptibility]"
* $LNC#18924-1 "Fluconazole [Susceptibility]"

ValueSet: TBScreeningTypeValueSet
Id: tb-screening-type-value-set
Title: "TB Screening Type Codes"
Description: "A list of codes describing the Type of TB Screening."
* ^experimental = false
* ^status = #active
* $LNC#71773-6 "Mycobacterium tuberculosis stimulated gamma interferon [Interpretation] in Blood Qualitative"

ValueSet: TBScreeningResultValueSet
Id: tb-screening-result-value-set
Title: "TB Screening Result Codes"
Description: "A list of codes describing the result of the TB Screening."
* ^experimental = false
* ^status = #active
* $LNC#LA6576-8 "Positive"
* $LNC#LA6577-6 "Negative"

ValueSet: TBScreeningSpecimenTypeValueSet
Id: tb-screening-specimen-type-value-set
Title: "TB Screening Specimen Type Codes"
Description: "A list of codes describing the specimen types that can be taken during TB Screening for the laboratory examination."
* ^experimental = false
* ^status = #active
* $SPECIMEN_TYPE#PLAS "Plasma"
* $SPECIMEN_TYPE#SER "Serum"
* $SPECIMEN_TYPE#BLD "Whole blood"
* $SPECIMEN_TYPE#SKN "Skin"

CodeSystem: TBScreeningDiagnosticTestTypeCodeSystem
Id: tb-screening-diagnostic-test-type-code-system
Title: "TB Screening Diagnostic Test Type Codes"
Description: "A list of codes describing the types of diagnostic tests that can be peformed on the specimen taken during TB screening."
* ^experimental = false
* ^status = #active
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
* ^status = #active
* include codes from system TBScreeningDiagnosticTestTypeCodeSystem

CodeSystem: TBTreatmentStatusCodeSystem
Id: tb-treatment-status-code-system
Title: "TB Treatment Status Codes"
Description: "A list of codes describing the status of TB treatment."
* ^experimental = false
* ^status = #active
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
* ^status = #active
* include codes from system TBTreatmentStatusCodeSystem

ValueSet: TBDiagnosticTestResultValueSet
Id: tb-diagnostic-test-result-value-set
Title: "TB Diagnostic Test Result Codes"
Description: "A list of codes describing a TB diagnostic test result."
* ^experimental = false
* ^status = #active
* $LNC#LA6577-6 "Negative"
* $LNC#LA6576-8 "Positive"
* $LNC#LA11884-6 "Indeterminate"

ValueSet: ActiveTBDiagnosisValueSet
Id: active-tb-diagnosis-value-set
Title: "Active TB Diagnosis Codes"
Description: "A list of codes describing whether the patient is infected with active TB."
* ^experimental = false
* ^status = #active
* $SCT#427099000 "Active tuberculosis"
* $SCT#11999007 "Inactive tuberculosis"

CodeSystem: TPTEligibilityStatusCodeSystem
Id: tpt-eligibility-status-code-system
Title: "Eligility Status for TPT Codes"
Description: "Observation codes used for indicating whether the patient is eligible for TPT."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Eligible-For-TPT "Is Eligible for TPT"
* #TPT-Reason-Not-Eligible "Reason Not Eligible for TPT"

ValueSet: TPTReasonNotEligibileValueSet
Id: tpt-reason-not-eligibile-value-set
Title: "Reason Not Eligible for TPT Codes"
Description: "A list of codes used for indicating the reason why the patient is not eligible for TPT."
* ^experimental = false
* ^status = #active
* $SCT#182834008 "Drug course completed"
* $SCT#473151000 "History of tuberculosis drug therapy"
* $SCT#373147003 "Administration of medication not done due to contraindication"

CodeSystem: TPTProphylaxisTypeCodeSystem
Id: tpt-prophylaxis-type-code-system
Title: "TPT Prophylaxis Type Codes"
Description: "A list of codes describing the TPT prophylaxis type."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Continuous "Continuous"
* #Alternate "Alternate"
* #inh "INH"

ValueSet: TPTProphylaxisTypeValueSet
Id: tpt-prophylaxis-type-value-set
Title: "TPT Prophylaxis Type Codes"
Description: "A list of codes describing the TPT prophylaxis type."
* ^experimental = false
* ^status = #active
//* $LNC#18934-0 "Isoniazid [Susceptibility]"
* include codes from system TPTProphylaxisTypeCodeSystem

ValueSet: TreatmentOutcomeValueSet
Id: treatment-outcome-value-set
Title: "Treatment Outcome Codes"
Description: "A list of codes indicating the status of the treatment."
* ^experimental = false
* ^status = #active
* $SCT#182992009 "Treatment completed"
* $SCT#182840001 "Drug treatment stopped - medical advice"

ValueSet: MonthOrdinalsValueSet
Id: month-ordinals-value-set
Title: "Month Ordinal Codes"
Description: "A list of codes indicating the month ordinals."
* ^experimental = false
* ^status = #active
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
* ^status = #active
* $SCT#346670008 "Product containing isoniazid and rifampicin"
* $SCT#410831004 "Product containing rifapentine"

ValueSet: TPTProphylaxisValueSet
Id: tpt-prophylaxis-value-set
Title: "TPT Prophylaxis Codes For Medication Requests"
Description: "A list of codes describing the different codes used during a request for TPT medication."
* ^experimental = false
* ^status = #active
* $LNC#18934-0 "Isoniazid [Susceptibility]"
* $SCT#346670008 "Product containing isoniazid and rifampicin"
* $SCT#410831004 "Product containing rifapentine"

CodeSystem: TPTAlternateFollowUpCodeSystem
Id: tpt-alternate-follow-up-code-system
Title: "TPT Alternate Follow-Up Codes"
Description: "A code indicating that the follow-up is for an alternate TPT prophylaxis."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #TPT-Alternate-Follow-Up "TPT Alternate Follow Up"

CodeSystem: ARTEligibilityStatusCodeSystem
Id: art-eligibility-status-code-system
Title: "Eligility Status for ART Codes"
Description: "Observation codes used for indicating patient eligibility for ART."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Not-Eligible "Not Eligible"
* #Eligible "Eligible"
* #Eligible-and-Ready "Eligible and Ready"

ValueSet: ARTEligibilityStatusValueSet
Id: art-eligibility-status-value-set
Title: "ART Eligibility Status"
Description: "ART Eligibility Status"
* ^experimental = false
* ^status = #active
* include codes from system ARTEligibilityStatusCodeSystem
//* $LNC#47240-7 "Date determined medically eligible to start HIV treatment"
//* $LNC#47241-5 "Date determined medically eligible and ready to start HIV treatment"

CodeSystem: ReasonForARTEligibilityCodeSystem
Id: reason-for-art-eligibility-code-system
Title: "Reasons For ART Eligibility"
Description: "Reasons For ART Eligibility"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Test-and-Treat "Test and treat"
* #Clinical-Staging "Clinical Staging"
* #Transfer-in "Transfer in"
* #Stage-Three "Stage Three"
* #Stage-Four "Stage Four"
* #Discordant-Couple "Discordant couple"
* #Other "Other"

ValueSet: ReasonForARTEligibilityValueSet
Id: reason-for-art-eligibility-value-set
Title: "Reasons For ART Eligibility"
Description: "Reasons For ART Eligibility"
* ^experimental = false
* ^status = #active
* $LNC#LA6530-5 "Pregnancy"
* $LNC#63932-8 "Age at diagnosis"
* $LNC#46251-5 "Age group"
* $SCT#56393004 "Immunologic reaction, function"
* $LNC#LA46-8 "Other"
* include codes from system ReasonForARTEligibilityCodeSystem

ValueSet: HIVTestResultsValueSet
Id: hiv-test-results-value-set
Title: "HIV Test Results"
Description: "HIV Test Results"
* ^experimental = false
* ^status = #active
* $LNC#LA24959-1 "HIV Negative"
* $LNC#LA24955-9 "HIV-1 Positive"
* $LNC#LA11884-6 "Indeterminate"

ValueSet: HIVTestType
Id: hiv-test-type-value-set
Title: "HIV Test Types"
Description: "HIV Test Types"
* ^experimental = false
* ^status = #active
* $LNC#9836-8 "HIV proviral DNA [Presence] in Blood by Probe with amplification"
* $LNC#89365-1 "HIV 1 and 2 Ab panel - Serum, Plasma or Blood by Rapid immunoassay"

CodeSystem: YesNoCodeSystem
Id: yes-no-code-system
Title: "Yes/No Codes"
Description: "Yes/No Codes Represented as Boolean."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #true "Yes"
* #false "No"

ValueSet: YesNoValueSet
Id: yes-no-value-set
Title: "Yes/No Codes"
Description: "Yes/No Codes Represented as Boolean."
* ^experimental = false
* ^status = #active
* $AbsentUnknownCodeSystem#Not-Applicable
* include codes from system YesNoCodeSystem

ValueSet: NutritionalStatusValueSet
Id: nutritional-status-value-set
Title: "Nutritional Status"
Description: "Nutritional Status"
* ^experimental = false
* ^status = #active
* $SCT#255604002 "Mild"
* $SCT#6736007 "Moderate"
* $SCT#24484000 "Sever"
//* $LNC#LA33703-2 "Mildly malnourished"
//* $LNC#LA33704-0 "Moderately malnourished"
//* $LNC#LA33705-7 "Severely malnourished"
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
* ^status = #active
* ^caseSensitive = true
* #Normal "Normal"
* #Undernourished "Undernourished"
* #Over-weight "Over weight"

ValueSet: NutritionalScreeningResultValueSet
Id: nutritional-screening-result-value-set
Title: "Nutritional Screening Result"
Description: "Nutritional Screening Result"
* ^experimental = false
* ^status = #active
* include codes from system NutritionalScreeningResultCodeSystem

CodeSystem: NutritionalSupplimentsProvidedCodeSystem
Id: nutritional-suppliments-provided-code-system
Title: "Nutritional Suppliments Provided Codes"
Description: "Code used for representing the patient's nutritional suppliments provided."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #RUTF "Ready-to-Use Therapeutic Food"
* #RUSF "Ready-to-Use Supplementary Food"

ValueSet: NutritionalSupplimentsProvidedValueSet
Id: nutritional-suppliments-provided-value-set
Title: "Nutritional Suppliments Provided"
Description: "Nutritional Suppliments Provided"
* ^experimental = false
* ^status = #active
* $LNC#LA46-8 "Other"
* include codes from system NutritionalSupplimentsProvidedCodeSystem

ValueSet: FamilyPlanningMethodValueSet
Id: family-planning-method-value-set
Title: "Family Planning Method"
Description: "Family Planning Method"
* ^experimental = false
* ^status = #active
* $LNC#LA14543-5 "Condoms"
* $LNC#LA27907-7 "Injectables"
* $LNC#LA27908-5 "Combined oral contraceptive pills"
* $LNC#LA27913-5 "Diaphragm or cervical cap"
* $LNC#LA14534-4 "Vasectomy"
* $LNC#LA27901-0 "Implantable rod"
* $LNC#LA14550-0 "Abstinence"
* $LNC#LA6527-1 "Intrauterine device"

ValueSet: EdemaValueSet
Id: edema-presence-value-set
Title: "Edema Codes"
Description: "Observation codes used for indicating the prescence of Edema."
* ^experimental = false
* ^status = #active
* $LNC#72071-4 "Edema present"
* $SCT#161980004 "No edema present"

CodeSystem: ChildrenDevelopmentalMilestoneCodeSystem
Id: children-developmental-milestone-code-system
Title: "Children Developmental Milestone Codes"
Description: "Code used for representing the child's developmental milestone."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Appropriate "Appropriate"
* #Regular "Regular"
* #Regression "Regression"

ValueSet: ChildrenDevelopmentalMilestoneValueSet
Id: children-developmental-milestone-value-set
Title: "Children Developmental Milestone"
Description: "Children Developmental Milestone"
* ^experimental = false
* ^status = #active
* $LNC#LA22265-5 "Pediatric: Developmental delay"
* include codes from system ChildrenDevelopmentalMilestoneCodeSystem

ValueSet: PatientFunctionalStatusValueSet
Id: patient-functional-status-value-set
Title: "Patient Functional Status"
Description: "Patient Functional Status"
* ^experimental = false
* ^status = #active
//* $SCT#716000009 "Able to perform paid work"
//* $LNC#LA21285-4 "Ambulant"
//* $LNC#LA4270-0 "Bedridden"
* $SCT#255327002 "Ambulatory"
* $SCT#261041009 "Working, function"
* $SCT#160685001 "Bed-ridden"

CodeSystem: WHOStageCodeSystem
Id: who-stage-code-system
Title: "WHO Stage Codes"
Description: "Code used for representing the patient's WHO stage."
* ^experimental = false
* ^status = #active
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
* ^status = #active
* include codes from system WHOStageCodeSystem

CodeSystem: DSDAssessmentCodeSystem
Id: dsd-assessment-code-system
Title: "Differentiated Service Delivery"
Description: "Code used for indicating a DSD assessment."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #DSD-Assessment "DSD Assessment"

CodeSystem: DSDAssessmentStatusCodeSystem
Id: dsd-assessment-status-code-system
Title: "Differentiated Service Delivery - Assessment Status"
Description: "Code used for indicating the status of the DSD assessment."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Stable "Stable"
* #Unstable "Unstable"

ValueSet: DSDAssessmentStatusValueSet
Id: dsd-assessment-status-value-set
Title: "Differentiated Service Delivery - Assessment Status"
Description: "Code used for indicating the status of the DSD assessment."
* ^experimental = false
* ^status = #active
* $LNC#LA14122-8 "Stable"
* $LNC#LA14123-6 "Unstable"
* include codes from system DSDAssessmentStatusCodeSystem

CodeSystem: DSDCategoryCodeSystem
Id: dsd-category-code-system
Title: "Differentiated Service Delivery - Category"
Description: "Code used for indicating the category for the DSD assessment."
* ^experimental = false
* ^status = #active
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
* #Other "Other"

ValueSet: DSDCategoryValueSet
Id: dsd-category-value-set
Title: "Differentiated Service Delivery - Category"
Description: "Code used for indicating the category for the DSD assessment."
* ^experimental = false
* ^status = #active
//* $LNC#LA46-8 "Other"
* include codes from system DSDCategoryCodeSystem

CodeSystem: DSDReasonForCategoryChangeCodeSystem
Id: dsd-reason-for-category-change-code-system
Title: "Differentiated Service Delivery - Reason For Category Change"
Description: "Code used for indicating the reason for the category change for the DSD assessment."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Returned "Returned to Conventional Care"
* #Moved "Moved to Other DSD Model"
* #TO "TO"
* #Dead "Dead"
* #Lost "Lost"
* #Unknown "Unknown"
* #Other "Other"

ValueSet: DSDReasonForCategoryChangeValueSet
Id: dsd-reason-for-category-change-value-set
Title: "Differentiated Service Delivery - Reason For Category Change"
Description: "Code used for indicating the reason for the category change for the DSD assessment."
* ^experimental = false
* ^status = #active
* $LNC#77978-5 "Patient died from illness of interest"
* $LNC#45237-5 "Date lost to HIV treatment follow-up"
* $LNC#45256-5 "HIV treatment clinic transferred to"
* $LNC#LA29947-1 "Carrier status unknown"
* $LNC#LA46-8 "Other"
* include codes from system DSDReasonForCategoryChangeCodeSystem

ValueSet: EncounterLocationValueSet
Id: encounter-location-value-set
Title: "Encounter Locations"
Description: "Code used for representing the location where the patient is receiving health services."
* ^experimental = false
* ^status = #active
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
* $LNC#LA46-8 "Other"
* $LNC#LP76338-0 "Index case"

CodeSystem: ServiceProviderTypeCodeSystem
Id: service-provider-code-system
Title: "Service Providers"
Description: "Code used for representing the classification of organizations providing health services."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Health-Center "Health Center"
* #Public-Hospital "Public hospital"
* #Private-Hospital "Private hospital"
* #NBO-FBO-Hospital "NBO/FBO hospital"
* #Private-Clinic "Private clinic"
* #Self-referred "Self-referred"
* #Community-Referred "Community referred"
* #Other "Other (Specify)"

ValueSet: ServiceProviderTypeValueSet
Id: service-provider-value-set
Title: "Service Providers"
Description: "Code used for representing the classification of organizations providing health services."
* ^experimental = false
* ^status = #active
* $SCT#276052003 "Public facilities"
* $SCT#394794000 "Health clinic managed by voluntary or private agents"
* $SCT#185483006 "Outreach clinic"
* $SCT#310391008 "Community clinic"
* $SCT#257622000 "Healthcare facility"
* $SCT#1991000124105 "Referred by self"
* $LNC#LA46-8 "Other"
* $SCT#309895006 "Private hospital"
* include codes from system ServiceProviderTypeCodeSystem

CodeSystem: EncounterTypeForEntryFromOutsideFacilityCodeSystem
Id: encounter-type-for-entry-from-outside-facility-code-system
Title: "Encounter Type Code For Entry From Outside Facility"
Description: "Code used for indicating that an encounter was captured to represent an entry point from outside the facility."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #ReferToCurrentFacilityEncounter "Refer To Current Facility Encounter"

ValueSet: PlanForNextStepValueSet
Id: plan-for-next-step-value-set
Title: "ART Not Started - Plan For Next Step"
Description: "Codes used for representing the plan for next steps when a patient didn't start ART the same day."
* ^experimental = false
* ^status = #active
* $LNC#53576-5 "Personal health monitoring report Document"
* $SCT#710838003 "Assessment of barriers to adherence"
* $SCT#373788008 "Treatment delay - clinical reason"
* $LNC#LA46-8 "Other"

CodeSystem: TargetPopulationCategoryCodeSystem
Id: target-population-category-code-system
Title: "Target Population Category Codes"
Description: "Codes used for representing the patient's target population category"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #General-Population "General Population"
* #Prisoner "Prisoner"
* #Children-Of-PLHIV "Children of PLHIV"
* #Partners-Of-PLHIV "Partners of PLHIV"
* #Discordant-Couples "Discordant Couples"
* #Other-MARPS "Other MARPS"
* #Female-Commercial-Sex-Workers "Female Commercial Sex Workers"
* #Distance-Drivers "Distance Drivers"
* #Mobile-Daily-Laborers "Mobile or Daily Laborers"
* #OVC-AIDS-Orphaned "OVC or AIDS Orphaned"
* #TG "TG"
* #Refugee "Refugee"
* #People-Who-Inject-Drug "People who Inject drug"
* #MSM "MSM"

ValueSet: TargetPopulationCategoryValueSet
Id: target-population-category-value-set
Title: "Target Population Category"
Description: "Codes used for representing the patient's target population category"
* ^experimental = false
* ^status = #active
* $SCT#76102007 "Male homosexual"
* $SCT#159799000 "Female prostitute"
* $SCT#407375002 "Surgically transgendered transsexual"
* $SCT#373927007 "Orphan"
* $SCT#106540006 "Laborer"
* $SCT#87447002 "Truck and van driver (long-distance transport)"
* $SCT#446654005 "Refugee"
* $SCT#226034001 "Injecting drug user"
* include codes from system TargetPopulationCategoryCodeSystem

CodeSystem: PatientEducationLevelCodeSystem
Id: patient-education-level-code-system
Title: "Patient Education Level Codes"
Description: "Codes used for indicating the patient's highest qualification."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #No-Education "No education"
* #Primary "Primary"
* #Secondary "Secondary"
* #Tertiary "Tertiary"
* #TVET "TVET"
* #Other "Other, specify"

ValueSet: PatientEducationLevelValueSet
Id: patient-education-level-value-set
Title: "Patient Education Level"
Description: "Codes used for indicating the patient's highest qualification."
* ^experimental = false
* ^status = #active
* $LNC#LA35-1 "No schooling"
* $LNC#LA32466-7 "Primary school education"
* $LNC#LA32467-5 "High school education"
* $LNC#LA15568-1 "Graduated from a college or university"
* $LNC#LA39-3 "Technical or trade school"
* $LNC#LA46-8 "Other"

CodeSystem: CervicalCancerScreeningTypeCodeSystem
Id: cervical-cancer-screening-type-code-system
Title: "Cervical Cancer Screening Type"
Description: "Codes used for representing the cervical screening type."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Routine-Screening-previous-result-negative "Routine screening (Previously negative screening result)"
* #post-treatment-follow-up-screening "Post treatment follow-up screening"

ValueSet: CervicalCancerScreeningTypeValueSet
Id: cervical-cancer-screening-type-value-set
Title: "Cervical Cancer Screening Type"
Description: "Codes used for representing the cervical screening type."
* ^experimental = false
* ^status = #active
* $LNC#LP72364-0 "Date last screened"
* include codes from system CervicalCancerScreeningTypeCodeSystem

ValueSet: CervicalCancerScreenedValueSet
Id: cervical-cancer-screened-value-set
Title: "Cervical Cancer Screened"
Description: "Codes used for representing whether screening for cervical cancer was done."
* ^experimental = false
* ^status = #active
* $SCT#1148678002 "Screening for malignant neoplasm of cervix done"
* $SCT#4461000175108 "Cervical cancer screening not done"

CodeSystem: ARVRegimenChangeCategoryCodeSystem
Id: arv-regimen-change-category-code-system
Title: "ARV Regimen Change Category"
Description: "Codes used for representing the category for the ARV regimen change."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Switched "Switched"
* #Substituted "Substituted"

ValueSet: ARVRegimenChangeCategoryValueSet
Id: arv-regimen-change-category-value-set
Title: "ARV Regimen Change Category"
Description: "Codes used for representing the category for the ARV regimen change."
* ^experimental = false
* ^status = #active
* include codes from system ARVRegimenChangeCategoryCodeSystem

CodeSystem: ARVRegimenSwitchTypeCodeSystem
Id: arv-regimen-switch-type-code-system
Title: "ARV Regimen Switch Type"
Description: "Codes used for representing the type for the ARV regimen switched."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #First-Switch "First Switch"
* #Second-Switch "Second Switch"
* #Third-Switch  "Third Switch"

CodeSystem: ARVRegimenSubstituteTypeCodeSystem
Id: arv-regimen-substitute-type-code-system
Title: "ARV Regimen Substitue Type"
Description: "Codes used for representing the type for the ARV regimen substitued."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #First-Substitute "First Substitute"
* #Second-Substitute "Second Substitute"
* #Third-Substitute  "Third Substitute"
* #Fourth-Substitute "Fourth Substitute"
* #Fifth-Substitute  "Fifth Substitute"
* #Sixth-Substitute  "Sixth Substitute"

ValueSet: ARVRegimenChangeTypeValueSet
Id: arv-regimen-change-type-value-set
Title: "ARV Regimen Change Type"
Description: "Codes used for representing the type of change associated with the ARV regimen (Switch or Substitute)."
* ^experimental = false
* ^status = #active
* include codes from system ARVRegimenSwitchTypeCodeSystem
* include codes from system ARVRegimenSubstituteTypeCodeSystem

ValueSet: ReasonARTStoppedValueSet
Id: reason-stopped-art-value-set
Title: "Reason For Stopping ART"
Description: "Codes used for representing the reasons for stopping ART."
* ^experimental = false
* ^status = #active
* $LNC#LA6529-7 "Toxicity/Side Effects"
* $LNC#LA6530-5 "Pregnancy"
* $LNC#18733-6 "Attending Progress note"
* $LNC#LA31432-0 "Not adherent to treatment"
* $LNC#LP56812-8 "Medication Regimen Status"
* $LNC#LA28316-0 "Financial concerns"
* $LNC#51855-5 "Patient Note"
* $LNC#34130-5 "Hospital Progress note"
* $LNC#LA6534-7 "Drug Out of Stock"
* $LNC#LA46-8 "Other"

ValueSet: ARVSideEffectsValueSet
Id: arv-side-effects-value-set
Title: "ARV Side Effects"
Description: "Codes used for representing any side effects of the ARV medication prescribed to the patient."
* ^experimental = false
* ^status = #active
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
* $LNC#LA46-8 "Other"

ValueSet: ReasonForARVRegimenChangeValueSet
Id: reason-for-arv-regimen-change-value-set
Title: "Reason For ARV Regimen Change"
Description: "Codes used for representing the reasons for changing the ARV regimen."
* ^experimental = false
* ^status = #active
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
* ^status = #active
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
* $LNC#LA46-8 "Other"

ValueSet: ModeOfDeliveryValueSet
Id: mode-of-delivery-value-set
Title: "Mode Of Delivery"
Description: "Codes used for representing mode of delivery."
* ^experimental = false
* ^status = #active
* $LNC#LA18963-1 "Spontaneous vaginal"
* $LNC#LA18965-6 "Caesarean section"
* $LNC#LA46-8 "Other"

ValueSet: PlaceOfDeliveryValueSet
Id: place-of-delivery-value-set
Title: "Place Of Delivery"
Description: "Codes used for representing place of delivery."
* ^experimental = false
* ^status = #active
* $LNC#LA14084-0 "Home"
* $LNC#LA46-8 "Other"
* $LNC#LA18958-1 "Facility"

ValueSet: ResidentialTypeValueSet
Id: residential-type-value-set
Title: "Residential Type"
Description: "Codes used for representing patient residential type."
* ^experimental = false
* ^status = #active
* $SCT#224807002 "Urban environment"
* $SCT#224804009 "Rural environment"

CodeSystem: HIVPositiveTrackingCodeSystem
Id: hiv-positive-tracking-code-system
Title: "HIV Positive Tracking"
Description: "Codes used for representing HIV positive tracking."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Started-ART "Started ART"
* #Not-Started "ART Not Started"
* #Final-Outcome "Final Outcome"
* #Linked-To-Care "Linked to care and treatment"

ValueSet: HIVTrackingValueSet
Id: hiv-tracking-value-set
Title: "HIV Positive Tracking Care Plan Activivity Codes"
Description: "Codes used for representing activity in the Care Plan."
* ^experimental = false
* ^status = #active
/** $LNC#63936-9 "Start date of treatment or therapy"
* $SCT#410524007 "Was not started"
* $LNC#67723-7 "Date of health-related event"
* $LNC#63939-3 "End date of treatment or therapy"*/
* include codes from system HIVPositiveTrackingCodeSystem

ValueSet: ReferralReasonValueSet
Id: referral-reason-value-set
Title: "Referral Reason"
Description: "Codes used for representing the reason for referral."
* ^experimental = false
* ^status = #active
* $LNC#63936-9 "Start date of treatment or therapy"
* $LNC#45231-8 "HIV treatment prior to enrollment"
* $LNC#LA6517-2 "Currently being treated and transferred in with treatment records from within system."
* $LNC#LA6519-8 "Prior ARV treatment, but not transfer in with records, or client not abel to provide information."
* $SCT#410524007 "Was not started"

ValueSet: HealthStatusValueSet
Id: health-status-value-set
Title: "Health Status"
Description: "Codes used for representing a patient health status."
* ^experimental = false
* ^status = #active
* $LNC#LA28121-4 "Healthy"
* $LNC#LA14937-9 "Continuous chronic illness"
* $LNC#LA4645-3 "Patient Died Before Therapy"
* $LNC#77978-5 "Patient died from illness of interest"

ValueSet: HIVTestResultValueSet
Id: hiv-test-result-value-set
Title: "HIV Test Results"
Description: "Codes used for representing a patient HIV test results."
* ^experimental = false
* ^status = #active
* $LNC#LA15256-3 "Nonreactive"
* $LNC#LA20963-7 "Positive for HIV 1"
* $LNC#LA20964-5 "Positive for HIV 2"
* $LNC#LA11884-6 "Indeterminate"

ValueSet: ViralLoadIndicationValueSet
Id: viral-load-indication-value-set
Title: "Viral Load Indication"
Description: "Codes used for representing viral load indication."
* ^experimental = false
* ^status = #active
* $LNC#LA9035-2 "Routine"
* $LNC#LA26675-1 "Expedite"

CodeSystem: RoutineIndicationViralLoadCodeSystem
Id: routine-indication-viral-load-code-system
Title: "Routine Indication Viral Load"
Description: "Codes used for representing routine indication for viral load."
* ^experimental = false
* ^status = #active
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

ValueSet: VLIndicationValueSet
Id: vl-indication-value-set
Title: "Viral Load Indication"
Description: "Codes used for representing the indication type for the viral load."
* ^experimental = false
* ^status = #active
* include codes from system RoutineIndicationViralLoadCodeSystem
* include codes from system TargetedIndicationViralLoadCodeSystem

CodeSystem: TargetedIndicationViralLoadCodeSystem
Id: targeted-indication-viral-load-code-system
Title: "Targeted Indication Viral Load"
Description: "Codes used for representing targeted indication for viral load."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Suspected-ART-Failure "Suspected ART Failure"
* #Repeat-or-confirmatory-VL-Initial-VL-greater-than-1000 "Repeat or confirmatory VL Initial Viral load greater than 1000"

ValueSet: ViralLoadStatusValueSet
Id: viral-load-status-value-set
Title: "Viral Load Status"
Description: "Codes used for representing patient's viral load status."
* ^experimental = false
* ^status = #active
* $SCT#245780008 "Suppressed"
* $SCT#19032002 "Uncontrolled"

CodeSystem: EACGivenCodeSystem
Id: eac-given-code-system
Title: "EAC Given"
Description: "Codes used for representing the EAC given."
* ^experimental = false
* ^status = #active
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
* ^status = #active
* include codes from system EACGivenCodeSystem

ValueSet: OpportunisticInfectionsValueSet
Id: oi-value-set
Title: "Opportunistic Infections"
Description: "Codes used for representing opportunistic infections."
* ^experimental = false
* ^status = #active
* $SCT#4740000 "Herpes zoster"
* $SCT#423997002 "Tuberculosis, extrapulmonary"
* $SCT#154283005 "Pulmonary tuberculosis"
* $SCT#72934000 "Candidiasis of vagina"
* $SCT#236071009 "Chronic diarrhea"
* $SCT#192701001 "Toxoplasma encephalitis"
* $SCT#109385007 "Kaposi's sarcoma"
* $SCT#415125002 "Pneumocystosis jirovecii pneumonia"
* $SCT#95589007 "Ulcers of male genital organs"
* $SCT#95595008 "Ulcers of female genital organs"
* $SCT#53084003 "Bacterial pneumonia"
* $SCT#20639004 "Candidiasis of the esophagus"
* $SCT#26284000 "Ulcer of mouth"
* $SCT#409966000 "Acute diarrhea"
* $SCT#14232007 "Cryptococcal meningitis"
* $SCT#363354003 "Malignant tumor of cervix"
* $SCT#79740000 "Candidiasis of mouth"
* $SCT#118601006 "Non-Hodgkin's lymphoma"
* $SCT#240704003 "Pharyngeal candidiasis"
* $SCT#42386007 "Cryptococcosis"
* $SCT#95892003 "Persistent generalized lymphadenopathy"
* $SCT#288517002 "Wasting disease"
* $SCT#95346009 "Mucocutaneous ulcer"
* $SCT#195708003 "Recurrent upper respiratory tract infection"
* $SCT#22255007 "Progressive multifocal leukoencephalopathy"
* $SCT#240413000 "Disseminated atypical mycobacterial infection"
* $SCT#386661006 "Fever"
* $SCT#62315008 "Diarrhea"
* $SCT#699014000 "Recurrent pneumonia"
* $SCT#81308009 "Disorder of brain"
* $SCT#3218000 "Mycosis"
* $SCT#240370009 "Cryptosporidiosis"
* $SCT#440219001 "Bacteremia caused by Salmonella"
* $LNC#LA46-8 "Other"

ValueSet: PainScaleValueSet
Id: pain-scale-value-set
Title: "Pain Scale"
Description: "Codes used for representing level of pain (pain scale)."
* ^experimental = false
* ^status = #active
* $LNC#LA131-5 "No pain"
* $LNC#LA15111-0 "Mild pain"
* $LNC#LA135-6 "Moderate pain"
* $LNC#LA15109-4 "Severe pain"

ValueSet: HIVPreventionPlanValueSet
Id: hiv-prevention-plan-value-set
Title: "HIV Prevention Plan"
Description: "Codes used for representing the patient's plan for the prevention of HIV being transmitted to others."
* ^experimental = false
* ^status = #active
* $SCT#266753000 "Referral for laboratory tests"
* $LNC#LP157024-3 "HIV results shared with partner"
* $SCT#386467004 "Safe sex education"
* $SCT#25681007 "Sexually transmitted disease clinic"
* $SCT#445563009 "Counseling for sexually transmitted disease"
* $LNC#28355-6 "Substance Use Status"

ValueSet: PresentingSymptomsValueSet
Id: presenting-symptoms-value-set
Title: "Presenting Symptoms"
Description: "Codes used for representing the symptoms currently being experienced by the patient."
* ^experimental = false
* ^status = #active
* $SCT#68154008 "Chronic cough"
* $SCT#267036007 "Dyspnea"
* $SCT#66857006 "Hemoptysis"
* $SCT#52702003 "Chronic fatigue syndrome"
* $SCT#89362005 "Weight loss"
* $SCT#95891005 "Influenza-like illness"
* $SCT#42984000 "Night sweats"
* $SCT#386661006 "Fever"
* $SCT#40739000 "Dysphagia"
* $SCT#30233002 "Swallowing painful"
* $SCT#422587007 "Nausea"
* $SCT#422400008 "Vomiting"
* $SCT#21522001 "Abdominal pain"
* $SCT#101000119102 "Numbness and tingling sensation of skin"
* $SCT#121021000119105 "New daily persistent headache"
* $SCT#712831003 "Frequent headache"
* $SCT#2776000 "Delirium"
* $SCT#236071009 "Chronic diarrhea"
* $SCT#8098009 "Sexually transmitted infectious disease"
* $LNC#LA46-8 "Other"

ValueSet: PhysicalExamValueSet
Id: physical-examination-value-set
Title: "Physical Examinations"
Description: "Codes used for representing a physical examination."
* ^experimental = false
* ^status = #active
* $LNC#11424-9 "Physical findings of Ears and Nose and Mouth and Throat"
* $LNC#32450-9 "Physical findings of Lymph node"
* $LNC#11391-0 "Physical findings of Chest Narrative"
* $LNC#10200-4 "Physical findings of Heart Narrative"
* $LNC#10191-5 "Physical findings of Abdomen Narrative"
* $LNC#10198-0 "Physical findings of Genitourinary tract Narrative"
* $LNC#11410-8 "Physical findings of Musculoskeletal system Narrative"
* $LNC#10206-1 "Physical findings of Skin Narrative"
* $LNC#10202-0 "Physical findings of Nervous system Narrative"

ValueSet: PhysicalExamInterpretationValueSet
Id: physical-examination-interpretation-value-set
Title: "Physical Examinations Interpretation"
Description: "Codes used for interpreting the finding associated with the physical examination."
* ^experimental = false
* ^status = #active
* $ObservationInterpretation#A "Abnormal"
* $ObservationInterpretation#N "Normal"

CodeSystem: CD4AndVLClassificationForTreatmentFailureCodeSystem
Id: cd4-vl-classification-for-treatment-failure-code-system
Title: "Viral Load/CD4 Count Classifications Indicating Treatment Failure"
Description: "Codes used for indicating the classification for the Viral Load/CD4 count treatment failure."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Immunologic-Failure "CD4 below 250 cells/mm3 (Immunologic Failure)"
* #Clinical-Failure "CD4 below 100 cells/mm3 (Clinical Failure)"
* #Virologic-Failure "VL above 999 copies/mL (Virologic Failure)"

ValueSet: CD4AndVLClassificationForTreatmentFailureValueSet
Id: cd4-vl-classification-for-treatment-failure-value-set
Title: "Viral Load/CD4 Count Classifications Indicating Treatment Failure"
Description: "Codes used for indicating the classification for the Viral Load/CD4 count treatment failure."
* ^experimental = false
* ^status = #active
* $LNC#LA46-8 "Other"
* include codes from system CD4AndVLClassificationForTreatmentFailureCodeSystem

ValueSet: DisclosureStageValueSet
Id: disclosure-stage-value-set
Title: "Disclosure Stage"
Description: "Codes used for representing the stages of disclosure for the patient's current HIV status."
* ^experimental = false
* ^status = #active
* $SCT#258215001 "Stage 1"
* $SCT#258219007 "Stage 2"
* $SCT#258224005 "Stage 3"

CodeSystem: PartnerAndFBICTCodeSystem
Id: partner-and-fbict-code-system
Title: "Partner and Family-based Index Case Testing (FBICT)"
Description: "Codes used for indicating the patient's status for partner and FBICT."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Partner-FBICT-Eligibiity "Eligible for partner and FBICT"
* #Partner-FBICT-Offered "Offered partner and FBICT"
* #Partner-FBICT-Accepted "Accepted partner and FBICT"
* #Partner-Services "Partner services"

ValueSet: HIVStatusValueSet
Id: hiv-status-value-set
Title: "HIV Status Codes"
Description: "A list of codes describing the patient's HIV status."
* ^experimental = false
* ^status = #active
* $LNC#94652-5 "Known exposure date"
* $LNC#LA6577-6 "Negative"
* $LNC#LA29947-1 "Carrier status unknown"
* $LNC#77978-5 "Patient died from illness of interest"

ValueSet: ReasonIndexCaseNotInterviewedValueSet
Id: reason-index-case-not-interviewed-value-set
Title: "Reason Index Case Not Interviewed"
Description: "Codes used for indicating the reason why the index case was not interviewed."
* ^experimental = false
* ^status = #active
* $LNC#LA46-8 "Other"
* $LNC#81954-0 "Date of death"
* $LNC#LA4014-2 "Eligible but Refused"

CodeSystem: PeriodOfHIVExposureCodeSystem
Id: period-of-hiv-exposure-code-system
Title: "Period of HIV Exposure"
Description: "Codes used for indicating the period when last the individual was exposed to HIV."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #<3Mths "Less than 3 months"
* #3-12Mths "In 3 to 12 months"
* #>12Mths "Greater than 12 months"

ValueSet: PeriodOfHIVExposureValueSet
Id: period-of-hiv-exposure-value-set
Title: "Period of HIV Exposure"
Description: "Codes used for indicating the period when last the individual was exposed to HIV."
* ^experimental = false
* ^status = #active
* include codes from system PeriodOfHIVExposureCodeSystem

CodeSystem: PartnerNotificationPlanCodeSystem
Id: partner-notification-plan-code-system
Title: "Partner Notification Plan"
Description: "Codes used for indicating the plan for notifying the partner regarding the index case's HIV status."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #No-Notification-IPV+ "No Notification (IPV+)"
* #Client-Referral "Client Referral"
* #Provider-Referral "Provider Referral"
* #Dual-Referral "Dual Referral"
* #Contact-Referral "Contact Referral"

ValueSet: PartnerNotificationPlanValueSet
Id: partner-notification-plan-value-set
Title: "Partner Notification Plan"
Description: "Codes used for indicating the plan for notifying the partner regarding the index case's HIV status."
* ^experimental = false
* ^status = #active
* include codes from system PartnerNotificationPlanCodeSystem

ValueSet: ReasonPartnerNotNotifiedValueSet
Id: reason-partner-not-notified-value-set
Title: "Reason Partner Not Notified"
Description: "Codes used for indicating the reason why the partner was not notified about the index case's HIV status."
* ^experimental = false
* ^status = #active
* $LNC#LA46-8 "Other"
* $LNC#LA4389-8 "Refused"
* $LNC#77969-4 "Jurisdiction code"

CodeSystem: IndexCasePartnerQuestionnaireCodeSystem
Id: index-case-partner-questionnaire-code-system
Title: "Index Case Sex Partner Questionnaire"
Description: "Proprietary Codes used in the Index Case Partner Questionnaire."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Other-Reason-Partner-Not-Notified "Other Reason Partner Not Notified"
* #Date-Notification-Offered "Date Notification Offered"
* #Date-Partner-Contacted "Date Partner Contacted"
* #Reason-Partner-Not-Contacted "Reason Partner Not Contacted"
* #Partner-Unreachable "Unable to Locate the Partner"
* #Other-Reason-Partner-Not-Contacted "Other Reason Partner Not Contacted"
* #Linked-to-Partner-Services "Linked to Partner Services"
* #Reason-Not-Linked-to-Partner-Services "Reason Not Linked to Partner Services"
* #Other-Reason-Not-Linked-to-Partner-Services "Other Reason Not Linked to Partner Services"
* #Partner-Case-Closure-Status "Partner Case Closure Status"
* #Other-Reason-Partner-Case-Closure "Other Reason Partner Case Closure"
* #Successful-Intervention "Successful Intervention"
* #Intervention-Completed "Intervention Completed"
* #Intervention-Partially-Completed "Intervention Partially Completed"

ValueSet: ReasonPartnerNotContactedValueSet
Id: reason-partner-not-contacted-value-set
Title: "Reason Partner Not Contacted"
Description: "Codes used for indicating the reason why the partner was not contacted."
* ^experimental = false
* ^status = #active
* $LNC#LA46-8 "Other"
* $IndexCasePartnerQuestionnaireCodeSystem#Partner-Unreachable

ValueSet: ReasonNotLinkedToPartnerServicesValueSet
Id: reason-not-linked-to-partner-services-value-set
Title: "Reason Not Linked to Partner Services"
Description: "Codes used for indicating the reason why the partner was not linked to partner services."
* ^experimental = false
* ^status = #active
* $LNC#LA46-8 "Other"
* $LNC#LA4389-8 "Refused"
* $LNC#LA6624-6 "Referred"

ValueSet: PartnerCaseClosureStatusValueSet
Id: partner-case-closure-status-value-set
Title: "Partner Case Closure Status"
Description: "Codes used for indicating the closure status for partner services."
* ^experimental = false
* ^status = #active
* $LNC#LA46-8 "Other"
* $LNC#LA4389-8 "Refused"
* $LNC#77969-4 "Jurisdiction code"
* $IndexCasePartnerQuestionnaireCodeSystem#Partner-Unreachable
* $SCT#162171002 "Currently not sexually active"
* $IndexCasePartnerQuestionnaireCodeSystem#Successful-Intervention
* $IndexCasePartnerQuestionnaireCodeSystem#Intervention-Completed
* $IndexCasePartnerQuestionnaireCodeSystem#Intervention-Partially-Completed

CodeSystem: AbsentUnknownCodeSystem
Id: absent-unknown-code-system
Title: "Absent or Unknown"
Description: "Codes used for indicating when a value is absent or unknown."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Absent-or-unknown "Absent or unknown" "When the value is not available at the time of the event"
* #Not-Applicable "Not Applicable" "The value is not applicable for one or more reasons that are captured by the clinician"

CodeSystem: EncounterServiceTypeCodeSystem
Id: encounter-service-type-code-system
Title: "Proprietary Service Type"
Description: "Codes used for indicating a proprietary encounter service type."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #arv-therapy "ARV Therapy"

ValueSet: EncounterTypeValueSet
Id: encounter-type-value-set
Title: "Encounter Type"
Description: "Codes used for indicating the type of encounter."
* ^experimental = false
* ^status = #active
* $SCT#769681006 "First encounter by subject"
* $SCT#390906007 "Follow-up encounter"
* $SCT#1137457009 "Pre-exposure prophylaxis"

CodeSystem: OccupationCodeSystem
Id: occupation-code-system
Title: "Occupation Codes"
Description: "Codes used for representing the patient's occupation"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
//* #N/A "N/A"
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
* ^status = #active
* $AbsentUnknownCodeSystem#Not-Applicable
* include codes from system OccupationCodeSystem

ValueSet: ReasonForNotTestingValueSet
Id: reason-for-not-testing-value-set
Title: "Reason For Not Testing"
Description: "Reason For Not Testing"
* ^experimental = false
* ^status = #active
* $LNC#94652-5 "Known exposure date"
* $LNC#LA4389-8 "Refused"
* $LNC#LA46-8 "Other"

CodeSystem: FamilyIndexCaseContactsQuestionnaireCodeSystem
Id: family-index-case-contacts-questionnaire-code-system
Title: "Family Index Case Contacts Questionnaire"
Description: "Proprietary Codes used in the Family Index Case Contacts Questionnaire."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #Other-Reason-Not-Tested-for-HIV "Other reason for not being tested for HIV"

CodeSystem: EnhancedAdherenceCounsellingCodeSystem
Id: enhanced-adherence-counselling-status-code-system
Title: "Enhanced Adherence Counselling"
Description: "Code used for indicating a proprietary enhanced adherence counselling"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #eac "Enhanced Adherence Counselling"