Instance: BasicCDRBundleExample
InstanceOf: Bundle
Usage: #example
Title: "Basic CDR Bundle"
Description: "A bundle containing Basic CDR FHIR resources."
* type = #transaction
* timestamp = "2024-02-18T09:30:00+02:00"

* entry[+].fullUrl = "http://hapi-fhir:8080/Patient/GeneralPatientExample"
* entry[=].resource = GeneralPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/GeneralPatientExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Encounter/GeneralEncounterExample"
* entry[=].resource = GeneralEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/GeneralEncounterExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/MedicationStatement/InitiatedArvTreatmentMedicationStatementExample"
* entry[=].resource = InitiatedArvTreatmentMedicationStatementExample
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationStatement/InitiatedArvTreatmentMedicationStatementExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/MedicationDispense/ARVDrugDispensationExample"
* entry[=].resource = ARVDrugDispensationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationDispense/ARVDrugDispensationExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/PregnancyStatusPregnantExample"
* entry[=].resource = PregnancyStatusPregnantExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/PregnancyStatusPregnantExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/FuturePregnancyPlansExample"
* entry[=].resource = FuturePregnancyPlansExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/FuturePregnancyPlansExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/BreastfeedingStatusExample"
* entry[=].resource = BreastfeedingStatusExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/BreastfeedingStatusExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/ARTNotEligibleExample"
* entry[=].resource = ARTNotEligibleExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/ARTNotEligibleExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/GoodARVAdherenceExample"
* entry[=].resource = GoodARVAdherenceExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/GoodARVAdherenceExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/NutritionalStatusExample"
* entry[=].resource = NutritionalStatusExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/NutritionalStatusExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/WeightExample"
* entry[=].resource = WeightExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/WeightExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/MedicationStatement/TPTMedicationStatementExample"
* entry[=].resource = TPTMedicationStatementExample
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationStatement/TPTMedicationStatementExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Medication/TPTMedicationExample"
* entry[=].resource = TPTMedicationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Medication/TPTMedicationExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/TBProphylaxisTypeINHObservationExample"
* entry[=].resource = TBProphylaxisTypeINHObservationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/TBProphylaxisTypeINHObservationExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/DiagnosticReport/TargetedViralLoadDiagnosticReportExample"
* entry[=].resource = TargetedViralLoadDiagnosticReportExample
* entry[=].request.method = #PUT
* entry[=].request.url = "DiagnosticReport/TargetedViralLoadDiagnosticReportExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/ServiceRequest/TargetedViralLoadServiceRequestExample"
* entry[=].resource = TargetedViralLoadServiceRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/TargetedViralLoadServiceRequestExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/DifferentiatedServiceDeliveryStatusAndCategoryExample"
* entry[=].resource = DifferentiatedServiceDeliveryStatusAndCategoryExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/DifferentiatedServiceDeliveryStatusAndCategoryExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/StartedARTExample"
* entry[=].resource = StartedARTExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/StartedARTExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/StartedARTEntryWithinFacilityExample"
* entry[=].resource = StartedARTEntryWithinFacilityExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/StartedARTEntryWithinFacilityExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/HIVProgramFinalOutcomeKnownExample"
* entry[=].resource = HIVProgramFinalOutcomeKnownExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVProgramFinalOutcomeKnownExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/FinalOutcomeStartedARTExample"
* entry[=].resource = FinalOutcomeStartedARTExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/FinalOutcomeStartedARTExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/FamilyMemberRelatedPersonExample"
* entry[=].resource = FamilyMemberRelatedPersonExample
* entry[=].request.method = #PUT
* entry[=].request.url = "RelatedPerson/FamilyMemberRelatedPersonExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/SuppressedViralLoadResultExample"
* entry[=].resource = SuppressedViralLoadResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/SuppressedViralLoadResultExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/CervicalCancerHPVNegativeScreeningResultExample"
* entry[=].resource = CervicalCancerHPVNegativeScreeningResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/CervicalCancerHPVNegativeScreeningResultExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/CervicalCancerScreeningDoneExample"
* entry[=].resource = CervicalCancerScreeningDoneExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/CervicalCancerScreeningDoneExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/CarePlan/CervicalCancerCarePlanHPVExample"
* entry[=].resource = CervicalCancerCarePlanHPVExample
* entry[=].request.method = #PUT
* entry[=].request.url = "CarePlan/CervicalCancerCarePlanHPVExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/ServiceRequest/CervicalCancerScreeningServiceRequestForHPVExample"
* entry[=].resource = CervicalCancerScreeningServiceRequestForHPVExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/CervicalCancerScreeningServiceRequestForHPVExample"