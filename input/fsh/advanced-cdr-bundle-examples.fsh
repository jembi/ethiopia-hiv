Instance: AdvancedCDRBundleExample
InstanceOf: Bundle
Usage: #example
Title: "Advanced CDR Bundle"
Description: "A bundle containing Advanced CDR FHIR resources."
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

* entry[+].fullUrl = "http://hapi-fhir:8080/MedicationStatement/FollowUpArvTreatmentMedicationStatementExample"
* entry[=].resource = FollowUpArvTreatmentMedicationStatementExample
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationStatement/FollowUpArvTreatmentMedicationStatementExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/AliveOnArtARTFollowupStatusExample"
* entry[=].resource = AliveOnArtARTFollowupStatusExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/AliveOnArtARTFollowupStatusExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/MedicationDispense/ARVDrugDispensationExample"
* entry[=].resource = ARVDrugDispensationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationDispense/ARVDrugDispensationExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/PregnancyStatusNotPregnantExample"
* entry[=].resource = PregnancyStatusNotPregnantExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/PregnancyStatusNotPregnantExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/FuturePregnancyPlansExample"
* entry[=].resource = FuturePregnancyPlansExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/FuturePregnancyPlansExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/BreastfeedingStatusExample"
* entry[=].resource = BreastfeedingStatusExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/BreastfeedingStatusExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/ARTEligibleWithReasonsExample"
* entry[=].resource = ARTEligibleWithReasonsExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/ARTEligibleWithReasonsExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/ReasonWhyEligibleForARTExample"
* entry[=].resource = ReasonWhyEligibleForARTExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/ReasonWhyEligibleForARTExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/FairARVAdherenceExample"
* entry[=].resource = FairARVAdherenceExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/FairARVAdherenceExample"

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

* entry[+].fullUrl = "http://hapi-fhir:8080/DiagnosticReport/RoutineViralLoadDiagnosticReportExample"
* entry[=].resource = RoutineViralLoadDiagnosticReportExample
* entry[=].request.method = #PUT
* entry[=].request.url = "DiagnosticReport/RoutineViralLoadDiagnosticReportExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/ServiceRequest/RoutineViralLoadServiceRequestExample"
* entry[=].resource = RoutineViralLoadServiceRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/RoutineViralLoadServiceRequestExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/DifferentiatedServiceDeliveryFullExample"
* entry[=].resource = DifferentiatedServiceDeliveryFullExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/DifferentiatedServiceDeliveryFullExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/ARTNotStartedWithReasonsExample"
* entry[=].resource = ARTNotStartedWithReasonsExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/ARTNotStartedWithReasonsExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/HIVProgramStatusReasonARTNotStartedExample"
* entry[=].resource = HIVProgramStatusReasonARTNotStartedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVProgramStatusReasonARTNotStartedExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/PartnerRelatedPersonExample"
* entry[=].resource = PartnerRelatedPersonExample
* entry[=].request.method = #PUT
* entry[=].request.url = "RelatedPerson/PartnerRelatedPersonExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/UnsuppressedViralLoadResultExample"
* entry[=].resource = UnsuppressedViralLoadResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/UnsuppressedViralLoadResultExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/CervicalCancerScreeningCounsellingGivenExample"
* entry[=].resource = CervicalCancerScreeningCounsellingGivenExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/CervicalCancerScreeningCounsellingGivenExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/CervicalCancerScreeningAcceptedExample"
* entry[=].resource = CervicalCancerScreeningAcceptedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/CervicalCancerScreeningAcceptedExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/CervicalCancerScreeningDoneExample"
* entry[=].resource = CervicalCancerScreeningDoneExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/CervicalCancerScreeningDoneExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/Observation/CervicalCancerHPVPositiveScreeningResultExample"
* entry[=].resource = CervicalCancerHPVPositiveScreeningResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/CervicalCancerHPVPositiveScreeningResultExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/CarePlan/CervicalCancerCarePlanHPVWithTreatmentRequestExample"
* entry[=].resource = CervicalCancerCarePlanHPVWithTreatmentRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "CarePlan/CervicalCancerCarePlanHPVWithTreatmentRequestExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/ServiceRequest/CervicalCancerScreeningServiceRequestForHPVExample"
* entry[=].resource = CervicalCancerScreeningServiceRequestForHPVExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/CervicalCancerScreeningServiceRequestForHPVExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/ServiceRequest/CervicalCancerTreatmentServiceRequestForHPVExample"
* entry[=].resource = CervicalCancerTreatmentServiceRequestForHPVExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/CervicalCancerTreatmentServiceRequestForHPVExample"