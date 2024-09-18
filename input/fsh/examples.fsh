Instance: CurrentServiceProviderExample
InstanceOf: ServiceProvider
Usage: #example
Title: "Organization - Current Facility"
Description: "Current organization providing health related services."
* active = true
* name = "Meshwalkiya Health Center"
* address[+].line[+] = "Meshulekia"
* address[=].city = "Kirkos"
* address[=].state = "Addis Ababa"
* address[=].district = "Kirkos woreda 9"

* identifier[MOHID][+].value = "MOH001"
* identifier[MOHID][=].system = $MOHID

* identifier[HFUID][+].value = "HFUID001"
* identifier[HFUID][=].system = $HFUID

* type[+] = $SCT#257622000
* type[=].text = "Current Healthcare Provider"

Instance: OutreachFacilityExample
InstanceOf: ServiceProvider
Usage: #example
Title: "Organization - Outreach Facility"
Description: "Outreach facility providing health related services."
* active = true
* name = "Meshwalkiya Health Center"
* address[+].line[+] = "Meshulekia"
* address[=].city = "Kirkos"
* address[=].state = "Addis Ababa"
* address[=].district = "Kirkos woreda 9"

* identifier[MOHID][+].value = "MOH001"
* identifier[MOHID][=].system = $MOHID

* identifier[HFUID][+].value = "HFUID001"
* identifier[HFUID][=].system = $HFUID

* type[+] = $SCT#185483006
* type[=].text = "Outreach Facility"

Instance: GeneralPatientExample
InstanceOf: EthPatient
Usage: #example
Title: "Patient - General"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[MRN].value = "MRN12345671"
* identifier[MRN].system = $MRN
//* identifier[MRN].type = $IdentifierTypeCodeSystem#MR
//* identifier[MRN].type.text = "Medical record number"

* identifier[UAN].value = "UAN12345671"
* identifier[UAN].system = $UAN

* identifier[EMR-ID].value = "NID12345671"
* identifier[EMR-ID].system = $EMR_ID

* name[+].given[+] = "Mark"
* name[=].family = "Adams"

* gender = #male
* birthDate = "2000-11-11"
* maritalStatus = $MaritalStatus#M
* address[+].city = "Addis Ababa"
* address[=].line[+] = "123"
* address[=].line[+] = "Tesfaye Street"
* address[=].line[+] = "Bole"
* address[=].district = "Addis Ababa Central District"
* address[=].state = "Addis Ababa"
* address[=].extension[ResidentialType].valueCodeableConcept = $SCT#224804009
* address[=].extension[ResidentialType].valueCodeableConcept.text = "Rural"
* managingOrganization = Reference(CurrentServiceProviderExample)

* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home

* extension[Religion].valueCodeableConcept = $Religion#1023
* extension[Religion].valueCodeableConcept.text = "Muslim"

Instance: PatientWithSexPartnerRelationshipExample
InstanceOf: EthPatient
Usage: #example
Title: "Patient - With Partner Relationship"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[MRN].value = "MRN12345672"
* identifier[MRN].system = $MRN
//* identifier[MRN].type = $IdentifierTypeCodeSystem#MR
//* identifier[MRN].type.text = "Medical record number"

* identifier[UAN].value = "UAN1234562"
* identifier[UAN].system = $UAN

* identifier[EMR-ID].value = "NID12345672"
* identifier[EMR-ID].system = $EMR_ID

* name[+].given[+] = "Mark"
* name[=].family = "Adams"

* gender = #male
* birthDate = "2000-11-11"
* maritalStatus = $MaritalStatus#M
* address[+].city = "Addis Ababa"
* address[=].line[+] = "123"
* address[=].line[+] = "Tesfaye Street"
* address[=].line[+] = "Bole"
* address[=].district = "Addis Ababa Central District"
* address[=].state = "Addis Ababa"
* address[=].extension[ResidentialType].valueCodeableConcept = $SCT#224804009
* address[=].extension[ResidentialType].valueCodeableConcept.text = "Rural"
* managingOrganization = Reference(CurrentServiceProviderExample)
* link.other = Reference(PartnerRelatedPersonExample)
* link.type = #seealso

* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home

* extension[Religion].valueCodeableConcept = $Religion#1023
* extension[Religion].valueCodeableConcept.text = "Muslim"

Instance: GeneralEncounterExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Encounter - Referencing a General Patient"
Description: "Represents the current facility at which the patient is receiving health services."
* class = $EncounterClassCodeSystem#OBSENC
* status = #finished
* identifier[ENCOUNTER-ID].value = "001"
* identifier[ENCOUNTER-ID].system = $ENCOUNTER
* subject = Reference(GeneralPatientExample)
* type[+] = $SCT#390906007
* type[=].text = "Follow-up encounter"
* type[=].extension[VisitType].valueCodeableConcept = $VisitTypeCodeSystem#unscheduled
* period.start = "2012-12-09"
* period.end = "2012-12-09"
* serviceProvider = Reference(CurrentServiceProviderExample)

Instance: EncounterWithEntryPointTBClinicExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Encounter - Referencing a General Patient With Entry From Within the Facility (TB Clinic)."
Description: "Represents the current facility at which the patient is receiving health services."
* class = $EncounterClassCodeSystem#OBSENC
* status = #finished
* identifier[ENCOUNTER-ID].value = "001"
* identifier[ENCOUNTER-ID].system = $ENCOUNTER
* subject = Reference(GeneralPatientExample)
* type[+] = $SCT#390906007
* type[=].text = "Follow-up encounter"
* type[=].extension[VisitType].valueCodeableConcept = $VisitTypeCodeSystem#unscheduled
* period.start = "2012-12-09"
* period.end = "2012-12-09"
* serviceProvider = Reference(CurrentServiceProviderExample)

* location[+].location = Reference(EncounterLocationTBClinicExample)

Instance: EncounterWithEntryPointANCExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Encounter - Referencing a General Patient (Which References RelatedPerson) With Entry From Within the Facility (ANC)."
Description: "Represents the current facility at which the patient is receiving health services."
* class = $EncounterClassCodeSystem#OBSENC
* status = #finished
* identifier[ENCOUNTER-ID].value = "001"
* identifier[ENCOUNTER-ID].system = $ENCOUNTER
* subject = Reference(PatientWithSexPartnerRelationshipExample)
* type[+] = $SCT#390906007
* type[=].text = "Follow-up encounter"
* type[=].extension[VisitType].valueCodeableConcept = $VisitTypeCodeSystem#unscheduled
* period.start = "2012-12-09"
* period.end = "2012-12-09"
* serviceProvider = Reference(CurrentServiceProviderExample)
* location[+].location = Reference(EncounterLocationANCExample)

Instance: ARVDrugDispensationAliveOnARTExample
InstanceOf: ARVDrugDispensation
Usage: #example
Title: "Medication Dispense - ARV Regimen Prescribed For Status \"Alive on ART\""
Description: "Indicates ARV prescribed to a patient who is alive on ART."
* status = #completed
* medicationReference = Reference(ARVMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)

* quantity = $OrderableDrugForm_UNIT#TAB 
* quantity.unit = "TAB"
* quantity.value = 90

* daysSupply = $UCUM_UNIT#d
* daysSupply.unit = "Days"
* daysSupply.value = 90

* authorizingPrescription = Reference(ARVMedicationRequestAliveOnARTExample)
* whenHandedOver = "2012-12-09"

Instance: ARVDrugDispensationARTInitiatedExample
InstanceOf: ARVDrugDispensation
Usage: #example
Title: "Medication Dispense - ARV Regimen Prescribed For Status \"ART Initiated\""
Description: "Indicates ARV prescribed to a patient who initiated on ART."
* status = #completed
* medicationReference = Reference(ARVMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)

* quantity = $OrderableDrugForm_UNIT#TAB 
* quantity.unit = "TAB"
* quantity.value = 90

* daysSupply = $UCUM_UNIT#d
* daysSupply.unit = "Days"
* daysSupply.value = 90

* authorizingPrescription = Reference(ARVMedicationRequestInitiatedARTExample)
* whenHandedOver = "2012-12-09"

Instance: ChildRelatedPersonExample
InstanceOf: EthRelatedPerson
Usage: #example
Title: "RelatedPerson - Child Relation"
Description: "Is used to record the personal information of the person that is related to the patient."
* patient = Reference(GeneralPatientExample)
* relationship[+] = $RoleCodeSystem#CHILD
* relationship[=].text = "Child"

* name[+].given[+] = "Sofia"
* name[=].given[=] = "Mary"
* name[=].family = "Adams"

* gender = #female
* birthDate = "1973-04-12"

Instance: FamilyMemberRelatedPersonExample
InstanceOf: EthRelatedPerson
Usage: #example
Title: "RelatedPerson - Family Member Relation"
Description: "Is used to record the personal information of the person that is related to the patient."
* patient = Reference(GeneralPatientExample)

* relationship[+] = $RoleCodeSystem#FAMMEMB
* relationship[=].text = "Family member"

* name[+].given[+] = "Toby"
* name[=].family = "Adams"

* gender = #male
* birthDate = "1943-04-12"

Instance: PartnerRelatedPersonExample
InstanceOf: EthRelatedPerson
Usage: #example
Title: "RelatedPerson - Sexual Partner"
Description: "Is used to record the personal information of the person that is related to the patient."
* patient = Reference(GeneralPatientExample)

* relationship[+] = $RoleCodeSystem#SIGOTHR
* relationship[=].text = "Partner"

* name[+].given[+] = "Jane"
* name[=].family = "Smith"

* gender = #female
* birthDate = "1982-04-12"

Instance: ReferralOutServiceRequestExample
InstanceOf: ReferralOutServiceRequest
Usage: #example
Title: "Service Request - Request for Referral"
Description: "Service request used to make a request for a referral."
* status = #completed
* intent = #order
* code = $LNC#LP173238-9
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2024-01-25"
* reasonReference = Reference(HIVProgramFinalOutcomeKnownAsConfirmedReferralExample)
* locationReference[+] = Reference(EncounterLocationHIVTestingExample)

Instance: SuppressedViralLoadResultExample
InstanceOf: ViralLoadResultObservation
Usage: #example
Title: "Observation - Suppressed Viral Load Result"
Description: "Represents the patient's viral load result as suppressed."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $SCT#315124004
* code.text = "Human immunodeficiency virus viral load"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueQuantity = $UCUM_UNIT#1/mL
* valueQuantity.value = 900
* valueQuantity.unit = "copies/mL"
* interpretation = $SCT#245780008

Instance: UnsuppressedViralLoadResultExample
InstanceOf: ViralLoadResultObservation
Usage: #example
Title: "Observation - Unsuppressed Viral Load Result"
Description: "Represents the patient's viral load result as unsuppressed followed by enhanced adherence counselling."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $SCT#315124004
* code.text = "Human immunodeficiency virus viral load"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueQuantity = $UCUM_UNIT#1/mL
* valueQuantity.value = 1001
* valueQuantity.unit = "copies/mL"
* interpretation = $SCT#19032002
* hasMember = Reference(EnhancedAdherenceCounsellinProvidedExample)

Instance: FairARVAdherenceExample
InstanceOf: ARVAdherenceObservation
Usage: #example
Title: "Observation - Fair ARV Adherence"
Description: "Indicates that the patient has fair ARV adherence"
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#418633004
* code.text = "Medication adherence"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $ARVAdherence#Fair
* valueCodeableConcept.text = "Fair"
* hasMember = Reference(ARVPoorAdherenceReasonsExample)

Instance: ARVPoorAdherenceReasonsExample
InstanceOf: ARVPoorAdherenceReasonsObservation
Usage: #example
Title: "Observation - Reasons for ARV Adherence"
Description: "Represents the reasons for poor ARV Adherence"
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#397695000
* code.text = "Poor ARV adherence"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)

* valueCodeableConcept.extension[PoorAdherenceReasons][+].valueCodeableConcept = $LNC#LA10576-9
* valueCodeableConcept.extension[PoorAdherenceReasons][=].valueCodeableConcept.text = "Depression"

* valueCodeableConcept.extension[PoorAdherenceReasons][+].valueCodeableConcept = $SCT#397695000
* valueCodeableConcept.extension[PoorAdherenceReasons][=].valueCodeableConcept.text = "Sharing with others"

* valueCodeableConcept.extension[PoorAdherenceReasons][+].valueCodeableConcept = $LNC#LP173580-4
* valueCodeableConcept.extension[PoorAdherenceReasons][=].valueCodeableConcept.text = "Using alcohol"

Instance: GoodARVAdherenceExample
InstanceOf: ARVAdherenceObservation
Usage: #example
Title: "Observation - Good ARV Adherence"
Description: "Indicates that the patient has Good ARV adherence"
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#418633004
* code.text = "Medication adherence"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $ARVAdherence#Good
* valueCodeableConcept.text = "Good"

