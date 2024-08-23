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

// Possible codes from https://app.openconceptlab.org/#/orgs/Regenstrief/sources/LOINC/concepts/LP31423-4/
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

ValueSet: FinalOutcomeValueSet
Id: final-outcome-value-set
Title: "Final Outcome"
Description: "Final Outcome"
* ^experimental = false
* $LNC#45237-5 "Date lost to HIV treatment follow-up"
* $LNC#63936-9 "Start date of treatment or therapy"
* $LNC#81954-0 "Date of death"
* $SCT#105480006 "Procedure declined by patient"
* $LNC#39266-2 "Follow-up (referred to) provider /specialist Set CPHS"
* $LNC#45235-9 "Date original clinic HIV treatment start"

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
* #other "Other"

ValueSet: CervicalCancerTreatmentReceivedValueSet
Id: cervical-cancer-treatment-received-value-set
Title: "Cervical Cancer Treatment Received"
Description: "Cervical Cancer Treatment Received"
* ^experimental = false
* include codes from system PrecancerousLesionTreatmentReceivedCodeSystem
* include codes from system SuspiciousCancerousTreatmentCodeSystem

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

ValueSet: ARVAdherenceValueSet
Id: arv-adherence-value-set
Title: "ARV Adherence"
Description: "ARV Adherence"
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
Title: "Cervical Cancer Screening Method"
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

ValueSet: CervicalCancerScreeningResultValueSet
Id: cervical-cancer-screening-result-value-set
Title: "Cervical Cancer Screening Results"
Description: "A list of codes describing the Cervical Cancer Screening Results"
* ^experimental = false
* include codes from system CervicalCancerScreeningVIAResultsCodeSystem
* include codes from system CervicalCancerScreeningHPVResultsCodeSystem

CodeSystem: CervicalCancerScreeningHPVResultsCodeSystem
Id: hpv-screening-result-code-system
Title: "Cervical Cancer Screening Results - HPV"
Description: "A list of codes describing the Cervical Cancer Screening Results"
* ^experimental = false
* ^caseSensitive = true
* #hpv-positive "VIA positive"
* #hpv-negative "VIA negative"
* #hpv-screening-result-unknown "Screening result unknown"

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

ValueSet: TBScreeningTypeValueSet
Id: tb-screening-type-value-set
Title: "TB Screening Type Codes"
Description: "A list of codes describing the Type of TB Screening."
* ^experimental = false
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

ValueSet: TPTProphylaxisValueSet
Id: tpt-prophylaxis-value-set
Title: "TPT Prophylaxis Codes For Medication Requests"
Description: "A list of codes describing the different codes used during a request for TPT medication."
* ^experimental = false
* $LNC#18934-0 "Isoniazid [Susceptibility]"
* $SCT#346670008 "Product containing isoniazid and rifampicin"
* $SCT#410831004 "Product containing rifapentine"

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
* #Stage-Three "Stage Three"
* #Stage-Four "Stage Four"
* #Discordant-Couple "Discordant couple"

ValueSet: ReasonForARTEligibilityValueSet
Id: reason-for-art-eligibility-value-set
Title: "Reasons For ART Eligibility"
Description: "Reasons For ART Eligibility"
* ^experimental = false
* $LNC#LA6530-5 "Pregnancy"
* $LNC#63932-8 "Age at diagnosis"
* $LNC#46251-5 "Age group"
* $SCT#56393004 "Immunologic reaction, function"
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

ValueSet: DSDAssessmentStatusValueSet
Id: dsd-assessment-status-value-set
Title: "Differentiated Service Delivery - Assessment Status"
Description: "Code used for indicating the status of the DSD assessment."
* ^experimental = false
* $LNC#LA14122-8 "Stable"
* $LNC#LA14123-6 "Unstable"

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

ValueSet: ARVRegimenChangeTypeValueSet
Id: arv-regimen-change-type-value-set
Title: "ARV Regimen Change Type"
Description: "Codes used for representing the type of change associated with the ARV regimen (Switch or Substitute)."
* ^experimental = false
* include codes from system ARVRegimenSwitchTypeCodeSystem
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

ValueSet: VLIndicationValueSet
Id: vl-indication-value-set
Title: "Viral Load Indication"
Description: "Codes used for representing the indication type for the viral load."
* ^experimental = false
* include codes from system RoutineIndicationViralLoadCodeSystem
* include codes from system TargetedIndicationViralLoadCodeSystem

CodeSystem: TargetedIndicationViralLoadCodeSystem
Id: targeted-indication-viral-load-code-system
Title: "Targeted Indication Viral Load"
Description: "Codes used for representing targeted indication for viral load."
* ^experimental = false
* ^caseSensitive = true
* #Suspected-ART-Failure "Suspected ART Failure"
* #Repeat-or-confirmatory-VL-Initial-VL-greater-than-1000 "Repeat or confirmatory VL Initial Viral load greater than 1000"

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

ValueSet: OpportunisticInfectionsValueSet
Id: oi-value-set
Title: "Opportunistic Infections"
Description: "Codes used for representing opportunistic infections."
* ^experimental = false
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

ValueSet: PainScaleValueSet
Id: pain-scale-value-set
Title: "Pain Scale"
Description: "Codes used for representing level of pain (pain scale)."
* ^experimental = false
* $LNC#LA131-5 "No pain"
* $LNC#LA15111-0 "Mild pain"
* $LNC#LA135-6 "Moderate pain"
* $LNC#LA15109-4 "Severe pain"

ValueSet: HIVPreventionPlanValueSet
Id: hiv-prevention-plan-value-set
Title: "HIV Prevention Plan"
Description: "Codes used for representing the patient's plan for the prevention of HIV being transmitted to others."
* ^experimental = false
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

