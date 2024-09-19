Instance: CDRBundleExample4
InstanceOf: Bundle
Usage: #example
Title: "Bundle - CDR Example 4"
Description: 
    "An example CDR Bundle.

    Note: This bundle includes references to the Resources for Patient, Encounter and Related Person.
    
    Note: This bundle implements a conditional update to a Patient Resource matching a given identifier value for MRN."

* type = #transaction
* timestamp = "2024-02-18T09:30:00+02:00"

* insert ExampleTransactionalEntryWithConditionalUpdate(GeneralPatientExample, Patient, Patient?identifier=http://moh.gov.et/fhir/hiv/identifier/MRN|123)
* insert ExampleTransactionalEntry(GeneralEncounterExample, Encounter)
* insert ExampleTransactionalEntry(PartnerRelatedPersonExample, RelatedPerson)
* insert ExampleTransactionalEntry(SexualPartnerRelatedPersonBecomesPatientExample, Patient)
* insert ExampleTransactionalEntry(ChildRelatedPersonBecomesPatientExample, Patient)
* insert ExampleTransactionalEntry(ChildRelatedPersonExample, RelatedPerson)

* insert ExampleTransactionalEntry(DifferentiatedServiceDeliveryFullExample, Observation)
* insert ExampleTransactionalEntry(HighestEducationExample, Observation)
* insert ExampleTransactionalEntry(TargetPopulationExample, Observation)
* insert ExampleTransactionalEntry(PatientOccupationExample, Observation)

* insert ExampleTransactionalEntry(ARTEligibleWithReasonsExample, Observation)
* insert ExampleTransactionalEntry(ReasonWhyEligibleForARTExample, Observation)

* insert ExampleTransactionalEntry(InitiatedArtARTFollowupStatusExample, Observation)
* insert ExampleTransactionalEntry(ARTInitiatedARTFollowUpCareplanExample, CarePlan)
* insert ExampleTransactionalEntry(TargetedViralLoadServiceRequestExample, ServiceRequest)
* insert ExampleTransactionalEntry(ARVMedicationExample, Medication)
* insert ExampleTransactionalEntry(ARVMedicationRequestInitiatedARTExample, MedicationRequest)
* insert ExampleTransactionalEntry(ARVDrugDispensationARTInitiatedExample, MedicationDispense)
* insert ExampleTransactionalEntry(InitiatedArvTreatmentMedicationStatementExample, MedicationStatement)
* insert ExampleTransactionalEntry(ARVMedicationAdministrationExample, MedicationAdministration)
* insert ExampleTransactionalEntry(SuppressedViralLoadResultExample, Observation)
* insert ExampleTransactionalEntry(TargetedViralLoadDiagnosticReportExample, DiagnosticReport)
* insert ExampleTransactionalEntry(LinkedToCareAndInitiatedARTExample, Observation)
* insert ExampleTransactionalEntry(FairARVAdherenceExample, Observation)
* insert ExampleTransactionalEntry(ARVPoorAdherenceReasonsExample, Observation)

* insert ExampleTransactionalEntry(PregnancyStatusPregnantExample, Observation)
* insert ExampleTransactionalEntry(ReferredForPMTCTServiceRequestExample, ServiceRequest)
* insert ExampleTransactionalEntry(FuturePregnancyPlansExample, Observation)
* insert ExampleTransactionalEntry(BreastfeedingStatusExample, Observation)
* insert ExampleTransactionalEntry(NutritionalStatusExample, Observation)
* insert ExampleTransactionalEntry(WeightExample, Observation)

* insert ExampleTransactionalEntry(TPTMedicationRequestExample, MedicationRequest)
* insert ExampleTransactionalEntry(TPTMedicationStatementExample, MedicationStatement)
* insert ExampleTransactionalEntry(TPTMedicationExample, Medication)
* insert ExampleTransactionalEntry(TBProphylaxisTypeINHObservationExample, Observation)
* insert ExampleTransactionalEntry(TPTCareplanExample, CarePlan)

* insert ExampleTransactionalEntry(TBTreatmentCareplanExample, CarePlan)
* insert ExampleTransactionalEntry(TBScreeningServiceRequestExample, ServiceRequest)
* insert ExampleTransactionalEntry(TBPositiveScreeningExample, Observation)
* insert ExampleTransactionalEntry(TBTreatmentStatusRx1ObservationExample, Observation)
* insert ExampleTransactionalEntry(TBTreatmentStartedAfterDiagnosticTestObservationExample, Observation)
* insert ExampleTransactionalEntry(TBDiagnosticTestResultExample, Observation)
* insert ExampleTransactionalEntry(TBScreeningSpecimenExample, Specimen)


* insert ExampleTransactionalEntry(HIVProgramFinalOutcomeKnownExample, Observation)
* insert ExampleTransactionalEntry(FinalOutcomeStartedARTExample, Observation)

* insert ExampleTransactionalEntry(CervicalCancerScreeningServiceRequestForHPVExample, ServiceRequest)
* insert ExampleTransactionalEntry(CervicalCancerScreeningCounsellingGivenExample, Observation)
* insert ExampleTransactionalEntry(CervicalCancerScreeningAcceptedExample, Observation)
* insert ExampleTransactionalEntry(CervicalCancerScreeningDoneExample, Observation)
* insert ExampleTransactionalEntry(CervicalCancerScreeningTypeExample, Observation)
* insert ExampleTransactionalEntry(CervicalCancerScreeningMethodExample, Observation)
* insert ExampleTransactionalEntry(CervicalCancerHPVPositiveScreeningResultExample, Observation)
* insert ExampleTransactionalEntry(CervicalCancerCarePlanHPVWithTreatmentRequestExample, CarePlan)
* insert ExampleTransactionalEntry(CervicalCancerTreatmentServiceRequestForHPVExample, ServiceRequest)
* insert ExampleTransactionalEntry(CervicalCancerDiagnosticReportForHPVExample, DiagnosticReport)
* insert ExampleTransactionalEntry(CervicalCancerTreatmentReceivedForHPVExample, Observation)

* insert ExampleTransactionalEntry(MaternalHIVStatusKPExample, Observation)
* insert ExampleTransactionalEntry(IndexCaseContactsElicitedExample, Observation)
* insert ExampleTransactionalEntry(IndexCaseScreeningFullExample, QuestionnaireResponse)
* insert ExampleTransactionalEntry(IndexCaseAssessmentFullExample, QuestionnaireResponse)
* insert ExampleTransactionalEntry(IndexCaseContactHealthStatusFamilyMemberExample, Observation)
* insert ExampleTransactionalEntry(FamilyIndexCaseContactsFullExample, QuestionnaireResponse)
* insert ExampleTransactionalEntry(IndexCaseSexPartnerExample10, QuestionnaireResponse)