Instance: InitiatedArvTreatmentMedicationStatementExample
InstanceOf: ARTTreatmentMedicationStatement
Usage: #example
Title: "Medication Statement - Initiated ARV Treatment"
Description: "Records the ARV Treatment details for the patient initiated on ART."
* status = #active
* medicationReference = Reference(ARVMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* effectivePeriod.start = "2009-11-24"
* reasonReference = Reference(InitiatedArtARTFollowupStatusExample)

Instance: FollowUpArvTreatmentMedicationStatementExample
InstanceOf: ARTTreatmentMedicationStatement
Usage: #example
Title: "Medication Statement - ARV Treatment Follow Up"
Description: "Records the ARV Treatment details for the patient during an ART follow-up."
* status = #active
* medicationReference = Reference(ARVMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* effectivePeriod.start = "2009-11-24"
* reasonReference = Reference(AliveOnArtARTFollowupStatusExample)

Instance: CotrimoxazoleMedicationStatementExample
InstanceOf: OIMedicationStatement
Usage: #example
Title: "Medication Statement - Cotrimoxazole"
Description: "Records the Cotrimoxazole details for the patient."
* status = #active
* medicationReference = Reference(CotrimoxazoleMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* effectivePeriod.start = "2018-05-12"
* effectivePeriod.end = "2018-08-13"
* reasonReference = Reference(CotrimoxazolePreventiveTherapyStartedExample)

Instance: FluconazoleMedicationStatementExample
InstanceOf: OIMedicationStatement
Usage: #example
Title: "Medication Statement - Fluconazole"
Description: "Records the Fluconazole details for the patient."
* status = #active
* medicationReference = Reference(FluconazoleMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* effectivePeriod.start = "2018-05-12"
* effectivePeriod.end = "2018-08-13"
* reasonReference = Reference(FluconazolePreventiveTherapyStartedExample)

Instance: PregnancyStatusAndFPMQuestionnaireResponseExample
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Pregnancy Status and Family Planning Method (FPM)"
Description: "A questionaire response that documents the answers to the pregnancy status and FPM questions."
* questionnaire = Canonical(PregnancyStatusAndFPMQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Is Pregnant, valueCoding, $YesNoCodeSystem#false)
* insert QuestionResponse(1.2, Wants to be pregnant, valueCoding, $YesNoCodeSystem#true)
* insert QuestionResponse(1.3, Is breastfeeding, valueCoding, $YesNoCodeSystem#false)
* insert QuestionResponse(1.4, Last Menstrual date, valueDate, "2024-06-18")
* insert QuestionResponse(1.5, Estimated Delivery Date, valueDate, "2025-05-25")
* insert QuestionResponse(1.6, Family Planning Method, valueCoding, $LNC#LA14543-5)
* item[=]
  * answer[+].valueCoding = $LNC#LA27907-7

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: ARVMedicationRequestAliveOnARTExample
InstanceOf: ARVMedicationRequest
Usage: #example
Title: "Medication Request - ARV Prescribed to a Patient Who is Alive On ART"
Description: "This is to record requests for medication that are prescribed to a patient (Alive on ART)."
* identifier[RequestID].value = "prescription-12345"
* identifier[RequestID].system = $PrescriptionID
//* identifier[RequestID].type = $IdentifierTypeCodeSystem#FILL
//* identifier[RequestID].type.text = "Prescription identifier"
* authoredOn = "2023-10-11T17:21:33-08:00"
* status = #completed
* intent = #order
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* medicationReference = Reference(ARVMedicationExample)
* dispenseRequest.quantity = $OrderableDrugForm_UNIT#TAB 
* dispenseRequest.quantity.unit = "TAB"
* dispenseRequest.quantity.value = 90
* reasonReference = Reference(AliveOnArtARTFollowupStatusExample)
* basedOn = Reference(ARTAliveOnARTFollowUpCareplanExample)

Instance: ARVMedicationRequestInitiatedARTExample
InstanceOf: ARVMedicationRequest
Usage: #example
Title: "Medication Request - ARV Prescribed to a Patient Who Initiated ART"
Description: "This is to record requests for medication that are prescribed to a patient (Initiated on ART)."
* identifier[RequestID].value = "prescription-12345"
* identifier[RequestID].system = $PrescriptionID
//* identifier[RequestID].type = $IdentifierTypeCodeSystem#FILL
//* identifier[RequestID].type.text = "Prescription identifier"
* authoredOn = "2023-10-11T17:21:33-08:00"
* status = #completed
* intent = #order
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* medicationReference = Reference(ARVMedicationExample)
* dispenseRequest.quantity = $OrderableDrugForm_UNIT#TAB 
* dispenseRequest.quantity.unit = "TAB"
* dispenseRequest.quantity.value = 90
* reasonReference = Reference(InitiatedArtARTFollowupStatusExample)
* basedOn = Reference(ARTInitiatedARTFollowUpCareplanExample)

Instance: TBPositiveScreeningExample
InstanceOf: TBScreeningResultObservation
Usage: #example
Title: "Observation - TB Positive Screening"
Description: "Indicates that the patient has a positive TB screening result."
* status = #final
* code = $SCT#429599001
* code.text = "Tuberculosis screening status"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* category = $OBSERVATION_CATEGORY#exam
* valueCodeableConcept = $LNC#LA6576-8
* valueCodeableConcept.text = "Positive"

Instance: TBNegativeScreeningExample
InstanceOf: TBScreeningResultObservation
Usage: #example
Title: "Observation - TB Negative Screening"
Description: "Indicates that the patient has a negative TB screening result."
* status = #final
* code = $SCT#429599001
* code.text = "Tuberculosis screening status"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* category = $OBSERVATION_CATEGORY#exam
* valueCodeableConcept = $LNC#LA6577-6
* valueCodeableConcept.text = "Negative"

Instance: TBDiagnosticTestResultExample
InstanceOf: TBDiagnosticTestResultObservation
Usage: #example
Title: "Observation - TB Diagnostic Test Result"
Description: "Documents the patient's diagnostic test result."
* status = #final
* code = $LNC#71773-6
* code.text = "Mycobacterium tuberculosis stimulated gamma interferon [Interpretation] in Blood Qualitative"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* category = $OBSERVATION_CATEGORY#laboratory
* valueCodeableConcept = $LNC#LA6576-8
* valueCodeableConcept.text = "Positive"
* specimen = Reference(TBScreeningSpecimenExample)

Instance: ScreenedForTBExample
InstanceOf: ScreenedForTBObservation
Usage: #example
Title: "Observation - Screened For TB (TB Positive)"
Description: "Indicates that the patient was screened for TB and the screening result is positive."
* status = #final
* code = $SCT#171126009
* code.text = "Tuberculosis screening status"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#true
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-10-21"
* hasMember[+] = Reference(TBPositiveScreeningExample)

Instance: NotScreenedForTBExample
InstanceOf: ScreenedForTBObservation
Usage: #example
Title: "Observation - Not Screened For TB"
Description: "Indicates that the patient was not screened for TB."
* status = #final
* code = $SCT#171126009
* code.text = "Tuberculosis screening status"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#false

Instance: TBScreeningSpecimenExample
InstanceOf: TBScreeningSpecimen
Usage: #example
Title: "Specimen - TB Screening"
Description: "The specimen that will be used in a laboratory examination for TB."
* status = #available
* type = $SPECIMEN_TYPE#SER
* subject = Reference(GeneralPatientExample)
* request = Reference(TBScreeningServiceRequestExample)

Instance: TBScreeningServiceRequestExample
InstanceOf: TBScreeningServiceRequest
Usage: #example
Title: "Service Request - TB Screening"
Description: "Service request used to examine the specimen taken during TB screening."
* status = #completed
* intent = #order
* code = $TBScreeningDiagnosticTest#Gene-xpert-MTB/RIF-assay-with-other-testing
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* reasonReference = Reference(TBPositiveScreeningExample)

Instance: ActiveTBExample
InstanceOf: ActiveTBObservation
Usage: #example
Title: "Observation - Active TB"
Description: "Documents the whether the patient is TB Active."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#LP89688-3
* code.text = "Active TB diagnosis"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#427099000
* valueCodeableConcept.text = "Active tuberculosis"
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-10-21"
* derivedFrom = Reference(TBDiagnosticTestResultExample)

Instance: EligibleForTPTExample
InstanceOf: EligibleForTPTObservation
Usage: #example
Title: "Observation - Eligible For TPT"
Description: "Documents whether the patient is eligibile for TB Prevention Therapy (TPT)."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $TPTEligibilityStatusCodeSystem#Eligible-For-TPT
* code.text = "Is Eligible for TPT"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#true
* derivedFrom[+] = Reference(TBNegativeScreeningExample)

Instance: NotEligibleForTPTExample
InstanceOf: EligibleForTPTObservation
Usage: #example
Title: "Observation - Not Eligible For TPT"
Description: "Documents whether the patient is eligibile for TB Prevention Therapy (TPT)."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $TPTEligibilityStatusCodeSystem#Eligible-For-TPT
* code.text = "Is Eligible for TPT"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#false
* derivedFrom[+] = Reference(TBNegativeScreeningExample)
* hasMember = Reference(ReasonNotEligibleForTPTExample)

Instance: ReasonNotEligibleForTPTExample
InstanceOf: ReasonNotEligibleForTPTObservation
Usage: #example
Title: "Observation - Reason Not Eligibile For TPT"
Description: "Documents the reason why the patient is not eligibile for TB Prevention Therapy (TPT)."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $TPTEligibilityStatusCodeSystem#TPT-Reason-Not-Eligible
* code.text = "Reason Not Eligible for TPT"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#473151000
* valueCodeableConcept.text = "History of tuberculosis drug therapy"
* derivedFrom[+] = Reference(ScreenedForTBExample)
* derivedFrom[+] = Reference(TBPositiveScreeningExample)

Instance: ARTAliveOnARTFollowUpCareplanExample
InstanceOf: ARTFollowUpCareplan
Usage: #example
Title: "ART Follow-up Care Plan - Alive on ART"
Description: "Used to record the ART treatment and care details for the patient who is alive on ART."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $LNC#LP66375-4
* category[=].text = "ART"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].extension[NextVisitDate].valueDateTime = "2024-03-20"
* activity[=].reference = Reference(ARVMedicationRequestAliveOnARTExample)

Instance: ARTInitiatedARTFollowUpCareplanExample
InstanceOf: ARTFollowUpCareplan
Usage: #example
Title: "ART Follow-up Care Plan - Initiated ART"
Description: "Used to record the ART treatment and care details for the patient who initiated ART."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $LNC#LP66375-4
* category[=].text = "ART"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].extension[NextVisitDate].valueDateTime = "2024-03-20"
* activity[=].reference = Reference(ARVMedicationRequestInitiatedARTExample)
* activity[=].extension[Adherence].valueReference = Reference(FairARVAdherenceExample)

Instance: ARTAliveOnARTFollowUpCareplanRegimenSwitchedExample
InstanceOf: ARTFollowUpCareplan
Usage: #example
Title: "ART Follow-up Care Plan - Alive on ART and Regimen Switched"
Description: "Used to record the ART treatment and care details for the patient who is alive on ART and received a regimen switch."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $LNC#LP66375-4
* category[=].text = "ART"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].extension[NextVisitDate].valueDateTime = "2024-03-20"
* activity[=].reference = Reference(ARVMedicationRequestForRegimenSwitchExample)

Instance: ARTEligibleNoReasonsExample
InstanceOf: ARTEligibilityStatus
Usage: #example
Title: "Observation - Eligible For ART (Without Reasons For Eligibility)"
Description: "Indicates that the patient is eligibile for ART"
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#171121004
* code.text = "Human immunodeficiency virus screening"
* valueCodeableConcept = $ARTEligibilityStatusCodeSystem#Eligible-and-Ready
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)

Instance: ARTEligibleWithReasonsExample
InstanceOf: ARTEligibilityStatus
Usage: #example
Title: "Observation - Eligible For ART (With Reasons For Eligibility)"
Description: "Indicates that the patient is eligibile for ART"
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#171121004
* code.text = "Human immunodeficiency virus screening"
* valueCodeableConcept = $ARTEligibilityStatusCodeSystem#Eligible-and-Ready
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)
* hasMember = Reference(ReasonWhyEligibleForARTExample)

Instance: ReasonWhyEligibleForARTExample
InstanceOf: ReasonWhyEligibleForART
Usage: #example
Title: "Observation - Reason Why Eligible for ART"
Description: "Represents the reasons why a patient is considered eligibile for ART."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#45232-6
* code.text = "Reason medically eligible for HIV treatment"
* valueCodeableConcept.extension[WhyEligible][+].valueCodeableConcept = $ReasonForARTEligibilityCodeSystem#Clinical-Staging
* valueCodeableConcept.extension[WhyEligible][=].valueCodeableConcept.text = "Clinical Staging"
* valueCodeableConcept.extension[WhyEligible][+].valueCodeableConcept = $ReasonForARTEligibilityCodeSystem#Test-and-Treat
* valueCodeableConcept.extension[WhyEligible][=].valueCodeableConcept.text = "Test and treat"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)

Instance: ARTNotEligibleExample
InstanceOf: ARTEligibilityStatus
Usage: #example
Title: "Observation - Not Eligible For ART"
Description: "Indicates that the patient is not eligibile for ART"
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#171121004
* code.text = "Human immunodeficiency virus screening"
* valueCodeableConcept = $ARTEligibilityStatusCodeSystem#Not-Eligible
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)

Instance: RapidHIVTestExample
InstanceOf: ConfirmedHIVPositive
Usage: #example
Title: "Observation - Confirmed HIV positive After Rapid Testing"
Description: "Represents the patient's rapid HIV test result."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#89365-1
* code.text = "HIV Rapid test"
* valueCodeableConcept = $LNC#LA24959-1
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: PCRHIVTestExample
InstanceOf: PCRHIVTestServiceRequest
Usage: #example
Title: "Service Request - PCR HIV Test"
Description: "Represents the service request for PCR HIV testing."
* status = #active
* intent = #plan
* code = $LNC#9836-8
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2024-01-25"

Instance:  ConfirmedHIVPositiveExample
InstanceOf:  ConfirmedHIVPositive
Usage: #example
Title: "Observation - Confirmed HIV positive After PCR Testing"
Description: "Represents the patient's PCR HIV test result."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#9836-8
* code.text = "HIV PCR test"
* valueCodeableConcept = $LNC#LA24959-1
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* basedOn = Reference(PCRHIVTestExample)

Instance: WeightExample
InstanceOf: Weight
Usage: #example
Title: "Observation - Weight"
Description: "Represents the patient's weight."
* status = #final
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#29463-7
* code.text = "Body Weight"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 110
* valueQuantity.unit = "kg"
* valueQuantity = $UCUM_UNIT#kg
* performer = Reference(CurrentServiceProviderExample)

Instance: HeightExample
InstanceOf: Height
Usage: #example
Title: "Observation - Height"
Description: "Represents the patient's height."
* status = #final
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#8302-2
* code.text = "Body Height"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 185
* valueQuantity.unit = "cm"
* valueQuantity = $UCUM_UNIT#cm
* performer = Reference(CurrentServiceProviderExample)

Instance: BMIExample
InstanceOf: BMI
Usage: #example
Title: "Observation - BMI"
Description: "Represents the patient's BMI."
* status = #final
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#39156-5
* code.text = "Body mass index (BMI)"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 16.2
* valueQuantity.unit = "kg/m2"
* valueQuantity = $UCUM_UNIT#kg/m2
* performer = Reference(CurrentServiceProviderExample)
* derivedFrom[+] = Reference(WeightExample)
* derivedFrom[+] = Reference(HeightExample)

Instance: GeneralPractitionerExample
InstanceOf: GeneralPractitioner
Usage: #example
Title: "Practitioner - General Practitioner"
Description: 
"Represents the practitioners who participated in the observation."
* name[+].prefix[+] = "Dr"
* name[=].given[+] = "Tom"
* name[=].given[+] = "Junes"
* name[=].family = "Smith"
* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home

Instance: NutritionalStatusExample
InstanceOf: NutritionalStatus
Usage: #example
Title: "Nutritional Status"
Description: "Represents the patient's Nutritional Status."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#101819-1
* code.text = "Nutritional Status"
* valueCodeableConcept = $SCT#255604002
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: NutritionalScreeningResultExample
InstanceOf: NutritionalScreeningResult
Usage: #example
Title: "Observation - Nutritional Screening Result"
Description: "Represents the patient's Nutritional Screening Result."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#39201-9
* code.text = "Nutritional Screening Result"
* valueCodeableConcept = $NutritionalScreeningResultCodeSystem#Undernourished
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: NutritionalSupplimentsProvidedExample
InstanceOf: NutritionalSupplimentsProvided
Usage: #example
Title: "Observation - Nutritional Suppliments Provided"
Description: "Represents the patient's Nutritional Suppliments Provided."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#373453009
* code.text = "Nutritional Suppliments Provided"
* valueCodeableConcept = $NutritionalSupplimentsProvidedCodeSystem#RUSF
* valueCodeableConcept.text = "RUSF"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* derivedFrom = Reference(TherapeuticSupplementaryFoodExample)

Instance: EstimatedDeliveryDateExample
InstanceOf:  EstimatedDeliveryDate
Usage: #example
Title: "Observation - Estimated Delivery Date"
Description: "Represents the patient's Estimated Delivery Date."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#11778-8
* code.text = "Estimated Delivery Date"
* valueDateTime = "2024-01-25"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: LastMenstrualPeriodExample
InstanceOf:  LastMenstrualPeriod
Usage: #example
Title: "Observation - Last Menstrual Period"
Description: "Represents the patient's Last Menstrual Period."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#8665-2
* code.text = "Last Menstrual Period"
* valueDateTime = "2024-01-25"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: FamilyPlanningMethodExample
InstanceOf: FamilyPlanningMethod
Usage: #example
Title: "Observation - Patient Family Planning Method"
Description: "Represents the patient's Family Planning Method."
* status = #final
* category = $OBSERVATION_CATEGORY#social-history
* code = $SCT#243816001
* code.text = "Family Planning Method"
* valueCodeableConcept.extension[Method][+].valueCodeableConcept = $LNC#LA14543-5
* valueCodeableConcept.extension[Method][+].valueCodeableConcept = $LNC#LA27907-7
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: ReferredForPMTCTServiceRequestExample
InstanceOf: ReferredForPMTCTServiceRequest
Usage: #example
Title: "Service Request - Referred to PMTCT"
Description: "Represents a service request for the patient's referral to PMTCT."
* status = #completed
* intent = #order
* code = $LNC#LP173238-9
* code.text = "Patient referral"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2023-10-06T13:28:17-05:00"
* orderDetail[PMTCT] = $LNC#LA6505-7
* requester = Reference(GeneralPractitionerExample)

Instance: TherapeuticSupplementaryFoodExample
InstanceOf: TherapeuticSupplementaryFood
Usage: #example
Title: "Observation - Therapeutic/Supplementary Food"
Description: "Represents the patient's Therapeutic/Supplementary Food."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#41829006
* code.text = "Therapeutic/Supplementary Food"
* valueCodeableConcept = $YesNoCodeSystem#true
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* derivedFrom = Reference(NutritionalScreeningResultExample)

Instance: EdemaExample
InstanceOf: Edema
Usage: #example
Title: "Observation - Patient Edema"
Description: "Indicates the presence of Edema."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#44966-0
* code.text = "Edema"
* valueCodeableConcept = $LNC#72071-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: MUACExample
InstanceOf: MUAC
Usage: #example
Title: "Observation - Patient MUAC"
Description: "Measuring thae patient's mid upper arm circumference."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#284473002
* code.text = "MUAC"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 5
* valueQuantity.unit = "cm"
* valueQuantity = $UCUM_UNIT#cm
* performer = Reference(CurrentServiceProviderExample)

Instance: HeadCircumferenceExample
InstanceOf: HeadCircumference
Usage: #example
Title: "Observation - Head Circumference"
Description: "Represents the patient's Head Circumference."
* status = #final
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#9843-4
* code.text = "Head Circumference"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 15
* valueQuantity.unit = "cm"
* valueQuantity = $UCUM_UNIT#cm
* performer = Reference(CurrentServiceProviderExample)

Instance: ChildrenDevelopmentalMilestoneExample
InstanceOf: ChildrenDevelopmentalMilestone
Usage: #example
Title: "Observation - Children Developmental Milestone"
Description: "Represents the child's developmental milestone."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#364673002
* code.text = "Developmental Milestone for Children"
* valueCodeableConcept = $ChildrenDevelopmentMilestoneCodeSystem#Regular
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: PatientFunctionalStatusExample
InstanceOf: PatientFunctionalStatus
Usage: #example
Title: "Observation - Patient Functional Status"
Description: "Represents the patient's functional status."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#75276-6
* code.text = "Functional Status"
* valueCodeableConcept = $LNC#LA21285-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: PatientWHOStageExample
InstanceOf: PatientWHOStage
Usage: #example
Title: "Observation - Patient WHO Stage"
Description: "Represents the patient's WHO stage."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#45233-4
* code.text = "WHO Stage"
* valueCodeableConcept = $WHOStageCodeSystem#Stage-One
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: PregnancyStatusNotPregnantExample
InstanceOf: PregnancyStatus
Usage: #example
Title: "Pregnancy Status Reported - Not Pregnant"
Description: "Represents whether the patient is currently pregnant."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#11449-6
* code.text = "Pregnancy status"
* valueCodeableConcept = $YesNoCodeSystem#false
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: PregnancyStatusPregnantExample
InstanceOf: PregnancyStatus
Usage: #example
Title: "Observation - Pregnancy Status"
Description: "Represents whether the patient is currently pregnant."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#11449-6
* code.text = "Pregnancy status"
* valueCodeableConcept = $YesNoCodeSystem#true
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* basedOn = Reference(ReferredForPMTCTServiceRequestExample)

Instance: FuturePregnancyPlansExample
InstanceOf: FuturePregnancyPlans
Usage: #example
Title: "Observation - Future Pregnancy Plans"
Description: "Represents whether the patient plans to be pregnant in the future."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#86645-9
* code.text = "Future pregnancy plans"
* valueCodeableConcept = $YesNoCodeSystem#false
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: BreastfeedingStatusExample
InstanceOf: BreastfeedingStatus
Usage: #example
Title: "Observation Breastfeeding Status"
Description: "Represents whether the patient is currently breatfeeding."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#63895-7
* code.text = "Breastfeeding status"
* valueCodeableConcept = $YesNoCodeSystem#false
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: EncounterLocationOPD1Example
InstanceOf: EncounterLocation
Usage: #example
Title: "Location - OPD1"
Description: "Physical location type where health services are provided."
* identifier[LocationID][+].value = "OPD001"
* identifier[LocationID][=].system = $EncounterLocationID
* name = "OPD1"
* type = $LNC#LA10053-9
* type.text = "OPD1 Services"

Instance: EncounterLocationTBClinicExample
InstanceOf: EncounterLocation
Usage: #example
Title: "Location - TB Clinic"
Description: "Physical location type where health services are provided."
* identifier[LocationID][+].value = "TB001"
* identifier[LocationID][=].system = $EncounterLocationID
* name = "TB Outpatient"
* type = $LNC#LA6509-9
* type.text = "TB Services"

Instance: EncounterLocationPediatricsExample
InstanceOf: EncounterLocation
Usage: #example
Title: "Location - Pediatrics"
Description: "Physical location type where health services are provided."
* identifier[LocationID][+].value = "PediOPD001"
* identifier[LocationID][=].system = $EncounterLocationID
* name = "Pedi OPD1"
* type = $LNC#LA7197-2
* type.text = "Pedi Services"

Instance: EncounterLocationANCExample
InstanceOf: EncounterLocation
Usage: #example
Title: "Location - ANC"
Description: "Physical location type where health services are provided."
* identifier[LocationID][+].value = "ANC0001"
* identifier[LocationID][=].system = $EncounterLocationID
* name = "ANC"
* type = $LNC#LP96947-4
* type.text = "ANC"

Instance: EncounterLocationHIVTestingExample
InstanceOf: EncounterLocation
Usage: #example
Title: "Location - HIV Services"
Description: "Physical location type where health services are provided."
* identifier[LocationID][+].value = "HTS0001"
* identifier[LocationID][=].system = $EncounterLocationID
* name = "HIV Clinic"
* type = $LNC#LA31960-0
* type.text = "HIV Services"
* managingOrganization = Reference(OutreachFacilityExample)

Instance: EntryFromOutsideTargetFacilityEncounterExample
InstanceOf: EntryFromOutsideTargetFacilityEncounter
Usage: #example
Title: "Encounter - Patient Coming From Another Facility"
Description: "Represents the other facility where the patient did receive health services and is now continuing care at the current facility."
* class = $EncounterTypeEntryOutsideFacility#ReferToCurrentFacilityEncounter
* status = #finished
* serviceProvider = Reference(OutreachFacilityExample)
* partOf = Reference(GeneralEncounterExample)

Instance: SexualPartnerRelatedPersonBecomesPatientExample
InstanceOf: EthPatient
Usage: #example
Title: "Patient - Sexual Partner Related to the Index Case is Registered as a Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[MRN].value = "MRN12345673"
* identifier[MRN].system = $MRN
//* identifier[MRN].type = $IdentifierTypeCodeSystem#MR
//* identifier[MRN].type.text = "Medical record number"

* identifier[UAN].value = "UAN12345673"
* identifier[UAN].system = $UAN

* identifier[EMR-ID].value = "NID12345673"
* identifier[EMR-ID].system = $EMR_ID

* name[+].given[+] = "Jane"
* name[=].family = "Smith"

* gender = #female
* birthDate = "1982-04-12"

* address[+].city = "Addis Ababa"
* address[=].line[+] = "123"
* address[=].line[+] = "Tesfaye Street"
* address[=].line[+] = "Bole"
* address[=].district = "Addis Ababa Central District"
* address[=].state = "Addis Ababa"

* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home

* managingOrganization = Reference(CurrentServiceProviderExample)
* link.other = Reference(PartnerRelatedPersonExample)
* link.type = #replaces

Instance: DifferentiatedServiceDeliveryFullExample
InstanceOf: DifferentiatedServiceDelivery
Usage: #example
Title: "Observation - Full DSD Assessment (All Details)"
Description: "Represents the DSD details."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $DSDAssessment#DSD-Assessment
* code.text = "Differentiated Service Delivery - Assessment"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* valueDateTime = "2024-01-10"
* extension[DSDAssessmentDetails].extension[Status].valueCodeableConcept = $LNC#LA14122-8
* extension[DSDAssessmentDetails].extension[Category].valueCodeableConcept = $DSDCategory#3MMD
* extension[DSDAssessmentDetails].extension[Category].valueCodeableConcept.text = "3MMD"
* extension[DSDAssessmentDetails].extension[CategoryChangedOnAssessmentDate].valueCodeableConcept = $YesNoCodeSystem#true
* extension[DSDAssessmentDetails].extension[CategoryChangeReason].valueCodeableConcept = $LNC#45237-5
* extension[DSDAssessmentDetails].extension[CategoryChangeReason].valueCodeableConcept.text = "Transfer out"

Instance: DifferentiatedServiceDeliveryStatusAndCategoryExample
InstanceOf: DifferentiatedServiceDelivery
Usage: #example
Title: "Observation - DSD Assessment (Status and Category only)"
Description: "Represents the DSD details."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $DSDAssessment#DSD-Assessment
* code.text = "Differentiated Service Delivery - Assessment"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* valueDateTime = "2024-01-10"
* extension[DSDAssessmentDetails].extension[Status].valueCodeableConcept = $LNC#LA14122-8
* extension[DSDAssessmentDetails].extension[Category].valueCodeableConcept = $DSDCategory#3MMD
* extension[DSDAssessmentDetails].extension[Category].valueCodeableConcept.text = "3MMD"

Instance: CervicalCancerScreeningCounsellingGivenExample
InstanceOf: CervicalCancerScreeningCounsellingStatus
Usage: #example
Title: "Observation - Counseled For Cervical Cancer Screening"
Description: "The patient was counselled for cervical cancer."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#409063005
* code.text = "Cervical cancer counselling given"
* valueCodeableConcept = $YesNoCodeSystem#true
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: CervicalCancerScreeningCounsellingNotGivenExample
InstanceOf: CervicalCancerScreeningCounsellingStatus
Usage: #example
Title: "Observation - Not Counseled For Cervical Cancer Screening"
Description: "The patient was not counselled for cervical cancer."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#409063005
* code.text = "Cervical cancer counselling not given"
* valueCodeableConcept = $YesNoCodeSystem#false
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: CervicalCancerScreeningAcceptedExample
InstanceOf: CervicalCancerScreeningAcceptedStatus
Usage: #example
Title: "Observation - Cervical Cancer Screening Accepted"
Description: "The patient accepted screening for cervical cancer."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#171153008
* code.text = "Cervical cancer screening acepted"
* valueCodeableConcept = $YesNoCodeSystem#true
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* derivedFrom = Reference(CervicalCancerScreeningCounsellingGivenExample)

Instance: CervicalCancerScreeningNotAcceptedExample
InstanceOf: CervicalCancerScreeningAcceptedStatus
Usage: #example
Title: "Observation - Cervical Cancer Screening Not Accepted"
Description: "The patient did not accept screening for cervical cancer."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#171153008
* code.text = "Cervical cancer screening not acepted"
* valueCodeableConcept = $YesNoCodeSystem#false
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* derivedFrom = Reference(CervicalCancerScreeningCounsellingGivenExample)

Instance: CervicalCancerScreeningNotDoneExample
InstanceOf: CervicalCancerScreeningStatus
Usage: #example
Title: "Observation - Cervical Cancer Screening Not Done"
Description: "Indicates that the patient was not screened for cervical cancer."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#243877001
* code.text = "Cervical cancer screening not done"
* valueCodeableConcept = $SCT#4461000175108
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* derivedFrom = Reference(CervicalCancerScreeningAcceptedExample)

Instance: CervicalCancerScreeningDoneExample
InstanceOf: CervicalCancerScreeningStatus
Usage: #example
Title: "Observation - Cervical Cancer Screening Done"
Description: "Indicates that the patient was screened for cervical cancer."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#243877001
* code.text = "Cervical cancer screening done"
* valueCodeableConcept = $SCT#1148678002
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* derivedFrom = Reference(CervicalCancerScreeningAcceptedExample)
* hasMember[ScreeningType] = Reference(CervicalCancerScreeningTypeExample)
* hasMember[ScreeningMethod] = Reference(CervicalCancerScreeningMethodExample)
* hasMember[ScreeningResult] = Reference(CervicalCancerHPVPositiveScreeningResultExample)

Instance: CervicalCancerScreeningTypeExample
InstanceOf: CervicalCancerScreeningType
Usage: #example
Title: "Observation - Cervical Cancer Screening Type"
Description: "This is used to record the patient's cervical cancer screening type."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#413744002
* code.text = "Cancer screening follow up"
* valueCodeableConcept = $LNC#LP72364-0
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: CervicalCancerScreeningMethodExample
InstanceOf: CervicalCancerScreeningMethod
Usage: #example
Title: "Observation - Cervical Cancer Screening HPV Method"
Description: "This is used to record the patient's cervical cancer screening method as HPV."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#171149006
* code.text = "Cancer screening method"
* valueCodeableConcept = $CERVICAL_CANCER_SCREENING_METHOD#hpv-dna-test
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* basedOn = Reference(CervicalCancerScreeningServiceRequestForHPVExample)

Instance: CervicalCancerHPVPositiveScreeningResultExample
InstanceOf: CervicalCancerScreeningResult
Usage: #example
Title: "Observation - Cervical Cancer Positive Screening Result (HPV)"
Description: "Indicates that the patient has a positive screening for HPV."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#21864-4
* code.text = "HPV positive screening"
* valueCodeableConcept = $CERVICAL_CANCER_HPV_SCREENING_RESULTS#hpv-positive
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* basedOn = Reference(CervicalCancerCarePlanHPVWithTreatmentRequestExample)

Instance: CervicalCancerVIAPositiveScreeningResultExample
InstanceOf: CervicalCancerScreeningResult
Usage: #example
Title: "Observation - Cervical Cancer Positive Screening Result (VIA)"
Description: "Indicates that the patient has a positive screening for VIA."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#21864-4
* code.text = "VIA positive screening"
* valueCodeableConcept = $CERVICAL_CANCER_VIA_SCREENING_RESULTS#via-positive-cryo-thermo-coagulation-eligible
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* basedOn = Reference(CervicalCancerCarePlanVIAWithTreatmentRequestExample)

Instance: CervicalCancerHPVNegativeScreeningResultExample
InstanceOf: CervicalCancerScreeningResult
Usage: #example
Title: "Observation - Cervical Cancer Negative Screening Result (HPV)"
Description: "Indicates that the patient has a negative screening for HPV."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#21864-4
* code.text = "HPV negative screening"
* valueCodeableConcept = $CERVICAL_CANCER_HPV_SCREENING_RESULTS#hpv-negative
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: CervicalCancerVIANegativeScreeningResultExample
InstanceOf: CervicalCancerScreeningResult
Usage: #example
Title: "Observation - Cervical Cancer Negative Screening Result (VIA)"
Description: "Indicates that the patient has a negative screening for VIA."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#21864-4
* code.text = "VIA negative screening"
* valueCodeableConcept = $CERVICAL_CANCER_VIA_SCREENING_RESULTS#via-negative
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: TargetPopulationExample
InstanceOf: TargetPopulation
Usage: #example
Title: "Observation - Target Population"
Description: "Represents the patient's targeted population."
* status = #final
* category = $OBSERVATION_CATEGORY#social-history
* code = $SCT#385436007
* code.text = "Target population"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* valueCodeableConcept = $TargetPopulation#General-Population

Instance: HighestEducationExample
InstanceOf: HighestEducation
Usage: #example
Title: "Observation - Highest Education"
Description: "Represents the patient's highest education."
* status = #final
* category = $OBSERVATION_CATEGORY#social-history
* code = $LNC#82589-3
* code.text = "Highest level of education"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* valueCodeableConcept = $LNC#LA15568-1
* valueCodeableConcept.text = "Graduated from a college or university"

Instance: PatientOccupationExample
InstanceOf: PatientOccupation
Usage: #example
Title: "Observation - Patient Occupation"
Description: "Represents the patient's current occupation."
* status = #final
* category = $OBSERVATION_CATEGORY#social-history
* code = $LNC#85658-3
* code.text = "Occupation"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* valueCodeableConcept = $Occupation#Accountants
* valueCodeableConcept.text = "Accountants"

Instance: ARVRegimenSwitchExample
InstanceOf: ARVRegimenChange
Usage: #example
Title: "Observation - ARV Regimen Switched"
Description: "This is used to capture the ARV regimen switch details."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#182838006
* code.text = "ARV regimen change"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $ARVRegimenChangeCategory#Switched
* hasMember[ChangeCategoryType][+] = Reference(ARVRegimenChangeCategoryTypeSwitchExample)

Instance: ARVRegimenSwitchWithChangeReasonReferenceExample
InstanceOf: ARVRegimenChange
Usage: #example
Title: "Observation - ARV Regimen Switched (incl. change reason)"
Description: "This is used to capture the ARV regimen switch details."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#182838006
* code.text = "ARV regimen change"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $ARVRegimenChangeCategory#Switched
* hasMember[ChangeReason][+] = Reference(ARVRegimenChangeReasonImmunologicFailureExample)
* hasMember[ChangeCategoryType][+] = Reference(ARVRegimenChangeCategoryTypeSwitchExample)

Instance: ARVRegimenSubstituteExample
InstanceOf: ARVRegimenChange
Usage: #example
Title: "Observation - ARV Regimen Substituted"
Description: "This is used to capture the ARV regimen substitute details."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#182838006
* code.text = "ARV regimen change"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $ARVRegimenChangeCategory#Substituted
* hasMember[ChangeCategoryType][+] = Reference(ARVRegimenChangeCategoryTypeSubstituteExample)

Instance: ARVMedicationRequestForRegimenSwitchExample
InstanceOf: ARVMedicationRequest
Usage: #example
Title: "Medication Request - ARV Regimen Switch"
Description: "This is to record requests for medication that are prescribed to a patient (who is Alive on ART) during a regimen switch."
* identifier[RequestID].value = "prescription-12345"
* identifier[RequestID].system = $PrescriptionID
//* identifier[RequestID].type = $IdentifierTypeCodeSystem#FILL
//* identifier[RequestID].type.text = "Prescription identifier"
* authoredOn = "2023-10-11T17:21:33-08:00"
* status = #completed
* intent = #order
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* medicationReference = Reference(ARVMedicationExample)
* dispenseRequest.quantity = $OrderableDrugForm_UNIT#TAB 
* dispenseRequest.quantity.unit = "TAB"
* dispenseRequest.quantity.value = 90
* reasonReference = Reference(ARVRegimenSwitchExample)
* basedOn = Reference(ARTAliveOnARTFollowUpCareplanExample)

Instance: ARTAliveOnARTFollowUpCareplanWithAdherenceExample
InstanceOf: ARTFollowUpCareplan
Usage: #example
Title: "ART Follow-up Care Plan - Alive on ART With Adherence Indication"
Description: "Used to record the ART treatment and care details for the patient who is alive on ART (incl. adherence)."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $LNC#LP66375-4
* category[=].text = "ART"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].extension[NextVisitDate].valueDateTime = "2024-03-20"
* activity[=].reference = Reference(ARVMedicationRequestAliveOnARTExample)
* activity[=].extension[Adherence].valueReference = Reference(FairARVAdherenceExample)