ValueSet: PhysicalExamValueSet
Id: physical-examination-value-set
Title: "Physical Examinations"
Description: "Codes used for representing a physical examination."
* ^experimental = false
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
* $ObservationInterpretation#A "Abnormal"
* $ObservationInterpretation#N "Normal"

CodeSystem: CD4AndVLClassificationForTreatmentFailureCodeSystem
Id: cd4-vl-classification-for-treatment-failure-code-system
Title: "Viral Load/CD4 Count Classifications Indicating Treatment Failure"
Description: "Codes used for indicating the classification for the Viral Load/CD4 count treatment failure."
* ^experimental = false
* ^caseSensitive = true
* #Immunologic-Failure "CD4 below 250 cells/mm3 (Immunologic Failure)"
* #Clinical-Failure "CD4 below 100 cells/mm3 (Clinical Failure)"
* #Virologic-Failure "VL above 999 copies/mL (Virologic Failure)"

ValueSet: CD4AndVLClassificationForTreatmentFailureValueSet
Id: cd4-vl-classification-for-treatment-failure-value-set
Title: "Viral Load/CD4 Count Classifications Indicating Treatment Failure"
Description: "Codes used for indicating the classification for the Viral Load/CD4 count treatment failure."
* ^experimental = false
* include codes from system CD4AndVLClassificationForTreatmentFailureCodeSystem

ValueSet: DisclosureStageValueSet
Id: disclosure-stage-value-set
Title: "Disclosure Stage"
Description: "Codes used for representing the stages of disclosure for the patient's current HIV status."
* ^experimental = false
* $SCT#258215001 "Stage 1"
* $SCT#258219007 "Stage 2"
* $SCT#258224005 "Stage 3"

CodeSystem: PartnerAndFBICTCodeSystem
Id: partner-and-fbict-code-system
Title: "Partner and Family-based Index Case Testing (FBICT)"
Description: "Codes used for indicating the patient's status for partner and FBICT."
* ^experimental = false
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
* $LNC#94652-5 "Known exposure date"
* $LNC#LA6577-6 "Negative"
* $LNC#LA29947-1 "Carrier status unknown"
* $LNC#77978-5 "Patient died from illness of interest"

ValueSet: ReasonIndexCaseNotInterviewedValueSet
Id: reason-index-case-not-interviewed-value-set
Title: "Reason Index Case Not Interviewed"
Description: "Codes used for indicating the reason why the index case was not interviewed."
* ^experimental = false
* $LNC#LA46-8 "Other"
* $LNC#81954-0 "Date of death"
* $LNC#LA4014-2 "Eligible but Refused"

CodeSystem: PeriodOfHIVExposureCodeSystem
Id: period-of-hiv-exposure-code-system
Title: "Period of HIV Exposure"
Description: "Codes used for indicating the period when last the individual was exposed to HIV."
* ^experimental = false
* ^caseSensitive = true
* #<3Mths "Less than 3 months"
* #3-12Mths "In 3 to 12 months"
* #>12Mths "Greater than 12 months"

ValueSet: PeriodOfHIVExposureValueSet
Id: period-of-hiv-exposure-value-set
Title: "Period of HIV Exposure"
Description: "Codes used for indicating the period when last the individual was exposed to HIV."
* ^experimental = false
* include codes from system PeriodOfHIVExposureCodeSystem

CodeSystem: PartnerNotificationPlanCodeSystem
Id: partner-notification-plan-code-system
Title: "Partner Notification Plan"
Description: "Codes used for indicating the plan for notifying the partner regarding the index case's HIV status."
* ^experimental = false
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
* include codes from system PartnerNotificationPlanCodeSystem

ValueSet: ReasonPartnerNotNotifiedValueSet
Id: reason-partner-not-notified-value-set
Title: "Reason Partner Not Notified"
Description: "Codes used for indicating the reason why the partner was not notified about the index case's HIV status."
* ^experimental = false
* $LNC#LA46-8 "Other"
* $LNC#LA4389-8 "Refused"
* $LNC#77969-4 "Jurisdiction code"

CodeSystem: IndexCasePartnerQuestionnaireCodeSystem
Id: index-case-partner-questionnaire-code-system
Title: "Index Case Sex Partner Questionnaire"
Description: "Proprietary Codes used in the Index Case Partner Questionnaire."
* ^experimental = false
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
* $LNC#LA46-8 "Other"
* $IndexCasePartnerQuestionnaireCodeSystem#Partner-Unreachable

ValueSet: ReasonNotLinkedToPartnerServicesValueSet
Id: reason-not-linked-to-partner-services-value-set
Title: "Reason Not Linked to Partner Services"
Description: "Codes used for indicating the reason why the partner was not linked to partner services."
* ^experimental = false
* $LNC#LA46-8 "Other"
* $LNC#LA4389-8 "Refused"
* $LNC#LA6624-6 "Referred"

ValueSet: PartnerCaseClosureStatusValueSet
Id: partner-case-closure-status-value-set
Title: "Partner Case Closure Status"
Description: "Codes used for indicating the closure status for partner services."
* ^experimental = false
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
* ^caseSensitive = true
* #Absent-or-unknown "Absent or unknown"

CodeSystem: EncounterServiceTypeCodeSystem
Id: encounter-service-type-code-system
Title: "Proprietary Service Type"
Description: "Codes used for indicating a proprietary encounter service type."
* ^experimental = false
* ^caseSensitive = true
* #arv-therapy "ARV Therapy"

ValueSet: EncounterTypeValueSet
Id: encounter-type-value-set
Title: "Encounter Type"
Description: "Codes used for indicating the type of encounter."
* ^experimental = false
* $SCT#769681006 "First encounter by subject"
* $SCT#390906007 "Follow-up encounter"
* $SCT#1137457009 "Pre-exposure prophylaxis"