Instance: ARVRegimenChangeReasonNewDrugExample
InstanceOf: ARVRegimenChangeReason
Usage: #example
Title: "Observation - ARV Regimen Changed Due To New Drug Availability"
Description: "This indicates that the ARV regimen was changed due to new drug availability."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LL354-2
* code.text = "ARV regimen change reason"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $LNC#LA6533-9
* valueCodeableConcept.text = "New Drug Available"

Instance: ARVRegimenChangeReasonClinicalFailureExample
InstanceOf: ARVRegimenChangeReason
Usage: #example
Title: "Observation - ARV Regimen Changed Due To Clinical failure"
Description: "This indicates that the ARV regimen was changed due to clinical failure (CD4 levels below 100 cells/mm3)."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LL354-2
* code.text = "ARV regimen change reason"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $LNC#24467-3
* valueCodeableConcept.text = "CD4 count"
* valueCodeableConcept.extension[TreatmentFailureIndication].valueCodeableConcept = $CD4VLTreatmentFailureClassificationCodeSystem#Clinical-Failure

Instance: ARVRegimenChangeReasonImmunologicFailureExample
InstanceOf: ARVRegimenChangeReason
Usage: #example
Title: "Observation - ARV Regimen Changed Due To Immunologic failure"
Description: "This indicates that the ARV regimen was changed due to immunologic failure (CD4 levels below 250 cells/mm3)."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LL354-2
* code.text = "ARV regimen change reason"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $LNC#24467-3
* valueCodeableConcept.text = "CD4 count"
* valueCodeableConcept.extension[TreatmentFailureIndication].valueCodeableConcept = $CD4VLTreatmentFailureClassificationCodeSystem#Immunologic-Failure

Instance: ARVRegimenChangeReasonVirologicFailureExample
InstanceOf: ARVRegimenChangeReason
Usage: #example
Title: "Observation - ARV Regimen Changed Due To Virologic failure"
Description: "This indicates that the ARV regimen was changed due to virologic failure (viral load exceeding 1000 copies/mL)."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LL354-2
* code.text = "ARV regimen change reason"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $LNC#20447-9
* valueCodeableConcept.text = "VL count"
* valueCodeableConcept.extension[TreatmentFailureIndication].valueCodeableConcept = $CD4VLTreatmentFailureClassificationCodeSystem#Virologic-Failure

Instance: ARVRegimenSideEffectsExample
InstanceOf: ARVRegimenSideEffects
Usage: #example
Title: "Observation - ARV Regimen Side Effects"
Description: "This is used to capture the any side affects as a result of taking ARV medication."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#401207004
* code.text = "Medication side effects"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* partOf = Reference(FollowUpArvTreatmentMedicationStatementExample)
* valueCodeableConcept.extension[ARVSideEffects][+].valueCodeableConcept = $LNC#LA15098-9
* valueCodeableConcept.extension[ARVSideEffects][+].valueCodeableConcept = $LNC#LA15903-0
* valueCodeableConcept.extension[ARVSideEffects][+].valueCodeableConcept = $LNC#LA15424-7

Instance: PlaceOfDeliveryExample
InstanceOf: PlaceOfDelivery
Usage: #example
Title: "Observation - Place of Delivery"
Description: "This is used to record the place of delivery for a patient who is < 6yrs of age."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#72150-6
* code.text = "Delivery loction"
* valueCodeableConcept = $LNC#LA18958-1
* valueCodeableConcept.text = "Facility"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: ModeOfDeliveryExample
InstanceOf: ModeOfDelivery
Usage: #example
Title: "Observation - Mode of Delivery"
Description: "This is used to record the mode of delivery for a patient who is < 6yrs of age."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#LL2193-2
* code.text = "Delivery method"
* valueCodeableConcept = $LNC#LA18965-6
* valueCodeableConcept.text = "Caesarean section"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: ResidesWithinCatchmentAreaExample
InstanceOf: ResidesWithinCatchmentArea
Usage: #example
Title: "Observation - Resides in Catchment Area"
Description: "Indicates that the patient resides in the catchment area."
* status = #final
* category = $OBSERVATION_CATEGORY#social-history
* code = $LNC#LA21920-6
* code.text = "Residence in catchment area"
* valueCodeableConcept = $YesNoCodeSystem#true
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: DoesNotResideWithinCatchmentAreaExample
InstanceOf: ResidesWithinCatchmentArea
Usage: #example
Title: "Observation - Does Not Reside Within Catchment Area"
Description: "Indicates that the patient does not reside within the catchment area."
* status = #final
* category = $OBSERVATION_CATEGORY#social-history
* code = $LNC#LA21920-6
* code.text = "Residence in catchment area"
* valueCodeableConcept = $YesNoCodeSystem#false
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* extension[FollowUpChallengesAnticipated].valueCodeableConcept = $YesNoCodeSystem#true

Instance: ARVRegimenChangeCategoryTypeSubstituteExample
InstanceOf: ARVRegimenChangeCategoryType
Usage: #example
Title: "Observation - ARV Regimen Substituted"
Description: "This is used to indicate the type for the ARV regimen change as a substitution."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#182838006
* code.text = "ARV regimen change"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $ARVRegimenSubstituteType#First-Substitute

Instance: ARVRegimenChangeCategoryTypeSwitchExample
InstanceOf: ARVRegimenChangeCategoryType
Usage: #example
Title: "Observation - ARV Regimen Switched"
Description: "This is used to indicate the type for the ARV regimen change as a switch."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#182838006
* code.text = "ARV regimen change"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $ARVRegimenSwitchType#First-Switch

Instance: ARVMedicationAdministrationExample
InstanceOf: ARVMedicationAdministration
Usage: #example
Title: "Medication Administration - For Prescribed ARV Medication"
Description: "Used to record the medication administration period for prescribed ARV medication."
* status = #completed
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* request = Reference(ARVMedicationRequestInitiatedARTExample)
* effectivePeriod.start = "2012-12-09"
* effectivePeriod.end = "2013-04-08"
* note.authorReference = Reference(GeneralPractitionerExample)
* note.text = "Dose end date for a 90 day dispensation of 1j (TDF + 3TC + DTG)"
* note.time = "2012-12-09T13:28:17-05:00"
* medicationReference = Reference(ARVMedicationExample)

Instance: ARVMedicationExample
InstanceOf: ARVMedication
Usage: #example
Title: "Medication - Represents an ARV Regimen"
Description: "Used to record the ARV regimen that will be prescribed to the patient."
* code = $ARVTreatmentCodeSystem#1j
* code.text = "1j (TDF + 3TC + DTG)"

Instance: CotrimoxazoleMedicationExample
InstanceOf: OIMedication
Usage: #example
Title: "Medication - Represents Cotrimoxazole For Opportunistic Infections"
Description: "Used to record the OI medication (Cotrimoxazole) that will be prescribed to the patient."
* code = $LNC#18998-5
* code.text = "Cotrimoxazole"

Instance: FluconazoleMedicationExample
InstanceOf: OIMedication
Usage: #example
Title: "Medication - Represents Fluconazole For Opportunistic Infections"
Description: "Used to record the OI medication (Fluconazole) that will be prescribed to the patient."
* code = $LNC#18924-1
* code.text = "Fluconazole"

Instance: ReferralWithinFacilityExample
InstanceOf: ReferralInServiceRequest
Usage: #example
Title: "Service Request - Incoming Referral From Within Facility - (Existing ART Client)"
Description: "Used to capture a pateint's referral information."
* status = #completed
* intent = #order
* code = $LNC#39267-0
* code.text = "Reason for referral received"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(CurrentServiceProviderExample)
* locationReference = Reference(EncounterLocationANCExample)
* reasonCode[HIVReferral] = $LNC#LA6517-2

Instance: ReferralFromOutsideFacilitytExample
InstanceOf: ReferralInServiceRequest
Usage: #example
Title: "Service Request - Incoming Referral From Outside Facility - (New ART Client)"
Description: "Used to capture a pateint's referral information."
* status = #completed
* intent = #order
* code = $LNC#39267-0
* code.text = "Reason for referral received"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(CurrentServiceProviderExample)
* locationReference = Reference(EncounterLocationHIVTestingExample)
* reasonCode[HIVReferral] = $LNC#LA6517-2

Instance: HIVStatusDisclosureAtEnrollmentExample
InstanceOf: HIVStatusDisclosureAtEnrollment
Usage: #example
Title: "Observation - HIV Status Disclosure At Enrollment"
Description: "Used to determine whether the patient's or their child's HIV Status is known, and by who."
* status = #final
* category = $OBSERVATION_CATEGORY#social-history
* code = $LNC#47249-8
* code.text = "HIV care and family status"
* valueCodeableConcept = $YesNoCodeSystem#true
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* extension[PatientRelationship][+].valueCodeableConcept = $RoleCodeSystem#CHILD
* extension[PatientRelationship][=].valueCodeableConcept.text = "Pastor"

Instance: FamilyMemberHIVStatusExample
InstanceOf: FamilyMemberHIVStatus
Usage: #example
Title: "Observation - Family Member HIV Status (FULL)"
Description: "This is used to record the family member's HIV status."
* status = #final
* category = $OBSERVATION_CATEGORY#social-history
* code = $LNC#10157-6
* code.text = "History of family member diseases"
* subject = Reference(GroupWithPatientChildRelationExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* note[+].text = "Additional remarks regarding family member HIV status"
* note[=].time = "2024-01-25T13:28:17-05:00"
* hasMember[DisclosureAtEnrollment][+] = Reference(HIVStatusDisclosureAtEnrollmentExample)
* hasMember[TestedForHIV][+] = Reference(TestedForHIVExample)
* hasMember[CounseledForHIV][+] = Reference(CounseledForHIVExample)
* hasMember[EnrolledIntoCare][+] = Reference(LinkedToCareAndInitiatedARTExample)
* hasMember[StartedART][+] = Reference(StartedARTExample)
* hasMember[HealthStatus][+] = Reference(HealthStatusExample)

Instance: TestedForHIVExample
InstanceOf: TestedForHIV
Usage: #example
Title: "Observation - Tested for HIV"
Description: "Indicates that the patient has been tested for HIV."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#171121004
* code.text = "Tested for HIV"
* valueCodeableConcept = $YesNoCodeSystem#true
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-10-21"
* subject = Reference(GroupWithPatientChildRegisteredAsPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: TestedForHIVNoDateExample
InstanceOf: TestedForHIV
Usage: #example
Title: "Observation - Tested for HIV (Excl. Date When Last Tested)"
Description: "Indicates that the patient has been tested for HIV but the HIV test date was not recorded (possibly not known)."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#171121004
* code.text = "Tested for HIV"
* valueCodeableConcept = $YesNoCodeSystem#true
* subject = Reference(GroupWithPatientChildRegisteredAsPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: TestedForHIVWithConfirmationTestExample
InstanceOf: TestedForHIV
Usage: #example
Title: "Observation - Tested for HIV (Inlc. HIV Confirmation Test)"
Description: "Indicates that the patient has been tested for HIV and also received an HIV confirmation test that was associated with this event."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#171121004
* code.text = "Tested for HIV"
* valueCodeableConcept = $YesNoCodeSystem#true
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-10-21"
* subject = Reference(GroupWithPatientChildRegisteredAsPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* hasMember[ConfirmedHIVPositive][+] = Reference(RapidHIVTestExample)

Instance: CounseledForHIVExample
InstanceOf: CounseledForHIV
Usage: #example
Title: "Observation - Counseled for HIV"
Description: "Indicates that the patient has received counselling for HIV."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#313077009
* code.text = "Counseled for HIV"
* valueCodeableConcept = $YesNoCodeSystem#true
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-10-21"
* subject = Reference(GroupWithPatientChildRegisteredAsPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: CounseledForHIVNoDateExample
InstanceOf: CounseledForHIV
Usage: #example
Title: "Observation - Counseled for HIV (Excl. Date Counselled)"
Description: "Indicates that the patient has received counselling for HIV but the counselling date was not recorded (possibly not known)."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#313077009
* code.text = "Counseled for HIV"
* valueCodeableConcept = $YesNoCodeSystem#true
* subject = Reference(GroupWithPatientChildRegisteredAsPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: CounseledForHIVFollowedByHIVTestExample
InstanceOf: CounseledForHIV
Usage: #example
Title: "Observation - Counseled for HIV Then Tested for HIV"
Description: "Indicates that the patient has received counselling for HIV testing and the HIV test that follows is assoicated with this event."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#313077009
* code.text = "Counseled for HIV"
* valueCodeableConcept = $YesNoCodeSystem#true
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-10-21"
* subject = Reference(GroupWithPatientChildRegisteredAsPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* hasMember[+] = Reference(TestedForHIVExample)

Instance: HealthStatusExample
InstanceOf: HealthStatus
Usage: #example
Title: "Observation - Health Status"
Description: "This is used to record the patient's health status."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#11323-3
* code.text = "Health Status"
* valueCodeableConcept = $LNC#LA14937-9
* subject = Reference(GroupWithPatientChildRegisteredAsPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: HIVTestResultsExample
InstanceOf: HIVTestResults
Usage: #example
Title: "Observation - HIV Test Results"
Description: "This is used to record the patient's HIV test results."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#LL5696-1
* code.text = "HIV test results"
* valueCodeableConcept = $LNC#LA20964-5
* subject = Reference(GroupWithPatientChildRegisteredAsPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* derivedFrom = Reference(TestedForHIVExample)

Instance: PatientWithChildRelationshipExample
InstanceOf: EthPatient
Usage: #example
Title: "Patient - With Child Relationship"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[MRN].value = "MRN12345674"
* identifier[MRN].system = $MRN
//* identifier[MRN].type = $IdentifierTypeCodeSystem#MR
//* identifier[MRN].type.text = "Medical record number"

* identifier[UAN].value = "UAN12345674"
* identifier[UAN].system = $UAN

* identifier[EMR-ID].value = "NID12345674"
* identifier[EMR-ID].system = $EMR_ID

* name[+].given[+] = "Mark"
* name[=].family = "Adams"

* gender = #male
* birthDate = "2000-11-11"
* maritalStatus = $MaritalStatus#M
* address[+].city = "Addis Ababa"
* address[=].line[+] = "123"
* address[=].line[+] = "Tesfaye Street"
* address[=].line[+] = "Bole"
* address[=].district = "Addis Ababa Central District"
* address[=].state = "Addis Ababa"
* address[=].extension[ResidentialType].valueCodeableConcept = $SCT#224804009
* address[=].extension[ResidentialType].valueCodeableConcept.text = "Rural"

* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home

* managingOrganization = Reference(CurrentServiceProviderExample)
* link.other = Reference(ChildRelatedPersonExample)
* link.type = #seealso

Instance: GroupWithPatientChildRelationExample
InstanceOf: PatientFamilymembersGroup
Usage: #example
Title: "Group - Patient and Child Relation (Not yet a patient)"
Description: "Represents the patient and the child being referenced as part of healthcare-related activity"
* type = #person
* actual = true
* member[IndexCase][+].entity = Reference(PatientWithChildRelationshipExample)

Instance: GroupWithPatientChildRegisteredAsPatientExample
InstanceOf: PatientFamilymembersGroup
Usage: #example
Title: "Group - Patient and Child Relation (Registered as a patient)"
Description: "Represents the patient and the child being referenced as part of healthcare-related activity"
* type = #person
* actual = true
* member[IndexCase][+].entity = Reference(PatientWithChildRelationshipExample)
* member[RelatedPatient][+].entity = Reference(ChildRelatedPersonBecomesPatientExample)

Instance: ChildRelatedPersonBecomesPatientExample
InstanceOf: EthPatient
Usage: #example
Title: "Patient - Child, Related to the Patient, Becomes a Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[MRN].value = "MRN12345675"
* identifier[MRN].system = $MRN
//* identifier[MRN].type = $IdentifierTypeCodeSystem#MR
//* identifier[MRN].type.text = "Medical record number"

* identifier[UAN].value = "UAN12345675"
* identifier[UAN].system = $UAN

* identifier[EMR-ID].value = "NID12345675"
* identifier[EMR-ID].system = $EMR_ID

* name[+].given[+] = "Jane"
* name[=].family = "Smith"

* gender = #female
* birthDate = "1982-04-12"

* address[+].city = "Addis Ababa"
* address[=].line[+] = "123"
* address[=].line[+] = "Tesfaye Street"
* address[=].line[+] = "Bole"
* address[=].district = "Addis Ababa Central District"
* address[=].state = "Addis Ababa"

* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home

* managingOrganization = Reference(CurrentServiceProviderExample)
* link.other = Reference(ChildRelatedPersonExample)
* link.type = #replaces

Instance: HIVEpisodeOfCareNoReferralExample
InstanceOf: EthEpisodeOfCare
Usage: #example
Title: "Episode of Care - ART (No Referral)"
Description: "Records the health related activities for patients associated with HIV treatment and care services."
* status = #active
* type[ART] = $LNC#LP66375-4
* patient = Reference(GeneralPatientExample)
* managingOrganization = Reference(CurrentServiceProviderExample)

Instance: HIVEpisodeOfCareReferralWithinFacilityExample
InstanceOf: EthEpisodeOfCare
Usage: #example
Title: "Episode of Care - ART (Incoming Referral From Within Facility)"
Description: "Records the health related activities for patients associated with HIV treatment and care services."
* status = #active
* type[ART] = $LNC#LP66375-4
* patient = Reference(GeneralPatientExample)
* managingOrganization = Reference(CurrentServiceProviderExample)
* referralRequest[Incoming] = Reference(ReferralWithinFacilityExample)

Instance: HIVEpisodeOfCareReferralFromOutsideFacilityExample
InstanceOf: EthEpisodeOfCare
Usage: #example
Title: "Episode of Care - ART (Incoming Referral From Outside the Facility)"
Description: "Records the health related activities for patients associated with HIV treatment and care services."
* status = #active
* type[ART] = $LNC#LP66375-4
* patient = Reference(GeneralPatientExample)
* managingOrganization = Reference(CurrentServiceProviderExample)
* referralRequest[Incoming] = Reference(ReferralFromOutsideFacilitytExample)

Instance: HIVEpisodeOfCareReferralInAndOutExample
InstanceOf: EthEpisodeOfCare
Usage: #example
Title: "Episode of Care - ART (Incoming Referral From Outside the Facility is Now Referred Out)"
Description: "Records the health related activities for patients associated with HIV treatment and care services."
* status = #active
* type[ART] = $LNC#LP66375-4
* patient = Reference(GeneralPatientExample)
* managingOrganization = Reference(CurrentServiceProviderExample)
* referralRequest[Incoming] = Reference(ReferralFromOutsideFacilitytExample)
* referralRequest[Outgoing] = Reference(ReferralOutServiceRequestExample)

Instance: HIVEpisodeOfCareReferralOutExample
InstanceOf: EthEpisodeOfCare
Usage: #example
Title: "Episode of Care - ART (Outgoing Referral)"
Description: "Records the health related activities for patients associated with HIV treatment and care services."
* status = #active
* type[ART] = $LNC#LP66375-4
* patient = Reference(GeneralPatientExample)
* managingOrganization = Reference(CurrentServiceProviderExample)
* referralRequest[Outgoing] = Reference(ReferralOutServiceRequestExample)

Instance: HIVEpisodeOfCareWithMultipleCarePlansExample
InstanceOf: EthEpisodeOfCare
Usage: #example
Title: "Episode of Care - HIV+ Patient Receiving ART and TB Treatment (Inlc. Episode of Care Identifier)"
Description: "Records the health related activities for patients associated with HIV treatment and care services."
* identifier[EpisodeOfCareID][+].value = "abd-123-11"
* identifier[EpisodeOfCareID][=].system = $EpisodeOfCareID
* status = #active
* type[ART] = $LNC#LP66375-4
* type[TB] = $SCT#171126009
* patient = Reference(GeneralPatientExample)
* managingOrganization = Reference(CurrentServiceProviderExample)

Instance: GeneralEncounterWithEpisodeOfCareExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Encounter - Referencing a General Patient Receiving ART and TB Treatment (Episode Of Care)"
Description: "Represents the current facility at which the patient is receiving health services."
* class = $EncounterClassCodeSystem#OBSENC
* status = #finished
* identifier[ENCOUNTER-ID].value = "001"
* identifier[ENCOUNTER-ID].system = $ENCOUNTER
* subject = Reference(GeneralPatientExample)
* type[+] = $SCT#390906007
* type[=].text = "Follow-up encounter"
* type[=].extension[VisitType].valueCodeableConcept = $VisitTypeCodeSystem#unscheduled
* period.start = "2012-12-09"
* period.end = "2012-12-09"
* serviceProvider = Reference(CurrentServiceProviderExample)
* episodeOfCare[HIV-TB-CervicalCancer] = Reference(HIVEpisodeOfCareWithMultipleCarePlansExample)

Instance: ViralLoadNotPerformedExample
InstanceOf: ViralLoadPerformed
Usage: #example
Title: "Observation - Viral Load Not Performed"
Description: "This is used to indicate that a viral load was not performed."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#315124004
* valueCodeableConcept = $YesNoCodeSystem#false
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: ViralLoadPerformedExample
InstanceOf: ViralLoadPerformed
Usage: #example
Title: "Observation - Viral Load Performed"
Description: "This is used to indicate that a routine viral load was not performed."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#315124004
* valueCodeableConcept = $YesNoCodeSystem#true
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* hasMember = Reference(ViralLoadRoutineIndicationExample)

Instance: ViralLoadRoutineIndicationExample
InstanceOf: ViralLoadIndication
Usage: #example
Title: "Observation - Routine Viral Load"
Description: "This is used to represent a routine viral load exam."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#LA9035-2
* valueCodeableConcept = $RoutineIndicationViralLoad#Annual-VL-Test
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* basedOn[ViralLoadServiceRequest] = Reference(RoutineViralLoadServiceRequestExample)

Instance: ViralLoadRoutineExamStepForCarePlanExample
InstanceOf: ViralLoadIndication
Usage: #example
Title: "Observation - Routine Viral Load As a Step In the ART Care Plan"
Description: "This is used to represent a routine viral load exam as an event initiated as part of the ART Care Plan."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#LA9035-2
* valueCodeableConcept = $RoutineIndicationViralLoad#Annual-VL-Test
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* basedOn[ViralLoadServiceRequest] = Reference(RoutineViralLoadServiceRequestExample)
* basedOn[ARTCarePlan] = Reference(ARTInitiatedARTFollowUpCareplanExample)

Instance: ViralLoadTargetedIndicationExample
InstanceOf: ViralLoadIndication
Usage: #example
Title: "Observation - Targeted Viral Load"
Description: "This is used to represent a targeted viral load exam."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#LA26675-1
* valueCodeableConcept = $TargetedIndicationViralLoad#Suspected-ART-Failure
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* basedOn[ViralLoadServiceRequest] = Reference(TargetedViralLoadServiceRequestExample)

Instance: RoutineViralLoadServiceRequestExample
InstanceOf: ViralLoadServiceRequest
Usage: #example
Title: "Service Request - Routine Viral Load"
Description: "Represents the service request for a routine viral load."
* status = #completed
* intent = #order
* code = $LNC#25836-8
* category = $LNC#LP94892-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2024-01-25"
* priority = #routine

Instance: TargetedViralLoadServiceRequestExample
InstanceOf: ViralLoadServiceRequest
Usage: #example
Title: "Service Request - Targeted Viral Load"
Description: "Represents the service request for a targeted viral load."
* status = #completed
* intent = #order
* code = $LNC#25836-8
* category = $LNC#LP94892-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2024-01-25"
* priority = #asap

Instance: EnhancedAdherenceCounsellingNotProvidedExample
InstanceOf: EnhancedAdherenceCounselling
Usage: #example
Title: "Observation - Enhanced Adherence Counselling Not Provided"
Description: "Indicates that the patient did not receive enhanced adherence counselling."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#410265008
* valueCodeableConcept = $YesNoCodeSystem#false
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: EnhancedAdherenceCounsellinProvidedExample
InstanceOf: EnhancedAdherenceCounselling
Usage: #example
Title: "Observation - Enhanced Adherence Counselling Provided"
Description: "Indicates that the patient did receive enhanced adherence counselling."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#410265008
* valueCodeableConcept = $YesNoCodeSystem#true
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* basedOn[EACServiceRequest] = Reference(EnhancedAdherenceCounsellingServiceRequestExample)

Instance: EnhancedAdherenceCounsellingProvidedWithARTCarePlanExample
InstanceOf: EnhancedAdherenceCounselling
Usage: #example
Title: "Observation - Enhanced Adherence Counselling Provided As a Step In the ART Care Plan"
Description: "Indicates that the patient did receive enhanced adherence counselling as part of the ART Care Plan."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#410265008
* valueCodeableConcept = $YesNoCodeSystem#true
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* basedOn[EACServiceRequest] = Reference(EnhancedAdherenceCounsellingServiceRequestExample)
* basedOn[ARTCarePlan] = Reference(ARTInitiatedARTFollowUpCareplanExample)

Instance: EnhancedAdherenceCounsellingServiceRequestExample
InstanceOf: EnhancedAdherenceCounsellingServiceRequest
Usage: #example
Title: "Service Request - Enhanced Adherence Counselling"
Description: "Represents the service request for enhanced adherence counselling."
* status = #completed
* intent = #order
* code = $SCT#410265008
* category = $LNC#LP173100-1
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2024-01-25"
* reasonReference = Reference(EnhancedAdherenceCounsellinProvidedExample)
* orderDetail = $EACGiven#EAC-1

Instance: CD4PercentageExample
InstanceOf: CD4Percentage
Usage: #example
Title: "Observation - CD4 Percentage"
Description: "Used to record the patient's CD4 percentage."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#32516-7
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* valueQuantity = $UCUM_UNIT#%
* valueQuantity.value = 60
* valueQuantity.unit = "%"
* derivedFrom = Reference(CD4AbsoluteCountExample)

Instance: CD4AbsoluteCountExample
InstanceOf: CD4AbsoluteCount
Usage: #example
Title: "Observation - Absolute CD4 Count"
Description: "Used to record the patient's absolute CD4 count."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#32515-9
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* valueQuantity = $UCUM_UNIT#/mm3
* valueQuantity.value = 500
* valueQuantity.unit = "cells/mm3"

Instance: CD4AbsoluteCountWithARTInitiationExample
InstanceOf: CD4AbsoluteCount
Usage: #example
Title: "Observation - Absolute CD4 Count Including Initiation of ART"
Description: "Used to record the patient's absolute CD4 count and ART initiation."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#32515-9
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
* valueQuantity = $UCUM_UNIT#/mm3
* valueQuantity.value = 500
* valueQuantity.unit = "cells/mm3"
* basedOn = Reference(ARTInitiatedARTFollowUpCareplanExample)

Instance: RoutineViralLoadDiagnosticReportExample
InstanceOf: ViralLoadDiagnosticReport
Usage: #example
Title: "Diagnostic Report - Routine Viral Load"
Description: "Represents the results for a routine viral load as unsuppressed."
* status = #final
* category = $LNC#11502-2
* code = $LNC#25836-8
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* result = Reference(UnsuppressedViralLoadResultExample)
* issued = "2024-01-25T11:45:33+11:00"
* basedOn = Reference(RoutineViralLoadServiceRequestExample)
* performer = Reference(CurrentServiceProviderExample)

Instance: TargetedViralLoadDiagnosticReportExample
InstanceOf: ViralLoadDiagnosticReport
Usage: #example
Title: "Diagnostic Report - Targeted Viral Load"
Description: "Represents the results for a targeted viral load as suppressed."
* status = #final
* category = $LNC#11502-2
* code = $LNC#25836-8
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* result = Reference(SuppressedViralLoadResultExample)
* issued = "2024-01-25T11:45:33+11:00"
* basedOn = Reference(TargetedViralLoadServiceRequestExample)
* performer = Reference(CurrentServiceProviderExample)

Instance: RestartARTFollowupStatusExample
InstanceOf: ARTFollowupStatusObservation
Usage: #example
Title: "Observation - Restart"
Description: "Indicates that the patient has restarted ART."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#47248-0
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* valueCodeableConcept = $ARTFollowUpStatus#restart
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)

Instance: LostARTFollowupStatusExample
InstanceOf: ARTFollowupStatusObservation
Usage: #example
Title: "Observation - Lost to ART"
Description: "Indicates that the patient is lost to follow-up."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#47248-0
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* valueCodeableConcept = $ARTFollowUpStatus#lost
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)

Instance: StopARTFollowupStatusExample
InstanceOf: ARTFollowupStatusObservation
Usage: #example
Title: "Observation - Stopped ART"
Description: "Indicates that the patient stopped ART."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#47248-0
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* valueCodeableConcept = $ARTFollowUpStatus#stop
* effectiveDateTime = "2024-01-25"
* hasMember = Reference(ARTFollowupStatusStoppedReasonExample)
* performer = Reference(CurrentServiceProviderExample)

Instance: ARTFollowupStatusStoppedReasonExample
InstanceOf: ARTFollowupStatusStoppedReasonObservation
Usage: #example
Title: "Observation - Reason For Stopping ART"
Description: "Represents the reasons for the patient stopping ART."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#91382-2
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* valueCodeableConcept.extension[StopReason][+].valueCodeableConcept = $LNC#LA6529-7
* valueCodeableConcept.extension[StopReason][=].valueCodeableConcept.text = "Toxicity/side effects"
* valueCodeableConcept.extension[StopReason][+].valueCodeableConcept = $LNC#LA31432-0
* valueCodeableConcept.extension[StopReason][=].valueCodeableConcept.text = "Poor adherence"
* valueCodeableConcept.extension[StopReason][+].valueCodeableConcept = $LNC#LP56812-8
* valueCodeableConcept.extension[StopReason][=].valueCodeableConcept.text = "Treatment failure"
* valueCodeableConcept.extension[StopReason][+].valueCodeableConcept = $LNC#18733-6
* valueCodeableConcept.extension[StopReason][=].valueCodeableConcept.text = "Planned treatment interruption"

* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)

Instance: AliveOnArtARTFollowupStatusExample
InstanceOf: ARTFollowupStatusObservation
Usage: #example
Title: "Observation - Alive and on ART"
Description: "Indicates that the patient is alive and on ART."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#47248-0
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* valueCodeableConcept = $ARTFollowUpStatus#alive-on-art
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)

Instance: InitiatedArtARTFollowupStatusExample
InstanceOf: ARTFollowupStatusObservation
Usage: #example
Title: "Observation - Initiated On ART"
Description: "Indicates that the patient is initiated on ART."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#47248-0
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* valueCodeableConcept = $LNC#63936-9
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)

Instance: FollowUpCareplanViralLoadRequestExample
InstanceOf: ARTFollowUpCareplan
Usage: #example
Title: "ART Follow-up Care Plan - Request For a Routine Viral Load"
Description: "Used to request a routine viral load as part of ART."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $LNC#LP66375-4
* category[=].text = "ART"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].reference = Reference(RoutineViralLoadServiceRequestExample)

Instance: FollowUpCareplanCD4RequestExample
InstanceOf: ARTFollowUpCareplan
Usage: #example
Title: "ART Follow-up Care Plan - Request For CD4"
Description: "Used to request CD4 as part of ART."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $LNC#LP66375-4
* category[=].text = "ART"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].reference = Reference(CD4ServiceRequestExample)

Instance: CD4ServiceRequestExample
InstanceOf: CD4ServiceRequest
Usage: #example
Title: "Service Request - CD4"
Description: "Represents the service request for CD4."
* status = #completed
* intent = #order
* code = $LNC#32515-9
* category = $LNC#LP94892-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2024-01-25"

Instance: AbsoluteCD4DiagnosticReportExample
InstanceOf: CD4DiagnosticReport
Usage: #example
Title: "Diagnostic Report - Absolute CD4"
Description: "Represents the absolute CD4 count."
* status = #final
* category = $LNC#11502-2
* code = $LNC#32515-9
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* result[CD4AbsoluteCount][+] = Reference(CD4AbsoluteCountExample)
* issued = "2024-01-25T11:45:33+11:00"
* basedOn = Reference(CD4ServiceRequestExample)
* performer = Reference(CurrentServiceProviderExample)

Instance: CD4PercentageDiagnosticReportExample
InstanceOf: CD4DiagnosticReport
Usage: #example
Title: "Diagnostic Report - CD4 Percentage"
Description: "Represents the CD4 percentage (usually taken at the same time as Absolute CD4)."
* status = #final
* category = $LNC#11502-2
* code = $LNC#32515-9
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* result[CD4Percentage][+] = Reference(CD4PercentageExample)
* issued = "2024-01-25T11:45:33+11:00"
* basedOn = Reference(CD4ServiceRequestExample)
* performer = Reference(CurrentServiceProviderExample)

Instance: CD4PercentageAndAbsoluteDiagnosticReportExample
InstanceOf: CD4DiagnosticReport
Usage: #example
Title: "Diagnostic Report - Absolute CD4 with Percentage"
Description: "Represents the absolute CD4 together with the CD4 percentage."
* status = #final
* category = $LNC#11502-2
* code = $LNC#32515-9
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* result[CD4AbsoluteCount][+] = Reference(CD4AbsoluteCountExample)
* result[CD4Percentage][+] = Reference(CD4PercentageExample)
* issued = "2024-01-25T11:45:33+11:00"
* basedOn = Reference(CD4ServiceRequestExample)
* performer = Reference(CurrentServiceProviderExample)

Instance: HGBServiceRequestExample
InstanceOf: HGBServiceRequest
Usage: #example
Title: "Service Request - HGB"
Description: "Represents the service request for Hemoglobin (HGB)."
* status = #completed
* intent = #order
* code = $LNC#718-7
* category = $LNC#LP94892-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2024-01-25"

Instance: HGBDiagnosticReportExample
InstanceOf: HGBDiagnosticReport
Usage: #example
Title: "Diagnostic Report - HGB"
Description: "Represents the results for Hemoglobin (HGB)."
* status = #final
* category = $LNC#11502-2
* code = $LNC#718-7
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* result = Reference(HGBResultExample)
* issued = "2024-01-25T11:45:33+11:00"
* basedOn = Reference(HGBServiceRequestExample)
* performer = Reference(CurrentServiceProviderExample)

Instance: HGBResultExample
InstanceOf: HGBResult
Usage: #example
Title: "Observation - HGB"
Description: "Used to record the patient's Hemoglobin (HGB)."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#718-7
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* valueQuantity = $UCUM_UNIT#g/dL
* valueQuantity.value = 8.2
* valueQuantity.unit = "g/dL"
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)

Instance: CreatinineServiceRequestExample
InstanceOf: CreatinineServiceRequest
Usage: #example
Title: "Service Request - Creatinine"
Description: "Represents the service request for creatinine."
* status = #completed
* intent = #order
* code = $LNC#2160-0
* category = $LNC#LP94892-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2024-01-25"

Instance: CreatinineDiagnosticReportExample
InstanceOf: CreatinineDiagnosticReport
Usage: #example
Title: "Diagnostic Report - Creatinine"
Description: "Represents the results for creatinine."
* status = #final
* category = $LNC#11502-2
* code = $LNC#2160-0
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* result = Reference(CreatinineResultExample)
* issued = "2024-01-25T11:45:33+11:00"
* basedOn = Reference(CreatinineServiceRequestExample)
* performer = Reference(CurrentServiceProviderExample)

Instance: CreatinineResultExample
InstanceOf: CreatinineResult
Usage: #example
Title: "Observation - Creatinine"
Description: "Used to record the patient's creatinine."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#2160-0
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* valueQuantity = $UCUM_UNIT#mg/dL
* valueQuantity.value = 90
* valueQuantity.unit = "mg/dL"
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)

Instance: ALTandASTResultsExample
InstanceOf: ALTandASTResults
Usage: #example
Title: "Observation - Aspartate aminotransferase (AST) and Alanine aminotransferase (ALT)"
Description: "Used to record the patient's AST and ALT."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#24325-3
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)

* component[AST][+].valueQuantity = $UCUM_UNIT#U/L
* component[AST][=].valueQuantity.value = 32
* component[AST][=].valueQuantity.unit = "U/L"

* component[ALT][+].valueQuantity = $UCUM_UNIT#U/L
* component[ALT][=].valueQuantity.value = 43
* component[ALT][=].valueQuantity.unit = "U/L"

Instance: ALTandASTServiceRequestExample
InstanceOf: ALTandASTServiceRequest
Usage: #example
Title: "Service Request - Aspartate aminotransferase (AST) and Alanine aminotransferase (ALT)"
Description: "Represents the service request for AST and ALT."
* status = #completed
* intent = #order
* code = $LNC#24325-3
* category = $LNC#LP94892-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2024-01-25"

Instance: ALTandASTDiagnosticReportExample
InstanceOf: ALTandASTDiagnosticReport
Usage: #example
Title: "Diagnostic Report - Aspartate aminotransferase (AST) and Alanine aminotransferase (ALT)"
Description: "Represents the results for AST and ALT."
* status = #final
* category = $LNC#11502-2
* code = $LNC#24325-3
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* result = Reference(ALTandASTResultsExample)
* issued = "2024-01-25T11:45:33+11:00"
* basedOn = Reference(ALTandASTServiceRequestExample)
* performer = Reference(CurrentServiceProviderExample)

Instance: CotrimoxazolePreventiveTherapyNotStartedExample
InstanceOf: CotrimoxazolePreventiveTherapy
Usage: #example
Title: "Observation - Cotrimoxazole Preventive Therapy Not Started"
Description: "Used to indicate that the patient has not started cotrimoxazole preventive therapy."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#18998-5
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* valueCodeableConcept = $YesNoCodeSystem#false
* performer = Reference(CurrentServiceProviderExample)

Instance: CotrimoxazolePreventiveTherapyStartedExample
InstanceOf: CotrimoxazolePreventiveTherapy
Usage: #example
Title: "Observation - Cotrimoxazole Preventive Therapy Started"
Description: "Used to indicate that the patient has started cotrimoxazole preventive therapy."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#18998-5
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* valueCodeableConcept = $YesNoCodeSystem#true
* performer = Reference(CurrentServiceProviderExample)
* basedOn = Reference(CotrimoxazolePreventiveTherapyCareplanWithAdherenceExample)

Instance: CotrimoxazolePreventiveTherapyCareplanExample
InstanceOf: CotrimoxazolePreventiveTherapyCareplan
Usage: #example
Title: "Care Plan - Cotrimoxazole Preventive Therapy"
Description: "Used to record the cotrimoxazole preventive therapy details for the patient."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $LNC#LP173209-0
* category[=].text = "Cotrimoxazole Preventive Therapy"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].reference = Reference(CotrimoxazolePreventiveTherapyMedicationRequestExample)

Instance: CotrimoxazolePreventiveTherapyCareplanWithAdherenceExample
InstanceOf: CotrimoxazolePreventiveTherapyCareplan
Usage: #example
Title: "Care Plan - Cotrimoxazole Preventive Therapy With Adherence Indication"
Description: "Used to record the cotrimoxazole preventive therapy details for the patient (incl. adherence)."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $LNC#LP173209-0
* category[=].text = "Cotrimoxazole Preventive Therapy"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].reference = Reference(CotrimoxazolePreventiveTherapyMedicationRequestExample)
* activity[=].extension[Adherence].valueReference = Reference(CotrimoxazolePreventiveTherapyGoodAdherenceExample)

Instance: CotrimoxazolePreventiveTherapyMedicationRequestExample
InstanceOf: CotrimoxazolePreventiveTherapyMedicationRequest
Usage: #example
Title: "Medication Request - Cotrimoxazole Preventive Therapy"
Description: "Used to record requests for medication that are prescribed to a patient receiving cotrimoxazole preventive therapy."
* identifier[RequestID].value = "prescription-12345"
* identifier[RequestID].system = $PrescriptionID
//* identifier[RequestID].type = $IdentifierTypeCodeSystem#FILL
//* identifier[RequestID].type.text = "Prescription identifier"
* authoredOn = "2023-10-11T17:21:33-08:00"
* status = #completed
* intent = #order
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* medicationReference = Reference(CotrimoxazoleMedicationExample)
* dispenseRequest.quantity = $OrderableDrugForm_UNIT#TAB 
* dispenseRequest.quantity.unit = "TAB"
* dispenseRequest.quantity.value = 90
* reasonReference = Reference(CotrimoxazolePreventiveTherapyStartedExample)
* basedOn = Reference(CotrimoxazolePreventiveTherapyCareplanWithAdherenceExample)

Instance: CotrimoxazolePreventiveTherapyDispensationExample
InstanceOf: CotrimoxazolePreventiveTherapyDispensation
Usage: #example
Title: "Medication Dispense - Cotrimoxazole Preventive Therapy"
Description: "Used to represent dispensed medication prescribed to a patient receiving cotrimoxazole preventive therapy."
* status = #completed
* medicationReference = Reference(CotrimoxazoleMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)

* quantity = $OrderableDrugForm_UNIT#TAB 
* quantity.unit = "TAB"
* quantity.value = 90

* daysSupply = $UCUM_UNIT#d
* daysSupply.unit = "Days"
* daysSupply.value = 90

* authorizingPrescription = Reference(CotrimoxazolePreventiveTherapyMedicationRequestExample)
* whenHandedOver = "2012-12-09"

Instance: CotrimoxazolePreventiveTherapyGoodAdherenceExample
InstanceOf: CotrimoxazolePreventiveTherapyAdherenceObservation
Usage: #example
Title: "Observation - Good Cotrimoxazole Preventive Therapy Adherence"
Description: "Represents the patient's cotrimoxazole preventive therapy Adherence"
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#418633004
* code.text = "Medication adherence"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $ARVAdherence#Good
* valueCodeableConcept.text = "Good"

Instance: CotrimoxazolePreventiveTherapyStoppedAdherenceExample
InstanceOf: CotrimoxazolePreventiveTherapyAdherenceObservation
Usage: #example
Title: "Observation - Stopped Cotrimoxazole Preventive Therapy Adherence"
Description: "Represents the patient's cotrimoxazole preventive therapy Adherence"
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#418633004
* code.text = "Medication adherence"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $ARVAdherence#Stopped
* valueCodeableConcept.text = "Stopped"

Instance: CotrimoxazolePreventiveTherapyMedicationAdministrationExample
InstanceOf: CotrimoxazolePreventiveTherapyMedicationAdministration
Usage: #example
Title: "Medication Administration - For Prescribed Cotrimoxazole Preventive Therapy Medication"
Description: "Used to record the medication administration period for prescribed cotrimoxazole preventive therapy medication."
* status = #completed
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* request = Reference(CotrimoxazolePreventiveTherapyMedicationRequestExample)
* effectivePeriod.start = "2012-12-09"
* effectivePeriod.end = "2013-04-08"
* medicationReference = Reference(CotrimoxazoleMedicationExample)

Instance: FluconazolePreventiveTherapyStartedExample
InstanceOf: FluconazolePreventiveTherapy
Usage: #example
Title: "Observation - Fluconazole Preventive Therapy Started"
Description: "Used to indicate that the patient has started fluconazole preventive therapy."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#18924-1
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2024-01-25"
* valueCodeableConcept = $YesNoCodeSystem#true
* performer = Reference(CurrentServiceProviderExample)

Instance: FluconazolePreventiveTherapyMedicationAdministrationExample
InstanceOf: FluconazolePreventiveTherapyMedicationAdministration
Usage: #example
Title: "Medication Administration - For Prescribed Fluconazole Preventive Therapy Medication"
Description: "Used to record the medication administration period for prescribed fluconazole preventive therapy medication."
* status = #completed
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* effectivePeriod.start = "2012-12-09"
* effectivePeriod.end = "2013-04-08"
* medicationReference = Reference(FluconazoleMedicationExample)
* reasonReference = Reference(FluconazolePreventiveTherapyStartedExample)

Instance: StartedARTExample
InstanceOf: HIVProgramStatusObservation
Usage: #example
Title: "Observation - Started ART"
Description: "Used to record the HIV+ tracking details for the patient who started ART."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP95599-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $HIVPositiveTracking#Started-ART
* performer = Reference(CurrentServiceProviderExample)

Instance: ARTNotStartedExample
InstanceOf: HIVProgramStatusObservation
Usage: #example
Title: "Observation - ART Not Started"
Description: "Used to record the HIV+ tracking details for the patient who did not start ART."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP95599-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $HIVPositiveTracking#Not-Started
* performer = Reference(CurrentServiceProviderExample)

Instance: ARTNotStartedWithReasonsExample
InstanceOf: HIVProgramStatusObservation
Usage: #example
Title: "Observation - ART Not Started With Specified Reasons"
Description: "Used to record the HIV+ tracking details for the patient who did not start ART (Incl. Reasons For Not Starting ART)."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP95599-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $HIVPositiveTracking#Not-Started
* performer = Reference(CurrentServiceProviderExample)
* hasMember[ReasonsARTNotStarted] = Reference(HIVProgramStatusReasonARTNotStartedExample)

Instance: HIVProgramStatusReasonARTNotStartedExample
InstanceOf: HIVProgramStatusReasonARTNotStartedObservation
Usage: #example
Title: "Observation - Reason ART Not Started"
Description: "Represents the reason for the patient not starting ART as being \"Referred\"."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#87534-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $LNC#LP73973-7
* performer = Reference(CurrentServiceProviderExample)

Instance: HIVProgramStatusReasonARTNotStartedWithPlanForNextStepExample
InstanceOf: HIVProgramStatusReasonARTNotStartedObservation
Usage: #example
Title: "Observation - Reason ART Not Started With Plan For Next Steps"
Description: "Represents the reason for the patient not starting ART as being \"Referred\" and also includes the plan or next steps."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#87534-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $LNC#LP73973-7
* performer = Reference(CurrentServiceProviderExample)
* hasMember = Reference(ARTNotStartedPlanForNextStepObservationExample)

Instance: ARTNotStartedPlanForNextStepObservationExample
InstanceOf: ARTNotStartedPlanForNextStepObservation
Usage: #example
Title: "Observation - ART Not Started Plan For Next Step"
Description: "Represents the plan for next steps for a patient who did not start ART."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP127912-6
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $SCT#710838003
* performer = Reference(CurrentServiceProviderExample)

Instance: LinkedToCareExample
InstanceOf: HIVProgramStatusObservation
Usage: #example
Title: "Observation - Linked To Care"
Description: "Used to record the HIV+ tracking details for the patient who has been linked to care."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP95599-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $HIVPositiveTracking#Linked-To-Care
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-11-27"
* performer = Reference(CurrentServiceProviderExample)

Instance: LinkedToCareAndInitiatedARTExample
InstanceOf: HIVProgramStatusObservation
Usage: #example
Title: "Observation - Linked To Care and initiated ART"
Description: "Used to record the HIV+ tracking details for the patient who has been linked to care and initiated on ART."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP95599-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $HIVPositiveTracking#Linked-To-Care
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-11-27"
* performer = Reference(CurrentServiceProviderExample)
* basedOn = Reference(ARTInitiatedARTFollowUpCareplanExample)

Instance: HIVProgramFinalOutcomeKnownExample
InstanceOf: HIVProgramFinalOutcomeKnownObservation
Usage: #example
Title: "Observation - HIV Program Final Outcome is \"Known\""
Description: "Indicates that the final outcome is known for the patient who is enrolled into the HIV program."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#18776-5
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $YesNoCodeSystem#true
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-11-27"
* performer = Reference(CurrentServiceProviderExample)

Instance: HIVProgramFinalOutcomeKnownAsStartedARTExample
InstanceOf: HIVProgramFinalOutcomeKnownObservation
Usage: #example
Title: "Observation - HIV Program Final Outcome is \"Known\" With an Outcome of \"Started ART\""
Description: "Indicates that the final outcome is known for the patient who is enrolled into the HIV program."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#18776-5
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $YesNoCodeSystem#true
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-11-27"
* performer = Reference(CurrentServiceProviderExample)
* hasMember = Reference(FinalOutcomeStartedARTExample)

Instance: FinalOutcomeStartedARTExample
InstanceOf: FinalOutcomeObservation
Usage: #example
Title: "Observation - Final Outcome is \"Started ART\""
Description: "Used to record the HIV+ tracking details for the patient who has received a final outcome."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#63939-3
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $LNC#63936-9
* performer = Reference(CurrentServiceProviderExample)

Instance: FinalOutcomeConfirmedReferralExample
InstanceOf: FinalOutcomeObservation
Usage: #example
Title: "Observation - Final Outcome is \"Confirmed Referral\""
Description: "Used to record the HIV+ tracking details for the patient who has received a final outcome that is a confirmed referral."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#63939-3
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $LNC#39266-2
* performer = Reference(CurrentServiceProviderExample)
* basedOn = Reference(ReferralOutServiceRequestExample)

Instance: HIVProgramFinalOutcomeKnownAsConfirmedReferralExample
InstanceOf: HIVProgramFinalOutcomeKnownObservation
Usage: #example
Title: "Observation - HIV Program Final Outcome is \"Known\" With an Outcome of \"Confirmed Referral\""
Description: "Indicates that the final outcome is known for the patient who is enrolled into the HIV program."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#18776-5
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $YesNoCodeSystem#true
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-11-27"
* performer = Reference(CurrentServiceProviderExample)
* hasMember = Reference(FinalOutcomeConfirmedReferralExample)

Instance: StartedARTEntryWithinFacilityExample
InstanceOf: HIVProgramStatusObservation
Usage: #example
Title: "Observation - Started ART With Entry Point Within Facility (TB Clinic)"
Description: "Used to record the HIV+ tracking details for the patient who started ART within the facility."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP95599-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(EncounterWithEntryPointTBClinicExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $HIVPositiveTracking#Started-ART
* performer = Reference(CurrentServiceProviderExample)

Instance: StartedARTEntryFromOutsideFacilityExample
InstanceOf: HIVProgramStatusObservation
Usage: #example
Title: "Observation - Started ART With Entry Point From Outside the Facility"
Description: "Used to record the HIV+ tracking details for the patient who started ART outside the facility."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP95599-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(EntryFromOutsideTargetFacilityEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $HIVPositiveTracking#Started-ART
* performer = Reference(CurrentServiceProviderExample)

Instance: RelatedPersonStartedARTEntryWithinFacilityExample
InstanceOf: HIVProgramStatusObservation
Usage: #example
Title: "Observation - A Related Person Who is Now a Patient, Started ART With Entry Point Within Facility (TB Clinic)"
Description: "Used to record the HIV+ tracking details for the patient who started ART within the facility."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP95599-4
* subject = Reference(SexualPartnerRelatedPersonBecomesPatientExample)
* encounter = Reference(EncounterWithEntryPointTBClinicExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $HIVPositiveTracking#Started-ART
* performer = Reference(CurrentServiceProviderExample)

Instance: StartedARTWithFinalOutcomeReferenceExample
InstanceOf: HIVProgramStatusObservation
Usage: #example
Title: "Observation - Started ART and The Final Outcome Is Known"
Description: "Used to record the HIV+ tracking details for the patient who started ART (Incl. Final Outcome Details)."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP95599-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-11-27"
* valueCodeableConcept = $HIVPositiveTracking#Started-ART
* performer = Reference(CurrentServiceProviderExample)
* hasMember[FinalOutcomeKnown] = Reference(HIVProgramFinalOutcomeKnownAsStartedARTExample)
* hasMember[FinalOutcome] = Reference(FinalOutcomeStartedARTExample)

Instance: TBTreatmentNotStartedObservationExample
InstanceOf: TBTreatmentStartedObservation
Usage: #example
Title: "Observation - TB Treatment Not Started"
Description: "Indicates that the patient did not start TB treatment."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#45242-5
* code.text = "Tuberculosis treatment started"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#false

Instance: TBTreatmentNotStartedAfterDiagnosticTestObservationExample
InstanceOf: TBTreatmentStartedObservation
Usage: #example
Title: "Observation - TB Treatment Not Started After Diagnostic Test"
Description: "Indicates that the patient did not start TB treatment after being tested."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#45242-5
* code.text = "Tuberculosis treatment started"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#false
* derivedFrom[+] = Reference(TBDiagnosticTestResultExample)

Instance: TBTreatmentStartedObservationExample
InstanceOf: TBTreatmentStartedObservation
Usage: #example
Title: "Observation - TB Treatment Started"
Description: "Indicates that the patient did start TB treatment."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#45242-5
* code.text = "Tuberculosis treatment started"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#true
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-10-21"

Instance: TBTreatmentStartedAfterDiagnosticTestObservationExample
InstanceOf: TBTreatmentStartedObservation
Usage: #example
Title: "Observation - TB Treatment Started After Diagnostic Test"
Description: "Indicates that the patient did start TB treatment after being tested."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#45242-5
* code.text = "Tuberculosis treatment started"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#true
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-10-21"
* derivedFrom[+] = Reference(TBDiagnosticTestResultExample)
* basedOn[+] = Reference(TBTreatmentCareplanExample)

Instance: ActiveTBDiscontinuedObservationExample
InstanceOf: TreatmentDiscontinuedObservation
Usage: #example
Title: "Observation - Active TB Discontinued"
Description: "Documents the details for the patient who discontinued TB treatment."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#182840001
* code.text = "Tuberculosis treatment discontinued"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueDateTime = "2023-12-11"

Instance: ActiveTBCompletedObservationExample
InstanceOf: TreatmentCompletedObservation
Usage: #example
Title: "Observation - Active TB Completed"
Description: "Documents the details for the patient who completed TB treatment."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#182992009
* code.text = "Tuberculosis treatment completed"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueDateTime = "2023-12-11"

Instance: TBTreatmentStatusRx1ObservationExample
InstanceOf: TBTreatmentStatusObservation
Usage: #example
Title: "Observation - TB Treatment Status (TBRx1)"
Description: "Indicates that the patient's current TB treatment status is TBRx1."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#45241-7
* code.text = "Tuberculosis status"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $TBTreatmentStatusCodeSystem#TBRx1
//* derivedFrom = Reference(TBTreatmentStartedAfterDiagnosticTestObservationExample)

Instance: TBTreatmentStatusRxDiscontinuedObservationExample
InstanceOf: TBTreatmentStatusObservation
Usage: #example
Title: "Observation - TB Treatment Status (TBRx-discontinued)"
Description: "Indicates that the patient's current TB treatment status is TBRx-discontinued."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#45241-7
* code.text = "Tuberculosis status"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $TBTreatmentStatusCodeSystem#TBRx-discontinued
* hasMember[ActiveTBDiscontinued] = Reference(ActiveTBDiscontinuedObservationExample)
//* derivedFrom = Reference(TBTreatmentStartedAfterDiagnosticTestObservationExample)

Instance: TBTreatmentStatusRxCompletedObservationExample
InstanceOf: TBTreatmentStatusObservation
Usage: #example
Title: "Observation - TB Treatment Status (TBRx-completed)"
Description: "Indicates that the patient's current TB treatment status is TBRx-completed."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#45241-7
* code.text = "Tuberculosis status"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $TBTreatmentStatusCodeSystem#TBRx-completed
* hasMember[ActiveTBCompleted] = Reference(ActiveTBCompletedObservationExample)
//* derivedFrom = Reference(TBTreatmentStartedAfterDiagnosticTestObservationExample)

Instance: TPTStartedObservationExample
InstanceOf: TPTStartedObservation
Usage: #example
Title: "Observation - TPT Started"
Description: "Documents the date when the patient started TB Prevention Therapy (TPT)."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#422181004
* code.text = "TPT start date"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueDateTime = "2023-12-11"
* derivedFrom = Reference(EligibleForTPTExample)

Instance: TPTStartedWithINHObservationExample
InstanceOf: TPTStartedObservation
Usage: #example
Title: "Observation - TPT Started with INH"
Description: "Documents the date when the patient started TB Prevention Therapy (TPT) and in this case, with INH."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#422181004
* code.text = "TPT start date"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueDateTime = "2023-12-11"
* derivedFrom = Reference(EligibleForTPTExample)
* hasMember = Reference(TBProphylaxisTypeINHObservationExample)

Instance: TBProphylaxisTypeINHObservationExample
InstanceOf: TBProphylaxisTypeObservation
Usage: #example
Title: "Observation - TB Prophylaxis Type is \"Isoniazid (INH)\""
Description: "Indicates that the patient is currently receiving INH."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP149760-3
* code.text = "Administered prophylaxis"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $LNC#18934-0

Instance: TBProphylaxisTypeisINHAtFollowUpObservationExample
InstanceOf: TBProphylaxisTypeObservation
Usage: #example
Title: "Observation - TB Prophylaxis Type is \"Isoniazid (INH)\" at Follow-up"
Description: "Indicates that the patient is receiving another dose of INH at follow-up."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP149760-3
* code.text = "Administered prophylaxis"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $LNC#18934-0
* hasMember[INHFollowUp] = Reference(INHAtFollowupObservationExample)

Instance: TBProphylaxisTypeAlternateAndFor3HPObservationExample
InstanceOf: TBProphylaxisTypeObservation
Usage: #example
Title: "Observation - TB Prophylaxis Type is \"Alternate\" (3HP)"
Description: "Indicates that the patient will be receiving an alternate TPT as 3HP."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP149760-3
* code.text = "Administered prophylaxis"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $TPTProphylaxisTypeCodeSystem#Alternate
* hasMember[AltenateProphylaxisType] = Reference(AlternateTBProphylaxisType3HPObservationExample)

Instance: INHAtFollowupObservationExample
InstanceOf: INHAtFollowupObservation
Usage: #example
Title: "Observation - INH1 At Follow-up"
Description: "Indicates that the patient is receiving INH1 at follow-up."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LA21590-7
* code.text = "TPT follow-up isit"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#255216001

Instance: AlternateTBProphylaxisType3HPObservationExample
InstanceOf: AlternateTBProphylaxisTypeObservation
Usage: #example
Title: "Observation - Alternate TB Prophylaxis Type is \"3HP\""
Description: "Indicates that the patient is currently receiving 3HP."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP149760-3
* code.text = "Administered prophylaxis"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#346670008
* hasMember[3HP] = Reference(AlternateTPT3HPAtFollowupObservationExample)

Instance: AlternateTPT3HPAtFollowupObservationExample
InstanceOf: AlternateTPTAtFollowupObservation
Usage: #example
Title: "Observation - 3HP At Follow-up"
Description: "Documents the TPT as 3HP at follow-up."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LA21590-7
* code.text = "TPT follow-up isit"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#255216001

Instance: ProphylaxisTypeisINHAtFollowUpAndCompletedObservationExample
InstanceOf: TBProphylaxisTypeObservation
Usage: #example
Title: "Observation - TB Prophylaxis Type is \"Isoniazid (INH)\" at Follow-up and TPT was completed"
Description: "Indicates that the patient has completed INH at follow-up."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP149760-3
* code.text = "Administered prophylaxis"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $LNC#18934-0
* hasMember[INHFollowUp] = Reference(INHAtFollowupCompletedObservationExample)

Instance: INHAtFollowupCompletedObservationExample
InstanceOf: INHAtFollowupObservation
Usage: #example
Title: "Observation - INH Completed At Follow-up"
Description: "Indicates that the patient has completed INH at follow-up."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LA21590-7
* code.text = "TPT follow-up isit"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#182992009
* hasMember[TPTCompleted] = Reference(TPTCompletedObservationExample)

Instance: TPTCompletedObservationExample
InstanceOf: TreatmentCompletedObservation
Usage: #example
Title: "Observation - TPT Completed"
Description: "Documents the details for the patient who completed TPT."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#182992009
* code.text = "Tuberculosis treatment completed"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueDateTime = "2023-12-11"

Instance: TPTDiscontinuedObservationExample
InstanceOf: TreatmentDiscontinuedObservation
Usage: #example
Title: "Observation - TPT Discontinued"
Description: "Documents the details for the patient who discontinued TPT."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#182840001
* code.text = "Tuberculosis treatment discontinued"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueDateTime = "2023-12-11"

Instance: AlternateTPT3HPAtFollowupCompletedObservationExample
InstanceOf: AlternateTPTAtFollowupObservation
Usage: #example
Title: "Observation - 3HP Completed At Follow-up"
Description: "Indicates that the patient has completed 3HP at follow-up."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LA21590-7
* code.text = "TPT follow-up isit"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#255216001
* hasMember[TPTCompleted] = Reference(TPTCompletedObservationExample)

Instance: AlternateTBProphylaxisCompletedObservationExample
InstanceOf: AlternateTBProphylaxisTypeObservation
Usage: #example
Title: "Observation - Alternate TB Prophylaxis Type is \"3HP\" and TPT was Completed"
Description: "Indicates that the patient has completed 3HP."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP149760-3
* code.text = "Administered prophylaxis"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#346670008
* hasMember[3HP] = Reference(AlternateTPT3HPAtFollowupCompletedObservationExample)

Instance: TBProphylaxisTypeAlternateAndFor3HRObservationExample
InstanceOf: TBProphylaxisTypeObservation
Usage: #example
Title: "Observation - TB Prophylaxis Type is \"Alternate\" (3HR)"
Description: "Indicates that the patient will be receiving an alternate TPT as 3HR."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP149760-3
* code.text = "Administered prophylaxis"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $TPTProphylaxisTypeCodeSystem#Alternate
* hasMember[AltenateProphylaxisType] = Reference(AlternateTBProphylaxisType3HRObservationExample)

Instance: AlternateTBProphylaxisType3HRObservationExample
InstanceOf: AlternateTBProphylaxisTypeObservation
Usage: #example
Title: "Observation - Alternate TB Prophylaxis Type is \"3HR\""
Description: "Indicates that the patient is currently receiving 3HR."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP149760-3
* code.text = "Administered prophylaxis"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#410831004
* hasMember[3HR] = Reference(AlternateTPT3HRAtFollowupObservationExample)

Instance: AlternateTPT3HRAtFollowupObservationExample
InstanceOf: AlternateTPTAtFollowupObservation
Usage: #example
Title: "Observation - 3HR At Follow-up"
Description: "Documents the TPT as 3HR at follow-up."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LA21590-7
* code.text = "TPT follow-up isit"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#255216001

Instance: AlternateTPT3HRAtFollowupDiscontinuedObservationExample
InstanceOf: AlternateTPTAtFollowupObservation
Usage: #example
Title: "Observation - 3HR Discontinued At Follow-up"
Description: "Indicates that the patient has discontinued 3HR at follow-up."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LA21590-7
* code.text = "TPT follow-up isit"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#182840001
* hasMember[TPTDiscontinued] = Reference(TPTDiscontinuedObservationExample)

Instance: AlternateTBProphylaxisDiscontinuedObservationExample
InstanceOf: AlternateTBProphylaxisTypeObservation
Usage: #example
Title: "Observation - Alternate TB Prophylaxis Type is \"3HR\" and TPT was Discontinued"
Description: "Indicates that the patient has discontinued 3HR."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP149760-3
* code.text = "Administered prophylaxis"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#410831004
* hasMember[3HR] = Reference(AlternateTPT3HRAtFollowupDiscontinuedObservationExample)

Instance: TBTreatmentCareplanExample
InstanceOf: TBTreatmentCareplan
Usage: #example
Title: "Care Plan - TB Treatment"
Description: "Used to record the TB treatment details for the patient."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $LNC#LP173209-0
* category[=].text = "TB treatment"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].reference = Reference(TBScreeningServiceRequestExample)
* activity[=].outcomeReference = Reference(TBTreatmentStatusRx1ObservationExample)

Instance: TPTMedicationExample
InstanceOf: TPTMedication
Usage: #example
Title: "Medication - Represents a medication for TB Preventive Therapy (TPT)"
Description: "Used to record the TPT medication that will be prescribed to the patient."
* code = $LNC#18934-0
* code.text = "INH"

Instance: TPTMedicationRequestExample
InstanceOf: TPTMedicationRequest
Usage: #example
Title: "Medication Request - INH For TB Preventive Therapy (TPT)"
Description: "Used to indicate a request for INH medication to be prescribed to a patient."
* identifier[RequestID].value = "prescription-12345"
* identifier[RequestID].system = $PrescriptionID
//* identifier[RequestID].type = $IdentifierTypeCodeSystem#FILL
//* identifier[RequestID].type.text = "Prescription identifier"
* authoredOn = "2023-10-11T17:21:33-08:00"
* status = #completed
* intent = #order
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* medicationReference = Reference(TPTMedicationExample)
* basedOn = Reference(TPTCareplanExample)

Instance: TPTCareplanExample
InstanceOf: TPTCareplan
Usage: #example
Title: "Care Plan - INH For TB Preventive Therapy (TPT)"
Description: "Used to add the details regarding the request for INH medication to the TPT care plan for the patient."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $LNC#LP173209-0
* category[=].text = "TB treatment"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].reference = Reference(TPTMedicationRequestExample)
* activity[=].outcomeReference = Reference(TBProphylaxisTypeINHObservationExample)

Instance: TPTMedicationStatementExample
InstanceOf: TPTMedicationStatement
Usage: #example
Title: "Medication Statement - INH For TB Preventive Therapy (TPT)"
Description: "Adds the prescribed medication of INH to the medication history for the patient."
* status = #active
* medicationReference = Reference(TPTMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* effectivePeriod.start = "2009-11-24"
* reasonReference = Reference(TBProphylaxisTypeINHObservationExample)

Instance: CervicalCancerScreeningServiceRequestForHPVExample
InstanceOf: CervicalCancerScreeningServiceRequest
Usage: #example
Title: "Service Request - Cervical Cancer Screening HPV Method"
Description: "Represents the service request for the HPV method of cervical cancer screening."
* status = #active
* intent = #order
* code = $CERVICAL_CANCER_SCREENING_METHOD#hpv-dna-test
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2024-01-25"

Instance: CervicalCancerDiagnosticReportForHPVExample
InstanceOf: CervicalCancerDiagnosticReport
Usage: #example
Title: "Diagnostic Report - Tested Positive for Cervical Cancer (HPV)"
Description: "Indicates that the patient tested HPV positive for cervical cancer."
* status = #final
* category = $LNC#11502-2
* code = $LNC#72135-7
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* result = Reference(CervicalCancerHPVPositiveScreeningResultExample)
* issued = "2024-01-25T11:45:33+11:00"
* basedOn = Reference(CervicalCancerScreeningServiceRequestForHPVExample)
* performer = Reference(CurrentServiceProviderExample)

Instance: CervicalCancerTreatmentServiceRequestForHPVExample
InstanceOf: CervicalCancerTreatmentServiceRequest
Usage: #example
Title: "Service Request - Request for Cryotherapy as Treatment for Cervical Cancer (HPV Positive)"
Description: "Indicates that a request was made for cryotherapy as the targeted treatment for the HPV positive patient"
* status = #active
* intent = #order
* code =  $PRECANCEROUS_TREAT#cryotherapy
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2024-01-25"
* reasonReference = Reference(CervicalCancerDiagnosticReportForHPVExample)

Instance: CervicalCancerTreatmentReceivedForHPVExample
InstanceOf: CervicalCancerTreatmentReceived
Usage: #example
Title: "Observation - Received Cryotherapy Treatment For the HPV+ Diagnosis"
Description: "Indicates that the patient received cryotherapy as treatment after being diagnosed psoitive for cervical cancer (using HPV as the method)."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LA13405-8
* code.text = "Treatment received"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueDateTime = "2023-12-11"
//* basedOn = Reference(CervicalCancerScreeningServiceRequestForHPVExample)

Instance: CervicalCancerCarePlanHPVExample
InstanceOf: CervicalCancerCarePlan
Usage: #example
Title: "Care Plan - Request for Cervical Cancer Screening (HPV Method)"
Description: "Indicates the activity associated with the request for cervical cancer screening using HPV as the method of screening."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $CarePlan#cervical-cancer-care-plan
* category[=].text = "Cervical cancer"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].reference = Reference(CervicalCancerScreeningServiceRequestForHPVExample)

Instance: CervicalCancerCarePlanHPVWithTreatmentRequestExample
InstanceOf: CervicalCancerCarePlan
Usage: #example
Title: "Care Plan - Request for Cervical Cancer Screening (HPV Method) - Incl. the Service Request For Cryotherapy Treatment"
Description: "Indicates the activities associated with the requests for cervical cancer screening (using HPV as the method) and cryotherapy as the received treatment."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $CarePlan#cervical-cancer-care-plan
* category[=].text = "Cervical cancer"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].reference = Reference(CervicalCancerScreeningServiceRequestForHPVExample)
* activity[=].reference = Reference(CervicalCancerTreatmentServiceRequestForHPVExample)
* activity[=].outcomeReference = Reference(CervicalCancerTreatmentReceivedForHPVExample)

Instance: CervicalCancerScreeningServiceRequestForVIAExample
InstanceOf: CervicalCancerScreeningServiceRequest
Usage: #example
Title: "Service Request - Cervical Cancer Screening VIA Method"
Description: "Represents the service request for the VIA method of cervical cancer screening."
* status = #active
* intent = #order
* code = $CERVICAL_CANCER_SCREENING_METHOD#via-test
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2024-01-25"

Instance: CervicalCancerDiagnosticReportForVIAExample
InstanceOf: CervicalCancerDiagnosticReport
Usage: #example
Title: "Diagnostic Report - Tested Positive for Cervical Cancer (VIA)"
Description: "Indicates that the patient tested VIA positive for cervical cancer."
* status = #final
* category = $LNC#11502-2
* code = $LNC#72135-7
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* result = Reference(CervicalCancerVIAPositiveScreeningResultExample)
* issued = "2024-01-25T11:45:33+11:00"
* basedOn = Reference(CervicalCancerScreeningServiceRequestForVIAExample)
* performer = Reference(CurrentServiceProviderExample)

Instance: CervicalCancerTreatmentServiceRequestForVIAExample
InstanceOf: CervicalCancerTreatmentServiceRequest
Usage: #example
Title: "Service Request - Request for Cryotherapy as Treatment for Cervical Cancer (VIA Positive)"
Description: "Indicates that a request was made for cryotherapy as the targeted treatment for the VIA positive patient"
* status = #active
* intent = #order
* code =  $PRECANCEROUS_TREAT#cryotherapy
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* authoredOn = "2024-01-25"
* reasonReference = Reference(CervicalCancerDiagnosticReportForVIAExample)

Instance: CervicalCancerTreatmentReceivedForVIAExample
InstanceOf: CervicalCancerTreatmentReceived
Usage: #example
Title: "Observation - Received Cryotherapy Treatment For the VIA+ Diagnosis"
Description: "Indicates that the patient received cryotherapy as treatment after being diagnosed psoitive for cervical cancer (using VIA as the method)."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LA13405-8
* code.text = "Treatment received"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueDateTime = "2023-12-11"
//* basedOn = Reference(CervicalCancerScreeningServiceRequestForVIAExample)

Instance: CervicalCancerCarePlanVIAExample
InstanceOf: CervicalCancerCarePlan
Usage: #example
Title: "Care Plan - Request for Cervical Cancer Screening (VIA Method)"
Description: "Indicates the activity associated with the request for cervical cancer screening using VIA as the method of screening."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $CarePlan#cervical-cancer-care-plan
* category[=].text = "Cervical cancer"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].reference = Reference(CervicalCancerScreeningServiceRequestForVIAExample)

Instance: CervicalCancerCarePlanVIAWithTreatmentRequestExample
InstanceOf: CervicalCancerCarePlan
Usage: #example
Title: "Care Plan - Request for Cervical Cancer Screening (VIA Method) - Incl. the Service Request For Cryotherapy Treatment"
Description: "Indicates the activities associated with the requests for cervical cancer screening (using VIA as the method) and cryotherapy as the received treatment."
* status = #active
* intent = #order
* created = "2024-03-20"
* category[+] = $CarePlan#cervical-cancer-care-plan
* category[=].text = "Cervical cancer"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* activity[+].reference = Reference(CervicalCancerScreeningServiceRequestForVIAExample)
* activity[=].reference = Reference(CervicalCancerTreatmentServiceRequestForVIAExample)
* activity[=].outcomeReference = Reference(CervicalCancerTreatmentReceivedForVIAExample)

Instance: OpportunisticInfectionsPulmonaryTBExample
InstanceOf: OpportunisticInfections
Usage: #example
Title: "Condition - Pulmonary Tuberculosis"
Description: "Indicates that the patient is currently suffering from pulmonary tuberculosis."
* code = $SCT#154283005
* code.text = "Pulmonary TB"
* category = $ConditionCategoryCodeSystem#problem-list-item
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus = $ConditionClinicalStatusCodeSystem#active

Instance: OpportunisticInfectionsChronicDiarrheaExample
InstanceOf: OpportunisticInfections
Usage: #example
Title: "Condition - Chronic Diarrhea"
Description: "Indicates that the patient is currently suffering from chronic diarrhea."
* code = $SCT#236071009
* code.text = "Chronic diarrhea"
* category = $ConditionCategoryCodeSystem#problem-list-item
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus = $ConditionClinicalStatusCodeSystem#active

Instance: OpportunisticInfectionsFeverPastExample
InstanceOf: OpportunisticInfections
Usage: #example
Title: "Condition - Fever (Past)"
Description: "Indicates that the patient did suffer from a fever in the past."
* code = $SCT#386661006
* code.text = "Fever"
* category = $ConditionCategoryCodeSystem#problem-list-item
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus = $ConditionClinicalStatusCodeSystem#inactive

Instance: OpportunisticInfectionsFeverCurrentExample
InstanceOf: OpportunisticInfections
Usage: #example
Title: "Condition - Fever (Current)"
Description: "Indicates that the patient is suffering from a recurrent fever."
* code = $SCT#386661006
* code.text = "Fever"
* category = $ConditionCategoryCodeSystem#problem-list-item
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus = $ConditionClinicalStatusCodeSystem#recurrence

Instance: OpportunisticInfectionsBacterialPneumoniaExample
InstanceOf: OpportunisticInfections
Usage: #example
Title: "Condition - Bacterial Pneumonia"
Description: "Indicates that the patient did suffer from bacterial pneumonia in the past."
* code = $SCT#53084003
* code.text = "Bacterial pneumonia"
* category = $ConditionCategoryCodeSystem#problem-list-item
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus = $ConditionClinicalStatusCodeSystem#inactive

Instance: OIMedicalHistoryExample
InstanceOf: MedicalHistory
Usage: #example
Title: "List - Medical History"
Description: "Documents the medical history for the patient"
* code = $LNC#LP73189-0
* mode = #working
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* date = "2024-03-20"
* source = Reference(GeneralPractitionerExample)

* entry[CurrentMedicalInformation][+].item = Reference(OpportunisticInfectionsPulmonaryTBExample)
* entry[CurrentMedicalInformation][+].item = Reference(OpportunisticInfectionsChronicDiarrheaExample)
* entry[CurrentMedicalInformation][+].item = Reference(OpportunisticInfectionsFeverCurrentExample)

* entry[PastMedicalHistory][+].item = Reference(OpportunisticInfectionsFeverPastExample)
* entry[PastMedicalHistory][+].item = Reference(OpportunisticInfectionsBacterialPneumoniaExample)

Instance: NotAssessedForPainObservationExample
InstanceOf: AssessedForPainObservation
Usage: #example
Title: "Observation - Not Assessed for Pain"
Description: "Indicates that the patient has not been assessed for pain."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#LP428833-0
* code.text = "Assessed for pain"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#false

Instance: AssessedForPainObservationExample
InstanceOf: AssessedForPainObservation
Usage: #example
Title: "Observation - Assessed for Pain"
Description: "Indicates that the patient has been assessed for pain."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#LP428833-0
* code.text = "Assessed for pain"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#true
* hasMember = Reference(LevelOfPainObservationExample)

Instance: LevelOfPainObservationExample
InstanceOf: LevelOfPainObservation
Usage: #example
Title: "Observation - Level of Pain"
Description: "Indicates the level of pain the patient is experiencing."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#LL5953-6
* code.text = "Pain interpretation"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#true

Instance: HIVPreventionPlanExample
InstanceOf: HIVPreventionPlan
Usage: #example
Title: "Observation - HIV Prevention Plan"
Description: "Indicates the HIV prevention plan agreed between the clinician and the patient."
* status = #final
* category = $OBSERVATION_CATEGORY#social-history
* code = $SCT#439057000
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* valueCodeableConcept.extension[HIVPreventionPlan][+].valueCodeableConcept = $SCT#266753000
* valueCodeableConcept.extension[HIVPreventionPlan][+].valueCodeableConcept = $LNC#LP157024-3
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)

Instance: NotEnrolledIntoOperationTrippleZeroExample
InstanceOf: OperationTrippleZero
Usage: #example
Title: "Observation - Not Enrolled to Operation Tripple Zero"
Description: "Indicates that the patient was not enrolled into the specialised program, OTZ."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP7652-3
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#false

Instance: EnrolledIntoOperationTrippleZeroExample
InstanceOf: OperationTrippleZero
Usage: #example
Title: "Observation - Enrolled to Operation Tripple Zero"
Description: "Indicates that the patient is enrolled into the specialised program, OTZ."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP7652-3
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#true
* valueCodeableConcept.extension[ObservedDate].valueDateTime = "2023-10-21"

Instance: CurrentHIVTreatmentTherapyDurationExample
InstanceOf: CurrentHIVTreatmentTherapyDuration
Usage: #example
Title: "Observation - Current HIV Treatment Therapy Duration"
Description: "Indicates the duration the patient has been on the current ART."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#45239-1
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueQuantity = $UCUM_UNIT#mo
* valueQuantity.unit = "mo"
* valueQuantity.value = 198

Instance: HIVTreatmentPriorToEnrollmentExample
InstanceOf: HIVTreatmentPriorToEnrollment
Usage: #example
Title: "Observation - HIV Treatment Prior to Enrollment"
Description: "Indicates whether the patient has ever received ART prior to enrollment in the current facility."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#45231-8
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $YesNoCodeSystem#true

Instance: PastCompletedCotrimoxazoleMedicationStatementExample
InstanceOf: OIMedicationStatement
Usage: #example
Title: "Medication Statement - Past Cotrimoxazole (Completed)"
Description: "Records the Cotrimoxazole details for the patient that was prescribed in the past and completed."
* status = #completed
* medicationReference = Reference(CotrimoxazoleMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* effectivePeriod.start = "2018-05-12"
* effectivePeriod.end = "2018-08-13"

Instance: PastStoppedCotrimoxazoleMedicationStatementExample
InstanceOf: OIMedicationStatement
Usage: #example
Title: "Medication Statement - Past Cotrimoxazole (Stopped)"
Description: "Records the Cotrimoxazole details for the patient that was prescribed in the past and stopped."
* status = #stopped
* medicationReference = Reference(CotrimoxazoleMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* effectivePeriod.start = "2018-05-12"
* effectivePeriod.end = "2018-08-13"

Instance: PastAndStillActiveCotrimoxazoleMedicationStatementExample
InstanceOf: OIMedicationStatement
Usage: #example
Title: "Medication Statement - Past Cotrimoxazole (Still active)"
Description: "Records the Cotrimoxazole details for the patient that was prescribed in the past and still active."
* status = #active
* medicationReference = Reference(CotrimoxazoleMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* effectivePeriod.start = "2018-05-12"

Instance: PastActiveTPTMedicationStatementExample
InstanceOf: TPTMedicationStatement
Usage: #example
Title: "Medication Statement - Past INH (Still active)"
Description: "Records the INH details for the patient that was prescribed in the past and still active."
* status = #active
* medicationReference = Reference(TPTMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* effectivePeriod.start = "2009-11-24"

Instance: PastCompletedTPTMedicationStatementExample
InstanceOf: TPTMedicationStatement
Usage: #example
Title: "Medication Statement - Past INH (Completed)"
Description: "Records the INH details for the patient that was prescribed in the past and completed."
* status = #completed
* medicationReference = Reference(TPTMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* effectivePeriod.start = "2018-05-12"
* effectivePeriod.end = "2018-08-13"

Instance: PastInitiatedArvTreatmentAndStillActiveExample
InstanceOf: ARTTreatmentMedicationStatement
Usage: #example
Title: "Medication Statement - Past ARV Treatment Initiated On (Still active)"
Description: "Records the ARV Treatment details for the patient who was initiated on ART in the past and still active."
* status = #active
* medicationReference = Reference(ARVMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* effectivePeriod.start = "2009-11-24"
* effectivePeriod.end = "2018-08-13"

Instance: PastInitiatedArvTreatmentAndStoppedMedicationStatementExample
InstanceOf: ARTTreatmentMedicationStatement
Usage: #example
Title: "Medication Statement - Past ARV Treatment Initiated On (Stopped)"
Description: "Records the ARV Treatment details for the patient who was initiated on ART in the past but stopped treatment"
* status = #stopped
* medicationReference = Reference(ARVMedicationExample)
* subject = Reference(GeneralPatientExample)
* context = Reference(GeneralEncounterExample)
* effectivePeriod.start = "2009-11-24"
* effectivePeriod.end = "2018-08-13"

Instance: MedicationHistoryExample
InstanceOf: MedicationHistory
Usage: #example
Title: "List - History of Past Medication"
Description: "Documents the medication history of previsouly prescribed (cotrimoxazole, isoniazid and ARV) treatment for the patient."
* code = $LNC#8677-7
* mode = #working
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* date = "2024-03-20"
* source = Reference(GeneralPractitionerExample)

* entry[Cotrimoxazole][+].item = Reference(PastStoppedCotrimoxazoleMedicationStatementExample)
* entry[Isoniazid][+].item = Reference(PastCompletedTPTMedicationStatementExample)
* entry[ARV][+].item = Reference(HIVTreatmentPriorToEnrollmentExample)
* entry[ARV][+].item = Reference(PastInitiatedArvTreatmentAndStillActiveExample)
* entry[ARV][+].item = Reference(CurrentHIVTreatmentTherapyDurationExample)

Instance: TemperatureExample
InstanceOf: Temperature
Usage: #example
Title: "Observation - Temperature"
Description: "Indicates the patient's current temperature."
* status = #final
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#8310-5
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueQuantity = $UCUM_UNIT#Cel
* valueQuantity.unit = "degrees C"
* valueQuantity.value = 38

Instance: HeartRateExample
InstanceOf: HeartRate
Usage: #example
Title: "Observation - Heart Rate"
Description: "Indicates the patient's current heart rate."
* status = #final
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#8867-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueQuantity = $UCUM_UNIT#/min
* valueQuantity.unit = "beats/min"
* valueQuantity.value = 44

Instance: BloodPressureExample
InstanceOf: BloodPressure
Usage: #example
Title: "Observation - Blood Pressure"
Description: "Represents the Systolic and Diastolic blood pressure for the patient."
* status = #final
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#85354-9
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2022-11-30"
* performer[+] = Reference(CurrentServiceProviderExample)
* performer[+] = Reference(GeneralPractitionerExample)

* component[Systolic].valueQuantity.value = 106
* component[Systolic].valueQuantity.unit = "mmHg"
* component[Systolic].valueQuantity = $UCUM_UNIT#mm[Hg]

* component[Diastolic].valueQuantity.value = 60
* component[Diastolic].valueQuantity.unit = "mmHg"
* component[Diastolic].valueQuantity = $UCUM_UNIT#mm[Hg]

Instance: RespiratoryRateExample
InstanceOf: RespiratoryRate
Usage: #example
Title: "Observation - Respiratory Rate"
Description: "Indicates the patient's current respiratory rate."
* status = #final
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#9279-1
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueQuantity = $UCUM_UNIT#/min
* valueQuantity.unit = "breaths/min"
* valueQuantity.value = 26

Instance: PresentingFeverSymptomExample
InstanceOf: PresentingSymptomObservation
Usage: #example
Title: "Observation - Presenting Symptoms (Fever)"
Description: "Indicates fever as a symptom presented by the patient in the context of the encounter."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#56817-0
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#386661006
* valueCodeableConcept.text = "Fever"

Instance: PresentingNauseaSymptomExample
InstanceOf: PresentingSymptomObservation
Usage: #example
Title: "Observation - Presenting Symptoms (Nausea)"
Description: "Indicates nausea as a symptom presented by the patient in the context of the encounter."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#56817-0
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#422587007
* valueCodeableConcept.text = "Fever"

Instance: PresentingSymptomsListExample
InstanceOf: PresentingSymptomsHistory
Usage: #example
Title: "List - History of Presenting Symptoms"
Description: "Documents the point in time symptoms presented by the patient in the context of the encounter."
* code = $LNC#29547-7
* mode = #working
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* date = "2024-03-20"
* source = Reference(GeneralPractitionerExample)

* entry[+].item = Reference(PresentingFeverSymptomExample)
* entry[+].item = Reference(PresentingNauseaSymptomExample)

Instance: PhysicalExamLymphNodeObservationExample
InstanceOf: PhysicalExamsObservation
Usage: #example
Title: "Observation - Examination of Lymph node"
Description: "Indicates that the findings of the lymph node examination appear to be Abnormal."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#29544-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $LNC#32450-9
* valueCodeableConcept.text = "Lymph node"
* interpretation = $ObservationInterpretation#A

Instance: PhysicalExamHEENTObservationExample
InstanceOf: PhysicalExamsObservation
Usage: #example
Title: "Observation - Examination of HEENT"
Description: "Indicates that the findings of the HEENT examination appear to be Normal."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#29544-4
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $LNC#11424-9
* valueCodeableConcept.text = "HEENT"
* interpretation = $ObservationInterpretation#N

Instance: DisclosureStatusObservationExample
InstanceOf: DisclosureStatusObservation
Usage: #example
Title: "Observation - Disclosure Status"
Description: "Documents the disclosure of HIV status for minors."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#55277-8
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $SCT#258215001

Instance: IndexCaseScreeningExample1
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Index Case Screening (Example 1)"
Description: "A questionaire response that documents the answers to the eligibility criteria for the index case screening questions."
* questionnaire = Canonical(IndexCaseScreeningQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Is the client newly enrolled, valueCoding, $YesNoCodeSystem#false)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseScreeningExample2
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Index Case Screening (Example 2)"
Description: "A questionaire response that documents the answers to the eligibility criteria for the index case screening questions."
* questionnaire = Canonical(IndexCaseScreeningQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Is the client newly enrolled, valueCoding, $YesNoCodeSystem#true)
* item[=]
  * answer.extension[+].valueReference = Reference(LinkedToCareExample)
  * answer.extension[=].url = "http://moh.gov.et/fhir/hiv/StructureDefinition/resource-value-reference"

* insert QuestionResponse(1.2, Does the client have a high viral load, valueCoding, $YesNoCodeSystem#true)
* item[=]
  * answer.extension[+].valueReference = Reference(UnsuppressedViralLoadResultExample)
  * answer.extension[=].url = "http://moh.gov.et/fhir/hiv/StructureDefinition/resource-value-reference"

* insert QuestionResponse(1.3, Does the client have an ART status of Restart, valueCoding, $YesNoCodeSystem#false)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseScreeningFullExample
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Index Case Screening (Full Example)"
Description: "A questionaire response that documents the answers to the eligibility criteria for the index case screening questions."
* questionnaire = Canonical(IndexCaseScreeningQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Is the client newly enrolled, valueCoding, $YesNoCodeSystem#false)

* insert QuestionResponse(1.2, Does the client have a high viral load, valueCoding, $YesNoCodeSystem#false)
* item[=]
  * answer.extension[+].valueReference = Reference(SuppressedViralLoadResultExample)
  * answer.extension[=].url = "http://moh.gov.et/fhir/hiv/StructureDefinition/resource-value-reference"

* insert QuestionResponse(1.3, Does the client have an ART status of Restart, valueCoding, $YesNoCodeSystem#false)

* insert QuestionResponse(1.4, Is the client with a new partner, valueCoding, $YesNoCodeSystem#true)
* item[=]
  * answer.extension[+].valueReference = Reference(PartnerRelatedPersonExample)
  * answer.extension[=].url = "http://moh.gov.et/fhir/hiv/StructureDefinition/resource-value-reference"

* insert QuestionResponse(1.5, Is the client with a partner not yet disclosed, valueCoding, $YesNoCodeSystem#true)

* insert QuestionResponse(1.6, Is the client with a partner who has not been tested yet for HIV, valueCoding, $YesNoCodeSystem#false)

* insert QuestionResponse(1.7, Is the client in care with STI, valueCoding, $YesNoCodeSystem#false)

* insert QuestionResponse(1.8, Does the client have a child under 15yrs of age who is not tested, valueCoding, $YesNoCodeSystem#true)

* insert QuestionResponse(1.9, Is the client Known Positive, valueCoding, $YesNoCodeSystem#false)

* insert QuestionResponse(1.10, Is the client eligible for partner and FBICT, valueCoding, $YesNoCodeSystem#false)

* insert QuestionResponse(1.11, Is the index case offered with partner and FBICT services, valueCoding, $YesNoCodeSystem#false)

* insert QuestionResponse(1.12, Has the client accepted the offer for partner and FBICT, valueCoding, $YesNoCodeSystem#false)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: MaternalHIVStatusKPExample
InstanceOf: MaternalHIVStatusObservation
Usage: #example
Title: "Observation - Maternal HIV Status is Known Positive"
Description: "Indicates that the mother already knows her HIV status."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#75179-2
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $LNC#94652-5

Instance: MaternalHIVStatusUnknownExample
InstanceOf: MaternalHIVStatusObservation
Usage: #example
Title: "Observation - Maternal HIV Status is Unknown"
Description: "Indicates that the mother's HIV status is unknown."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#75179-2
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueCodeableConcept = $LNC#LA29947-1

Instance: IndexCaseContactsElicitedExample
InstanceOf: IndexCaseContactsElicitedObservation
Usage: #example
Title: "Observation - Number of Contacts Elicited For Index Case"
Description: "Documents the total number of contacts elicited for the index case."
* status = #final
* category = $OBSERVATION_CATEGORY#social-history
* code = $SCT#365951004
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueInteger = 2

Instance: IndexCaseAssessmentExample1
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Index Case Assessment (Example 1)"
Description: "A questionaire response that documents the answers to the questions that assesses the index case during interviews."
* questionnaire = Canonical(IndexCaseAssessmentQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Did the index case agree to be interviewed, valueCoding, $YesNoCodeSystem#false)
* insert QuestionResponse(1.2, Reason for not being interviewed, valueCoding, $LNC#81954-0)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseAssessmentExample2
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Index Case Assessment (Example 2)"
Description: "A questionaire response that documents the answers to the questions that assesses the index case during interviews."
* questionnaire = Canonical(IndexCaseAssessmentQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Did the index case agree to be interviewed, valueCoding, $YesNoCodeSystem#false)
* insert QuestionResponse(1.2, Reason for not being interviewed, valueCoding, $LNC#LA46-8)
* insert QuestionResponse(1.3, Other Reason for not being interviewed, valueString, "some other reason")

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseAssessmentExample3
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Index Case Assessment (Example 3)"
Description: "A questionaire response that documents the answers to the questions that assesses the index case during interviews."
* questionnaire = Canonical(IndexCaseAssessmentQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Did the index case agree to be interviewed, valueCoding, $YesNoCodeSystem#true)
* insert QuestionResponse(1.4, When did the index case receive the interview, valueDate, 2008-10-13)
* insert QuestionResponse(1.5, Was the index case interviewed for partner services, valueCoding, $YesNoCodeSystem#false)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseAssessmentExample4
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Index Case Assessment (Example 4)"
Description: "A questionaire response that documents the answers to the questions that assesses the index case during interviews."
* questionnaire = Canonical(IndexCaseAssessmentQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Did the index case agree to be interviewed, valueCoding, $YesNoCodeSystem#true)
* insert QuestionResponse(1.4, When did the index case receive the interview, valueDate, 2008-10-13)
* insert QuestionResponse(1.5, Was the index case interviewed for partner services, valueCoding, $YesNoCodeSystem#true)
* insert QuestionResponse(1.6, When was the index case interviewed for partner services, valueDate, 2008-10-13)
* insert QuestionResponse(1.7, Number of sexual partners in past 12 months, valueInteger, 4)
* insert QuestionResponse(1.8, Number of sexual partners in past 24 months, valueInteger, 6)
* insert QuestionResponse(1.9, Is the index client willing to identify the sex partners, valueCoding, $YesNoCodeSystem#false)
* insert QuestionResponse(1.10, Reason for not being able to identify the sex partners, valueString, "some other reason")

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseAssessmentFullExample
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Index Case Assessment (Full Example)"
Description: "A questionaire response that documents the answers to the questions that assesses the index case during interviews."
* questionnaire = Canonical(IndexCaseAssessmentQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Did the index case agree to be interviewed, valueCoding, $YesNoCodeSystem#true)
* insert QuestionResponse(1.4, When did the index case receive the interview, valueDate, 2008-10-13)
* insert QuestionResponse(1.5, Was the index case interviewed for partner services, valueCoding, $YesNoCodeSystem#true)
* insert QuestionResponse(1.6, When was the index case interviewed for partner services, valueDate, 2008-10-13)
* insert QuestionResponse(1.7, Number of sexual partners in past 12 months, valueInteger, 4)
* insert QuestionResponse(1.8, Number of sexual partners in past 24 months, valueInteger, 6)
* insert QuestionResponse(1.9, Is the index client willing to identify the sex partners, valueCoding, $YesNoCodeSystem#true)
* insert QuestionResponse(1.11, What is the next visit date, valueDate, 2008-11-13)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseContactHealthStatusSexPartnerExample
InstanceOf: HealthStatus
Usage: #example
Title: "Observation - Health Status (Index Case Contact - Sex Partner)"
Description: "This is used to record the health status for the index case contact."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#11323-3
* code.text = "Health Status"
* valueCodeableConcept = $LNC#LA14937-9
* subject = Reference(SexualPartnerRelatedPersonBecomesPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: IndexCaseContactHealthStatusFamilyMemberExample
InstanceOf: HealthStatus
Usage: #example
Title: "Observation - Health Status (Index Case Contact - Family Member)"
Description: "This is used to record the health status for the index case contact."
* status = #final
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#11323-3
* code.text = "Health Status"
* valueCodeableConcept = $LNC#LA14937-9
* subject = Reference(ChildRelatedPersonBecomesPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"

Instance: FamilyIndexCaseContactsExample1
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Family Index Case Contacts (Example 1)"
Description: "A questionaire response that documents the answers to the questions regarding the HIV and health status for index case contacts."
* questionnaire = Canonical(FamilyIndexCaseContactsQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Currently living with the index case, valueCoding, $YesNoCodeSystem#false)
* insert QuestionResponseForReference(1.2, What is the contact's current health status, IndexCaseContactHealthStatusFamilyMemberExample)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Has the contact been previsouly tested for HIV, valueCoding, $YesNoCodeSystem#false)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: FamilyIndexCaseContactsExample2
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Family Index Case Contacts (Example 2)"
Description: "A questionaire response that documents the answers to the questions regarding the HIV and health status for index case contacts."
* questionnaire = Canonical(FamilyIndexCaseContactsQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Currently living with the index case, valueCoding, $YesNoCodeSystem#false)
* insert QuestionResponseForReference(1.2, What is the contact's current health status, IndexCaseContactHealthStatusFamilyMemberExample)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Has the contact been previsouly tested for HIV, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(2.2, Date of previous HIV test, valueDate, 2008-10-13)
  * insert QuestionResponseForQuantity(2.3, Previous HIV test result, 1001, 1/mL, copies/mL)

* item[+].linkId = "3"
* item[=]
  * insert QuestionResponse(3.1, Will the contact be counseled for HIV today, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(3.2, Will the contact be tested for HIV, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(3.5, Reason for not being tested for HIV, valueCoding, $LNC#LA4389-8)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: FamilyIndexCaseContactsExample3
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Family Index Case Contacts (Example 3)"
Description: "A questionaire response that documents the answers to the questions regarding the HIV and health status for index case contacts."
* questionnaire = Canonical(FamilyIndexCaseContactsQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Currently living with the index case, valueCoding, $YesNoCodeSystem#false)
* insert QuestionResponseForReference(1.2, What is the contact's current health status, IndexCaseContactHealthStatusFamilyMemberExample)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Has the contact been previsouly tested for HIV, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(2.2, Date of previous HIV test, valueDate, 2008-10-13)
  * insert QuestionResponseForQuantity(2.3, Previous HIV test result, 1001, 1/mL, copies/mL)

* item[+].linkId = "3"
* item[=]
  * insert QuestionResponse(3.1, Will the contact be counseled for HIV today, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(3.2, Will the contact be tested for HIV, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(3.5, Reason for not being tested for HIV, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.6, Other reason for not being tested for HIV, valueString, "some other reason")

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: FamilyIndexCaseContactsFullExample
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Family Index Case Contacts (Full Example)"
Description: "A questionaire response that documents the answers to the questions regarding the HIV and health status for index case contacts."
* questionnaire = Canonical(FamilyIndexCaseContactsQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Currently living with the index case, valueCoding, $YesNoCodeSystem#false)
* insert QuestionResponseForReference(1.2, What is the contact's current health status, IndexCaseContactHealthStatusFamilyMemberExample)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Has the contact been previsouly tested for HIV, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(2.2, Date of previous HIV test, valueDate, 2008-10-13)
  * insert QuestionResponseForQuantity(2.3, Previous HIV test result, 1001, 1/mL, copies/mL)

* item[+].linkId = "3"
* item[=]
  * insert QuestionResponse(3.1, Will the contact be counseled for HIV today, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(3.2, Will the contact be tested for HIV, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(3.3, Date of HIV test, valueDate, 2008-10-13)
  * insert QuestionResponseForQuantity(3.4, HIV test result, 845, 1/mL, copies/mL)

* item[+].linkId = "4"
* item[=]
  * insert QuestionResponse(4.1, Is the contact linked to HIV care, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponseForReference(4.2, Contact identifiers, ChildRelatedPersonBecomesPatientExample)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseSexPartnerExample1
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Sex Partner Information (Example 1)"
Description: "A questionaire response that documents the answers to the questions regarding index case sex partners."
* questionnaire = Canonical(IndexCaseSexPartnerQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Date of last exposure, valueDate, 2008-10-13)
* insert QuestionResponse(1.2, Period of exposure if the exact date of exposure is not known, valueCoding, $PeriodOfExposureCodeSystem#<3Mths)
* insert QuestionResponse(1.3, Priority category, valueInteger, 2)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Violence Assessment Completed, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponseWithoutText(2.2, valueCoding, $YesNoCodeSystem#false)
  * item[=]
    * text = "Have you been kicked, hit, slapped, or otherwise physically hurt by your partner"
  * insert QuestionResponse(2.3, Has you partner ever threatened to hurt you, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(2.4, Has you partner ever forced or coerced you to engage in unwanted sexual activity, valueCoding, $YesNoCodeSystem#true)

* item[+].linkId = "3"
* item[=]
  * insert QuestionResponse(3.1, What is the plan for notifying the partner regarding the index case's HIV status, valueCoding, $PartnerNotificationPlanCodeSystem#Provider-Referral)
  * insert QuestionResponse(3.2, Was the partner notified, valueCoding, $YesNoCodeSystem#true)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseSexPartnerExample2
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Sex Partner Information (Example 2)"
Description: "A questionaire response that documents the answers to the questions regarding index case sex partners."
* questionnaire = Canonical(IndexCaseSexPartnerQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Date of last exposure, valueDate, 2008-10-13)
* insert QuestionResponse(1.2, Period of exposure if the exact date of exposure is not known, valueCoding, $PeriodOfExposureCodeSystem#<3Mths)
* insert QuestionResponse(1.3, Priority category, valueInteger, 2)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Violence Assessment Completed, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponseWithoutText(2.2, valueCoding, $YesNoCodeSystem#false)
  * item[=]
    * text = "Have you been kicked, hit, slapped, or otherwise physically hurt by your partner"
  * insert QuestionResponse(2.3, Has you partner ever threatened to hurt you, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(2.4, Has you partner ever forced or coerced you to engage in unwanted sexual activity, valueCoding, $YesNoCodeSystem#true)

* item[+].linkId = "3"
* item[=]
  * insert QuestionResponse(3.1, What is the plan for notifying the partner regarding the index case's HIV status, valueCoding, $PartnerNotificationPlanCodeSystem#Provider-Referral)
  * insert QuestionResponse(3.2, Was the partner notified, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(3.3, Reason for not being notified, valueCoding, $LNC#LA4389-8)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseSexPartnerExample3
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Sex Partner Information (Example 3)"
Description: "A questionaire response that documents the answers to the questions regarding index case sex partners."
* questionnaire = Canonical(IndexCaseSexPartnerQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Date of last exposure, valueDate, 2008-10-13)
* insert QuestionResponse(1.2, Period of exposure if the exact date of exposure is not known, valueCoding, $PeriodOfExposureCodeSystem#<3Mths)
* insert QuestionResponse(1.3, Priority category, valueInteger, 2)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Violence Assessment Completed, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponseWithoutText(2.2, valueCoding, $YesNoCodeSystem#false)
  * item[=]
    * text = "Have you been kicked, hit, slapped, or otherwise physically hurt by your partner"
  * insert QuestionResponse(2.3, Has you partner ever threatened to hurt you, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(2.4, Has you partner ever forced or coerced you to engage in unwanted sexual activity, valueCoding, $YesNoCodeSystem#true)

* item[+].linkId = "3"
* item[=]
  * insert QuestionResponse(3.1, What is the plan for notifying the partner regarding the index case's HIV status, valueCoding, $PartnerNotificationPlanCodeSystem#Provider-Referral)
  * insert QuestionResponse(3.2, Was the partner notified, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(3.3, Reason for not being notified, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.4, Other Reason for not being notified, valueString, "some reason")
  * insert QuestionResponse(3.5, Date notification offered, valueDate, 2008-10-13)
  * insert QuestionResponse(3.6, Date partner contacted, valueDate, 2008-10-13)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseSexPartnerExample4
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Sex Partner Information (Example 4)"
Description: "A questionaire response that documents the answers to the questions regarding index case sex partners."
* questionnaire = Canonical(IndexCaseSexPartnerQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Date of last exposure, valueDate, 2008-10-13)
* insert QuestionResponse(1.2, Period of exposure if the exact date of exposure is not known, valueCoding, $PeriodOfExposureCodeSystem#<3Mths)
* insert QuestionResponse(1.3, Priority category, valueInteger, 2)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Violence Assessment Completed, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponseWithoutText(2.2, valueCoding, $YesNoCodeSystem#false)
  * item[=]
    * text = "Have you been kicked, hit, slapped, or otherwise physically hurt by your partner"
  * insert QuestionResponse(2.3, Has you partner ever threatened to hurt you, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(2.4, Has you partner ever forced or coerced you to engage in unwanted sexual activity, valueCoding, $YesNoCodeSystem#true)

* item[+].linkId = "3"
* item[=]
  * insert QuestionResponse(3.1, What is the plan for notifying the partner regarding the index case's HIV status, valueCoding, $PartnerNotificationPlanCodeSystem#Provider-Referral)
  * insert QuestionResponse(3.2, Was the partner notified, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(3.3, Reason for not being notified, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.4, Other Reason for not being notified, valueString, "some reason")
  * insert QuestionResponse(3.5, Date notification offered, valueDate, 2008-10-13)
  * insert QuestionResponse(3.7, Reason partner not contacted, valueCoding, $IndexCasePartnerQuestionnaireCodeSystem#Partner-Unreachable)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseSexPartnerExample5
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Sex Partner Information (Example 5)"
Description: "A questionaire response that documents the answers to the questions regarding index case sex partners."
* questionnaire = Canonical(IndexCaseSexPartnerQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Date of last exposure, valueDate, 2008-10-13)
* insert QuestionResponse(1.2, Period of exposure if the exact date of exposure is not known, valueCoding, $PeriodOfExposureCodeSystem#<3Mths)
* insert QuestionResponse(1.3, Priority category, valueInteger, 2)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Violence Assessment Completed, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponseWithoutText(2.2, valueCoding, $YesNoCodeSystem#false)
  * item[=]
    * text = "Have you been kicked, hit, slapped, or otherwise physically hurt by your partner"
  * insert QuestionResponse(2.3, Has you partner ever threatened to hurt you, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(2.4, Has you partner ever forced or coerced you to engage in unwanted sexual activity, valueCoding, $YesNoCodeSystem#true)

* item[+].linkId = "3"
* item[=]
  * insert QuestionResponse(3.1, What is the plan for notifying the partner regarding the index case's HIV status, valueCoding, $PartnerNotificationPlanCodeSystem#Provider-Referral)
  * insert QuestionResponse(3.2, Was the partner notified, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(3.3, Reason for not being notified, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.4, Other Reason for not being notified, valueString, "some reason")
  * insert QuestionResponse(3.5, Date notification offered, valueDate, 2008-10-13)
  * insert QuestionResponse(3.7, Reason partner not contacted, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.8, Other Reason partner not contacted, valueString, "some reason")

* item[+].linkId = "4"
* item[=]
  * insert QuestionResponse(4.1, Has the partner been previsouly tested for HIV, valueCoding, $YesNoCodeSystem#false)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseSexPartnerExample6
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Sex Partner Information (Example 6)"
Description: "A questionaire response that documents the answers to the questions regarding index case sex partners."
* questionnaire = Canonical(IndexCaseSexPartnerQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Date of last exposure, valueDate, 2008-10-13)
* insert QuestionResponse(1.2, Period of exposure if the exact date of exposure is not known, valueCoding, $PeriodOfExposureCodeSystem#<3Mths)
* insert QuestionResponse(1.3, Priority category, valueInteger, 2)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Violence Assessment Completed, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponseWithoutText(2.2, valueCoding, $YesNoCodeSystem#false)
  * item[=]
    * text = "Have you been kicked, hit, slapped, or otherwise physically hurt by your partner"
  * insert QuestionResponse(2.3, Has you partner ever threatened to hurt you, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(2.4, Has you partner ever forced or coerced you to engage in unwanted sexual activity, valueCoding, $YesNoCodeSystem#true)

* item[+].linkId = "3"
* item[=]
  * insert QuestionResponse(3.1, What is the plan for notifying the partner regarding the index case's HIV status, valueCoding, $PartnerNotificationPlanCodeSystem#Provider-Referral)
  * insert QuestionResponse(3.2, Was the partner notified, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(3.3, Reason for not being notified, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.4, Other Reason for not being notified, valueString, "some reason")
  * insert QuestionResponse(3.5, Date notification offered, valueDate, 2008-10-13)
  * insert QuestionResponse(3.7, Reason partner not contacted, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.8, Other Reason partner not contacted, valueString, "some reason")

* item[+].linkId = "4"
* item[=]
  * insert QuestionResponse(4.1, Has the partner been previsouly tested for HIV, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(4.2, Date of previous HIV test, valueDate, 2007-10-13)
  * insert QuestionResponseForQuantity(4.3, Previous HIV test result, 1001, 1/mL, copies/mL)

* item[+].linkId = "5"
* item[=]
  * insert QuestionResponse(5.1, Will the partner be tested for HIV, valueCoding, $YesNoCodeSystem#false)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseSexPartnerExample7
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Sex Partner Information (Example 7)"
Description: "A questionaire response that documents the answers to the questions regarding index case sex partners."
* questionnaire = Canonical(IndexCaseSexPartnerQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Date of last exposure, valueDate, 2008-10-13)
* insert QuestionResponse(1.2, Period of exposure if the exact date of exposure is not known, valueCoding, $PeriodOfExposureCodeSystem#<3Mths)
* insert QuestionResponse(1.3, Priority category, valueInteger, 2)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Violence Assessment Completed, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponseWithoutText(2.2, valueCoding, $YesNoCodeSystem#false)
  * item[=]
    * text = "Have you been kicked, hit, slapped, or otherwise physically hurt by your partner"
  * insert QuestionResponse(2.3, Has you partner ever threatened to hurt you, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(2.4, Has you partner ever forced or coerced you to engage in unwanted sexual activity, valueCoding, $YesNoCodeSystem#true)

* item[+].linkId = "3"
* item[=]
  * insert QuestionResponse(3.1, What is the plan for notifying the partner regarding the index case's HIV status, valueCoding, $PartnerNotificationPlanCodeSystem#Provider-Referral)
  * insert QuestionResponse(3.2, Was the partner notified, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(3.3, Reason for not being notified, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.4, Other Reason for not being notified, valueString, "some reason")
  * insert QuestionResponse(3.5, Date notification offered, valueDate, 2008-10-13)
  * insert QuestionResponse(3.7, Reason partner not contacted, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.8, Other Reason partner not contacted, valueString, "some reason")

* item[+].linkId = "4"
* item[=]
  * insert QuestionResponse(4.1, Has the partner been previsouly tested for HIV, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(4.2, Date of previous HIV test, valueDate, 2007-10-13)
  * insert QuestionResponseForQuantity(4.3, Previous HIV test result, 1001, 1/mL, copies/mL)

* item[+].linkId = "5"
* item[=]
  * insert QuestionResponse(5.1, Will the partner be tested for HIV, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(5.2, Date of HIV test, valueDate, 2007-10-13)
  * insert QuestionResponseForQuantity(5.3, HIV test result, 988, 1/mL, copies/mL)

* item[+].linkId = "6"
* item[=]
  * insert QuestionResponse(6.1, Is the newly diagnosed partner linked to partner services, valueCoding, $YesNoCodeSystem#true)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseSexPartnerExample8
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Sex Partner Information (Example 8)"
Description: "A questionaire response that documents the answers to the questions regarding index case sex partners."
* questionnaire = Canonical(IndexCaseSexPartnerQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Date of last exposure, valueDate, 2008-10-13)
* insert QuestionResponse(1.2, Period of exposure if the exact date of exposure is not known, valueCoding, $PeriodOfExposureCodeSystem#<3Mths)
* insert QuestionResponse(1.3, Priority category, valueInteger, 2)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Violence Assessment Completed, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponseWithoutText(2.2, valueCoding, $YesNoCodeSystem#false)
  * item[=]
    * text = "Have you been kicked, hit, slapped, or otherwise physically hurt by your partner"
  * insert QuestionResponse(2.3, Has you partner ever threatened to hurt you, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(2.4, Has you partner ever forced or coerced you to engage in unwanted sexual activity, valueCoding, $YesNoCodeSystem#true)

* item[+].linkId = "3"
* item[=]
  * insert QuestionResponse(3.1, What is the plan for notifying the partner regarding the index case's HIV status, valueCoding, $PartnerNotificationPlanCodeSystem#Provider-Referral)
  * insert QuestionResponse(3.2, Was the partner notified, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(3.3, Reason for not being notified, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.4, Other Reason for not being notified, valueString, "some reason")
  * insert QuestionResponse(3.5, Date notification offered, valueDate, 2008-10-13)
  * insert QuestionResponse(3.7, Reason partner not contacted, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.8, Other Reason partner not contacted, valueString, "some reason")

* item[+].linkId = "4"
* item[=]
  * insert QuestionResponse(4.1, Has the partner been previsouly tested for HIV, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(4.2, Date of previous HIV test, valueDate, 2007-10-13)
  * insert QuestionResponseForQuantity(4.3, Previous HIV test result, 1001, 1/mL, copies/mL)

* item[+].linkId = "5"
* item[=]
  * insert QuestionResponse(5.1, Will the partner be tested for HIV, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(5.2, Date of HIV test, valueDate, 2007-10-13)
  * insert QuestionResponseForQuantity(5.3, HIV test result, 988, 1/mL, copies/mL)

* item[+].linkId = "6"
* item[=]
  * insert QuestionResponse(6.1, Is the newly diagnosed partner linked to partner services, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(6.2, Reason why the newly diagnosed partner is not linked to partner services, valueCoding, $LNC#LA4389-8)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseSexPartnerExample9
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Sex Partner Information (Example 9)"
Description: "A questionaire response that documents the answers to the questions regarding index case sex partners."
* questionnaire = Canonical(IndexCaseSexPartnerQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Date of last exposure, valueDate, 2008-10-13)
* insert QuestionResponse(1.2, Period of exposure if the exact date of exposure is not known, valueCoding, $PeriodOfExposureCodeSystem#<3Mths)
* insert QuestionResponse(1.3, Priority category, valueInteger, 2)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Violence Assessment Completed, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponseWithoutText(2.2, valueCoding, $YesNoCodeSystem#false)
  * item[=]
    * text = "Have you been kicked, hit, slapped, or otherwise physically hurt by your partner"
  * insert QuestionResponse(2.3, Has you partner ever threatened to hurt you, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(2.4, Has you partner ever forced or coerced you to engage in unwanted sexual activity, valueCoding, $YesNoCodeSystem#true)

* item[+].linkId = "3"
* item[=]
  * insert QuestionResponse(3.1, What is the plan for notifying the partner regarding the index case's HIV status, valueCoding, $PartnerNotificationPlanCodeSystem#Provider-Referral)
  * insert QuestionResponse(3.2, Was the partner notified, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(3.3, Reason for not being notified, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.4, Other Reason for not being notified, valueString, "some reason")
  * insert QuestionResponse(3.5, Date notification offered, valueDate, 2008-10-13)
  * insert QuestionResponse(3.7, Reason partner not contacted, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.8, Other Reason partner not contacted, valueString, "some reason")

* item[+].linkId = "4"
* item[=]
  * insert QuestionResponse(4.1, Has the partner been previsouly tested for HIV, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(4.2, Date of previous HIV test, valueDate, 2007-10-13)
  * insert QuestionResponseForQuantity(4.3, Previous HIV test result, 1001, 1/mL, copies/mL)

* item[+].linkId = "5"
* item[=]
  * insert QuestionResponse(5.1, Will the partner be tested for HIV, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(5.2, Date of HIV test, valueDate, 2007-10-13)
  * insert QuestionResponseForQuantity(5.3, HIV test result, 988, 1/mL, copies/mL)

* item[+].linkId = "6"
* item[=]
  * insert QuestionResponse(6.1, Is the newly diagnosed partner linked to partner services, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(6.2, Reason why the newly diagnosed partner is not linked to partner services, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(6.3, Other Reason for not being notified, valueString, "some reason")

* item[+].linkId = "7"
* item[=]
  * insert QuestionResponse(7.1, Has the partner started ART, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponseForReference(7.2, Partner identifiers, SexualPartnerRelatedPersonBecomesPatientExample)

* insert QuestionResponse(8.1, Case closure status, valueCoding, $LNC#LA4389-8)

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: IndexCaseSexPartnerExample10
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Questionnaire Response - Sex Partner Information (Example 10)"
Description: "A questionaire response that documents the answers to the questions regarding index case sex partners."
* questionnaire = Canonical(IndexCaseSexPartnerQuestionnaire)
* status = #completed
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)

* insert QuestionResponse(1.1, Date of last exposure, valueDate, 2008-10-13)
* insert QuestionResponse(1.2, Period of exposure if the exact date of exposure is not known, valueCoding, $PeriodOfExposureCodeSystem#<3Mths)
* insert QuestionResponse(1.3, Priority category, valueInteger, 2)

* item[+].linkId = "2"
* item[=]
  * insert QuestionResponse(2.1, Violence Assessment Completed, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponseWithoutText(2.2, valueCoding, $YesNoCodeSystem#false)
  * item[=]
    * text = "Have you been kicked, hit, slapped, or otherwise physically hurt by your partner"
  * insert QuestionResponse(2.3, Has you partner ever threatened to hurt you, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(2.4, Has you partner ever forced or coerced you to engage in unwanted sexual activity, valueCoding, $YesNoCodeSystem#true)

* item[+].linkId = "3"
* item[=]
  * insert QuestionResponse(3.1, What is the plan for notifying the partner regarding the index case's HIV status, valueCoding, $PartnerNotificationPlanCodeSystem#Provider-Referral)
  * insert QuestionResponse(3.2, Was the partner notified, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(3.3, Reason for not being notified, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.4, Other Reason for not being notified, valueString, "some reason")
  * insert QuestionResponse(3.5, Date notification offered, valueDate, 2008-10-13)
  * insert QuestionResponse(3.7, Reason partner not contacted, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(3.8, Other Reason partner not contacted, valueString, "some reason")

* item[+].linkId = "4"
* item[=]
  * insert QuestionResponse(4.1, Has the partner been previsouly tested for HIV, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(4.2, Date of previous HIV test, valueDate, 2007-10-13)
  * insert QuestionResponseForQuantity(4.3, Previous HIV test result, 1001, 1/mL, copies/mL)

* item[+].linkId = "5"
* item[=]
  * insert QuestionResponse(5.1, Will the partner be tested for HIV, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponse(5.2, Date of HIV test, valueDate, 2007-10-13)
  * insert QuestionResponseForQuantity(5.3, HIV test result, 988, 1/mL, copies/mL)

* item[+].linkId = "6"
* item[=]
  * insert QuestionResponse(6.1, Is the newly diagnosed partner linked to partner services, valueCoding, $YesNoCodeSystem#false)
  * insert QuestionResponse(6.2, Reason why the newly diagnosed partner is not linked to partner services, valueCoding, $LNC#LA46-8)
  * insert QuestionResponse(6.3, Other Reason for not being notified, valueString, "some reason")

* item[+].linkId = "7"
* item[=]
  * insert QuestionResponse(7.1, Has the partner started ART, valueCoding, $YesNoCodeSystem#true)
  * insert QuestionResponseForReference(7.2, Partner identifiers, SexualPartnerRelatedPersonBecomesPatientExample)

* insert QuestionResponse(8.1, Case closure status, valueCoding, $LNC#LA46-8)
* insert QuestionResponse(8.2, Other Reason for case closure, valueString, "some reason")

* author = Reference(GeneralPractitionerExample)
* authored = "2008-10-13"

Instance: GeneralEncounterAbsentUnknownClassExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Encounter - Referencing a General Patient (With Absent or Unknown Class)"
Description: "Represents the current facility at which the patient is receiving health services."
* class = $AbsentUnknownCodeSystem#Absent-or-unknown
* status = #finished
* identifier[ENCOUNTER-ID].value = "001"
* identifier[ENCOUNTER-ID].system = $ENCOUNTER
* subject = Reference(GeneralPatientExample)
* type[+] = $SCT#390906007
* type[=].text = "Follow-up encounter"
* type[=].extension[VisitType].valueCodeableConcept = $VisitTypeCodeSystem#unscheduled
* period.start = "2012-12-09"
* period.end = "2012-12-09"
* serviceProvider = Reference(CurrentServiceProviderExample)

Instance: GeneralEncounterWithServiceTypeExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Encounter - Referencing a General Patient (With Service Type)"
Description: "Represents the current facility at which the patient is receiving health services."
* class = $EncounterClassCodeSystem#OBSENC
* status = #finished
* identifier[ENCOUNTER-ID].value = "001"
* identifier[ENCOUNTER-ID].system = $ENCOUNTER
* subject = Reference(GeneralPatientExample)
* type[+] = $SCT#390906007
* type[=].text = "Follow-up encounter"
* type[=].extension[VisitType].valueCodeableConcept = $VisitTypeCodeSystem#unscheduled
* period.start = "2012-12-09"
* period.end = "2012-12-09"
* serviceProvider = Reference(CurrentServiceProviderExample)
* serviceType = $EncounterServiceTypeCodeSystem#arv-therapy