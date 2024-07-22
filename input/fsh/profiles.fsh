Profile: EncounterLocation
Parent: Location
Id: encounter-location
Title: "Location - Encounter Entry Point"
Description: "Physical location type where health services are provided."
* identifier 1..*
* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)
* identifier contains
    LocationID 0..1 MS

* identifier[LocationID] ^definition =
    "reason(s) why this should be supported."
* identifier[LocationID].value 1..1
* identifier[LocationID].system = $EncounterLocationID

* name 1..1
* type 1..*
* type.text 1..1
* type from EncounterLocationValueSet (required)
* type.coding only StrictCoding

* managingOrganization 0..1 MS
* managingOrganization ^definition =
    "reason(s) why this should be supported."
* managingOrganization only Reference(ServiceProvider)

Profile: ServiceProvider
Parent: Organization
Id: organization
Title: "Organization"
Description: "Organization providing health related services."
* identifier 1..*
* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)

* identifier contains
    MOHID 1..1 and
    HFUID 1..1

* identifier[MOHID].value 1..1
* identifier[MOHID].system = $MOHID

* identifier[HFUID].value 1..1
* identifier[HFUID].system = $HFUID

* active 1..1
* name 1..1

* type 1..*
* type from ServiceProviderTypeValueSet (required)
* type.text 1..1
* type.coding only StrictCoding

* address 1..1
* address.state 1..1
* address.city 1..1
* address.district 0..1
* address.line 0..* MS
* address.line ^definition =
    "reason(s) why this should be supported."

Profile: EthPatient
Parent: Patient
Id: patient
Title: "Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier 1..*
* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)

* identifier contains
    MRN 1..1 and
    UAN 0..1 MS and
    EMR-ID 1..1

* identifier[MRN].value 1..1
  * obeys MRN-UAN-EMR-ID-1
* identifier[MRN].system = $MRN 
* identifier[MRN].type = $IdentifierTypeCodeSystem#MR
* identifier[MRN].type.text = "Medical record number"

* identifier[UAN] ^definition =
    "reason(s) why this should be supported."
* identifier[UAN].value 1..1
  * obeys MRN-UAN-EMR-ID-1
* identifier[UAN].system = $UAN 

* identifier[EMR-ID].value 1..1
  * obeys MRN-UAN-EMR-ID-1
* identifier[EMR-ID].system = $EMR_ID 

* name 1..*
* name.given 1..*
* name.family 1..1

* gender 1..1
* birthDate 1..1
* maritalStatus 0..1 MS
* maritalStatus ^definition =
    "reason(s) why this should be supported."
* address 0..* MS
* address ^definition =
    "reason(s) why this should be supported."
* address.city 0..1 MS
* address.city ^definition =
    "reason(s) why this should be supported."
* address.line 0..* MS
* address.line ^definition =
    "reason(s) why this should be supported."
* address.district 0..1 MS
* address.district ^definition =
    "reason(s) why this should be supported."
* address.state 0..1 MS
* address.state ^definition =
    "reason(s) why this should be supported."

* telecom 0..* MS
* telecom ^definition =
    "reason(s) why this should be supported."

* address.extension contains ResidentialTypeExtension named ResidentialType 0..1 MS
* address.extension[ResidentialType] ^definition = "reason(s) why this should be supported."
* managingOrganization 1..1
* managingOrganization only Reference(ServiceProvider)
* link 0..* MS
* link ^definition =
    "reason(s) why this should be supported."

* link.other only Reference(EthRelatedPerson or EthPatient)

* extension contains patient-religion named Religion 0..1 MS
* extension[Religion] ^definition = "reason(s) why this should be supported."

Profile: EntryFromOutsideTargetFacilityEncounter
Parent: Encounter
Id: entry-from-outside-target-facility-encounter
Title: "Encounter - Entry Point From Outside the Current Facility" 
Description: "Represents the other facility where the patient did receive health services and is now continuing care at the current facility."
* status 1..1
* status = #finished
* class 1..1
* class = $EncounterTypeEntryOutsideFacility#ReferToCurrentFacilityEncounter
* serviceProvider 1..1
* serviceProvider only Reference(ServiceProvider)
* partOf 1..1
* partOf only Reference(TargetFacilityEncounter)

Profile: TargetFacilityEncounter
Parent: Encounter
Id: target-facility-encounter
Title: "Encounter - Initiated By The Facility Providing the Service" 
Description: "Represents the current facility at which the patient is receiving health services."
* identifier 1..*
* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)

* identifier contains
    ENCOUNTER-ID 1..1

* identifier[ENCOUNTER-ID].value 1..1
  * obeys Encounter-1
* identifier[ENCOUNTER-ID].system = $ENCOUNTER

* status 1..1
* class 1..1
* type 1..1
* type.extension contains EncounterVisitTypeExtension named VisitType 1..1
* subject 1..1 
* subject only Reference(EthPatient)

* period 1..1
* period.start 1..1
* period.end 0..1 MS
* period.end ^definition = "reason(s) why this should be supported."
* serviceProvider 1..1
* serviceProvider only Reference(ServiceProvider)
* location 0..* MS
* location ^definition = "reason(s) why this should be supported."
* location.location 1..1
* location.location only Reference(EncounterLocation)

* episodeOfCare 0..* MS
* episodeOfCare ^definition = "reason(s) why this should be supported."

* insert SliceForResolve(episodeOfCare, reasons why this should be supported, open, Slicing episodeOfCare based on the profile value, false)

* episodeOfCare contains
    HIV-TB-CervicalCancer 0..1 MS

* episodeOfCare[HIV-TB-CervicalCancer] ^definition =
    "reason(s) why this should be supported."
* episodeOfCare[HIV-TB-CervicalCancer] only Reference(EthEpisodeOfCare)

Profile: ARTFollowUpCareplan
Parent: CarePlan
Id: art-follow-up-careplan
Title: "Care Plan - ART Treatment"
Description: "Used to record the ART treatment and care details for the patient."
* status 1..1
* intent 1..1
* category 1..1
* category = $LNC#LP66375-4
* category.text 1..1
* category.text = "ART"
* subject 1..1 
* subject only Reference(EthPatient)
* encounter 1..1 
* encounter only Reference(TargetFacilityEncounter)

* created 0..1 MS
* created ^definition = "reason(s) why this should be supported."

* activity 1..*
* activity obeys Careplan-ART-Follow-up-1

* activity.extension contains NextVisitDateExtension named NextVisitDate 0..1 MS
* activity.extension[NextVisitDate] ^definition = "reason(s) why this should be supported."

* activity.reference 1..1
* activity.reference only Reference(ARVMedicationRequest or CD4ServiceRequest or ViralLoadServiceRequest or HGBServiceRequest or CreatinineServiceRequest or ALTandASTServiceRequest)

* activity.extension contains ARVAdherenceExtension named Adherence 0..1 MS
* activity.extension[Adherence] ^definition = "reason(s) why this should be supported."
* activity.extension[Adherence].valueReference only Reference(ARVAdherenceObservation)

Profile: GenericObservation
Parent: Observation
Id: generic-observation
Title: "Observation - Generic"
Description: "Base Observation elements that are inherited by other Observation profiles."
* status 1..1
* code 1..1
* code.coding only StrictCoding
* subject 1..1
* subject only Reference(EthPatient or Group)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* effectiveDateTime 1..1
* performer 1..*
* performer only Reference(ServiceProvider or GeneralPractitioner)
* category 0..*
* category ^definition =
    "reason(s) why this should be supported."

* valueCodeableConcept.coding only StrictCoding

Profile: ARTFollowupStatusObservation
Parent: GenericObservation
Id: art-followup-status-observation
Title: "Observation - ART Follow-up Status"
Description: "Represents the patient's current ART follow-up status."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#47248-0
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from ARTFollowUpStatusValueSet (required)
* valueCodeableConcept.extension contains ObservedDateExtension named ObservedDate 0..1 MS
* valueCodeableConcept.extension[ObservedDate] ^definition =
    "reason(s) why this should be supported."
* hasMember 0..1 MS
* hasMember ^definition =
    "reason(s) why this should be supported."
* hasMember only Reference(ARTFollowupStatusStoppedReasonObservation)

Profile: ARTFollowupStatusStoppedReasonObservation
Parent: GenericObservation
Id: art-followup-stopped-reasons-observation
Title: "Observation - Reason HIV Treatment Stopped"
Description: "Represents the reasons for the patient stopping HIV treatment."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#91382-2
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.extension contains ReasonARTStoppedExtension named StopReason 1..*

Profile: ARVMedicationRequest
Parent: GenericMedicationRequest
Id: arv-medication-request
Title: "Medication Request - ARV"
Description: "Used to record requests for ARV medication that are prescribed to a patient."
* medication[x] only Reference
* medicationReference only Reference(ARVMedication)
* dispenseRequest.quantity = $OrderableDrugForm_UNIT#TAB
* dispenseRequest.quantity.unit = "TAB"
* reasonReference 1..1
* reasonReference only Reference(ARVRegimenChange or ARTFollowupStatusObservation)
* basedOn 1..1
* basedOn only Reference(ARTFollowUpCareplan)

Profile: ARVDrugDispensation
Parent: GenericDrugDispensation
Id: arv-medication-dispense
Title: "Medication Dispense - ARV"
Description: "Used to represent dispensed ARV medication prescribed to a patient."
* medication[x] only Reference
* medicationReference only Reference(ARVMedication)

* quantity = $OrderableDrugForm_UNIT#TAB
* quantity.unit = "TAB"

* daysSupply = $UCUM_UNIT#d
* daysSupply.unit = "Days"

* authorizingPrescription 1..1
* authorizingPrescription only Reference(ARVMedicationRequest)

Profile: EthRelatedPerson
Parent: RelatedPerson
Id: related-person
Title: "Related Person - An individual Related to The Patient"
Description: "Is used to record the personal information of the person that is related to the patient."
* patient 1..1
* patient only Reference(EthPatient)
* name 1..*
* name.given 1..*
* name.family 1..1
* telecom 0..* MS
* telecom ^definition =
    "reason(s) why this should be supported."
* relationship 1..1
* relationship.text 1..1

* gender 0..1 MS
* gender ^definition =
    "reason(s) why this should be supported."
* birthDate 0..1 MS
* birthDate ^definition =
    "reason(s) why this should be supported."

* address 0..* MS
* address ^definition =
    "reason(s) why this should be supported."
* address.city 0..1 MS
* address.city ^definition =
    "reason(s) why this should be supported."
* address.line 0..* MS
* address.line ^definition =
    "reason(s) why this should be supported."
* address.district 0..1 MS
* address.district ^definition =
    "reason(s) why this should be supported."
* address.state 0..1 MS
* address.state ^definition =
    "reason(s) why this should be supported."

Profile: CervicalCancerScreeningServiceRequest
Parent: GenericServiceRequest
Id: cervical-cancer-screening-method-service-request
Title: "Service Request - Cervical Cancer Screening Method"
Description: "Represents the service request for the method of cervical cancer screening."
* code from CervicalCancerScreeningMethodValueSet (required)
* category 1..1
* category = $LNC#LP94892-4
* authoredOn 1..1

Profile: CervicalCancerDiagnosticReport
Parent: GenericDiagnosticReport
Id: cervical-cancer-diagnostic-report
Title: "Diagnostic Report - Cervical Cancer"
Description: "Represents the results for the cervical cancer screening."
* code = $LNC#72135-7
* result 1..1
* result only Reference(CervicalCancerScreeningResult)
* basedOn only Reference(CervicalCancerScreeningServiceRequest)

Profile: CervicalCancerTreatmentServiceRequest
Parent: GenericServiceRequest
Id: cervical-cancer-treatment-service-request
Title: "Service Request - Cervical Cancer Treatment"
Description: "Represents the service request for the cervical cancer treatment."
* code from CervicalCancerTreatmentReceivedValueSet (required)
* category 1..1
* category = $LNC#89429-5
* authoredOn 1..1
* reasonReference 1..1
* reasonReference only Reference(CervicalCancerDiagnosticReport)

Profile: CervicalCancerTreatmentReceived
Parent: GenericObservation
Id: cervical-cancer-treatment-received-observation
Title: "Observation - Cervical Cancer Treatment Received"
Description: "This is used to record the date the patient received cervical cancer treatment."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LA13405-8
* value[x] only dateTime
* valueDateTime 1..1
* basedOn 1..1
* basedOn only Reference(CervicalCancerScreeningServiceRequest)

Profile: CervicalCancerCarePlan
Parent: CarePlan
Id: cervical-cancer-care-plan
Title: "Care Plan - Cervical Cancer"
Description: "Used to record the cervical cancer details for the patient."
* status 1..1
* intent 1..1
* category 1..1
* category = $LNC#LP173209-0
* subject 1..1 
* subject only Reference(EthPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)

* activity 1..* MS
* activity.reference 1..1
* activity.reference only Reference(CervicalCancerScreeningServiceRequest or CervicalCancerTreatmentServiceRequest)

* activity.outcomeReference 0..1 MS
* activity.outcomeReference ^definition =
    "reason(s) why this should be supported."
* activity.outcomeReference only Reference(CervicalCancerTreatmentReceived)

* activity.extension contains NextVisitDateExtension named NextVisitDate 0..1 MS
* activity.extension[NextVisitDate] ^definition = "reason(s) why this should be supported."

Profile: ViralLoadResultObservation
Parent: GenericObservation
Id: viral-load-count-observation
Title: "Observation - Viral Load Result"
Description: "Represents the patient's Viral Load Result."
* hasMember 0..1 MS
* hasMember ^definition =
    "reason(s) why this should be supported."
* hasMember only Reference(EnhancedAdherenceCounselling)
* category 1..1
* category = $OBSERVATION_CATEGORY#laboratory
* code = $SCT#315124004

* value[x] only StrictQuantity
* valueQuantity 1..1
* valueQuantity = $UCUM_UNIT#1/mL
* valueQuantity.unit = "copies/mL"

* interpretation 1..1
* interpretation from ViralLoadStatusValueSet (required)

Profile: ARVAdherenceObservation
Parent: GenericObservation
Id: arv-adherence-observation
Title: "Observation - ARV Adherence"
Description: "Represents the patient's ARV Adherence"
* obeys Observation-ARV-Adherence-1
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#418633004
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from ARVAdherenceValueSet (required)
* valueCodeableConcept.text 1..1
* hasMember 0..1 MS
* hasMember ^definition =
    "reason(s) why this should be supported."
* hasMember only Reference(ARVPoorAdherenceReasonsObservation)

Profile: ARVPoorAdherenceReasonsObservation
Parent: GenericObservation
Id: arv-poor-adherence-reasons-observation
Title: "Observation - Reasons for ARV Adherence"
Description: "Represents the reasons for poor ARV Adherence"
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#397695000
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.extension contains ReasonsForPoorARVAdherenceExtension named PoorAdherenceReasons 1..*

Profile: ScreenedForTBObservation
Parent: GenericObservation
Id: screened-for-tb-observation
Title: "Observation - Screened For TB"
Description: "Documents whether the patient was screened for TB."
* code = $SCT#171126009
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)
* valueCodeableConcept.extension contains ObservedDateExtension named ObservedDate 0..1 MS
* valueCodeableConcept.extension[ObservedDate] ^definition =
    "reason(s) why this should be supported."
* hasMember 0..1 MS
* hasMember ^definition =
    "reason(s) why this should be supported."
* hasMember only Reference(TBScreeningResultObservation)

Profile: TBScreeningResultObservation
Parent: GenericObservation
Id: tb-screening-result-observation
Title: "Observation - TB Screening Result"
Description: "Documents the patient's TB screening result."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#429599001
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from TBScreeningResultValueSet (required)
* valueCodeableConcept.text 1..1

Profile: TBScreeningSpecimen
Parent: Specimen
Id: tb-screening-specimen
Title: "Specimen - TB Screening"
Description: "The specimen that will be used during a TB laboratory examination."
* status 1..1
* type 1..1
* type from TBScreeningSpecimenTypeValueSet (required)
* type.coding only StrictCoding
* subject 1..1
* subject only Reference(EthPatient)
* request 1..1
* request only Reference(TBScreeningServiceRequest)

Profile: GenericServiceRequest
Parent: ServiceRequest
Id: generic-service-request
Title: "ServiceRequest - Generic"
Description: "Base ServiceRequest elements that are inherited by other ServiceRequest profiles."
* status 1..1
* intent 1..1
* code 1..1
* code.coding only StrictCoding
* subject 1..1
* subject only Reference(EthPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* requester only Reference(GeneralPractitioner)

* performer 0..* MS
* performer only Reference(ServiceProvider)
* performer ^definition =
    "reason(s) why this should be supported."

* locationReference 0..* MS
* locationReference only Reference(EncounterLocation)
* locationReference ^definition =
    "reason(s) why this should be supported."

Profile: TBScreeningServiceRequest
Parent: GenericServiceRequest
Id: tb-screening-service-request
Title: "Service Request - TB Screening"
Description: "Service request used to examine the specimen taken during TB screening."
* category 1..1
* category = $LNC#LP94892-4
* code from TBScreeningDiagnosticTestTypeValueSet (required)
* reasonReference 1..1
* reasonReference only Reference(TBScreeningResultObservation)

Profile: TBDiagnosticTestResultObservation
Parent: GenericObservation
Id: tb-diagnostic-test-result-observation
Title: "Observation - TB Diagnostic Test Result"
Description: "Documents the patient's diagnostic test result."
* category 1..1
* category = $OBSERVATION_CATEGORY#laboratory
* code from TBScreeningTypeValueSet (required)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from TBDiagnosticTestResultValueSet (required)
* valueCodeableConcept.text 1..1

* specimen 0..1 MS
* specimen ^definition =
    "reason(s) why this should be supported."
* specimen only Reference(TBScreeningSpecimen)

Profile: ActiveTBObservation
Parent: GenericObservation
Id: active-tb-observation
Title: "Observation - Active TB"
Description: "Documents the whether the patient is TB Active."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#LP89688-3
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from ActiveTBDiagnosisValueSet (required)
* valueCodeableConcept.text 1..1
* valueCodeableConcept.extension contains ObservedDateExtension named ObservedDate 0..1 MS
* valueCodeableConcept.extension[ObservedDate] ^definition =
    "reason(s) why this should be supported."
* derivedFrom 0..1 MS
* derivedFrom ^definition =
    "reason(s) why this should be supported."
* derivedFrom only Reference(TBDiagnosticTestResultObservation)

Profile: ARTTreatmentMedicationStatement
Parent: GenericMedicationStatement
Id: arv-treatment-medication-statement
Title: "Medication Statement - ART"
Description: "Records the medication history for the HIV+ patient."
* medication[x] only Reference
* medicationReference only Reference(ARVMedication)
* reasonReference 0..1 MS
  * ^definition = "Indicates a reason for the point in time prescription."
  * ^short = "Used for indicating the reason for point in time prescriptions in the context of an encounter."
* reasonReference only Reference(ARVRegimenChange or ARTFollowupStatusObservation)

Profile: OIMedicationStatement
Parent: GenericMedicationStatement
Id: oi-medication-statement
Title: "Medication Statement - Opportunisic Infections (OI)"
Description: "Records the medication history for a patient suffering from OI's."
* medication[x] only Reference
* medicationReference only Reference(OIMedication)
* reasonReference 0..1 MS
  * ^definition = "Indicates a reason for the point in time prescription."
  * ^short = "Used for indicating the reason for point in time prescriptions in the context of an encounter."
* reasonReference only Reference(CotrimoxazolePreventiveTherapy or FluconazolePreventiveTherapy)

Profile: HIVTestEligibilityStatus
Parent: GenericObservation
Id: hiv-test-eligibility-status-observation
Title: "Observation - HIV Test Eligibility Status"
Description: "Represents the patient's eligibility status for an HIV test"
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#171121004
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from ARTEligibilityStatusValueSet (required)
* hasMember 0..1 MS
* hasMember ^definition = "reason(s) why this should be supported."
* hasMember only Reference(ReasonWhyEligibleForHIVTest)

Profile: ReasonWhyEligibleForHIVTest
Parent: GenericObservation
Id: reason-eligible-for-hiv-test-observation
Title: "Observation - Reason Why Eligible for HIV Testing"
Description: "Represents the reasons why a patient is considered eligibile for HIV testing."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#45232-6
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

* insert Slice(valueCodeableConcept.coding, reasons why this should be supported, value, code, open, Slicing the eligibility reason, false)

* valueCodeableConcept.coding contains
    WhyEligible 1..* MS

* valueCodeableConcept.coding[WhyEligible] ^definition =
    "reason(s) why this should be supported."
* valueCodeableConcept.coding[WhyEligible].code 1..1
* valueCodeableConcept.coding[WhyEligible].code from ReasonForARTEligibilityValueSet (required)

Profile: PCRHIVTestServiceRequest
Parent: GenericServiceRequest
Id: pcr-hiv-test-service-request
Title: "Service Request - PCR HIV Test"
Description: "Represents the service request for PCR HIV testing."
* code = $LNC#9836-8
* authoredOn 1..1
* category 1..1
* category = $LNC#LP94892-4

Profile: ConfirmedHIVPositive
Parent: GenericObservation
Id: confirmed-hiv-positive-observation
Title: "Observation - Confirmed HIV positive"
Description: "Represents the date the patient was confirmed HIV positive."
* obeys Observation-HIV-confirmed-1 and Observation-HIV-confirmed-2 and Observation-HIV-confirmed-3
* category 1..1
* code from ConfirmedHIVPositiveValueSet (required)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from HIVTestResultsValueSet (required)
* basedOn 0..1 MS
* basedOn ^definition = "reason(s) why this should be supported."
* basedOn only Reference(PCRHIVTestServiceRequest)

Profile: PregnancyStatusAndFPMQuestionnaire
Parent: Questionnaire
Id: pregnancy-status-and-fmp-questionnaire
Title: "Questionnaire - Pregnancy Status and Family Planning Method (FPM)"
Description: "A questionaire that provides the questions to for pregnancy status and FPM."
* status 1..1
* item 1..*
* subjectType 1..1
* subjectType = #Observation
* insert Slice(item, reasons why this should be supported, value, linkId, open, Slicing the items based on the linkId value, false)
* item contains
    PREGNANT 0..1 MS and
    WANT_TO_BE_PREGNANT 0..1 MS and
    BREASTFEEDING 0..1 MS and
    LMP 0..1 MS and
    EDD 0..1 MS and
    FamilyPlanningMethod 0..1 MS

* insert Question(PREGNANT, pregnant, Is Pregnant, choice, false, false, reasons why this should be supported)
* item[PREGNANT]
  * answerValueSet 1..1
  * answerValueSet.extension contains permitted-value-conceptmap named InternalCodesToExchangeCodes 1..1
  * answerValueSet = Canonical(YesNoValueSet)
  * answerValueSet.extension[InternalCodesToExchangeCodes].valueCanonical = Canonical(PregnancyStatusProprietaryToLOINC)

* insert Slice(item[PREGNANT].code, reasons why this should be supported, value, code, open, Slicing the items based on the system value, false)
* item[PREGNANT].code contains
    PREGNANT_REPORTED_CODE 1..1

* item[PREGNANT].code 1..1
* item[PREGNANT].code[PREGNANT_REPORTED_CODE].code = #11449-6
* item[PREGNANT].code[PREGNANT_REPORTED_CODE].system = $LNC

* insert Question(WANT_TO_BE_PREGNANT, want-to-be-pregnant, Wants to be pregnant, choice, false, false, reasons why this should be supported)
* item[WANT_TO_BE_PREGNANT]
  * answerValueSet 1..1
  * answerValueSet.extension contains permitted-value-conceptmap named InternalCodesToExchangeCodes 1..1
  * answerValueSet = Canonical(YesNoValueSet)
  * answerValueSet.extension[InternalCodesToExchangeCodes].valueCanonical = Canonical(PregnancyFuturePlansProprietaryToLOINC)

* insert Slice(item[WANT_TO_BE_PREGNANT].code, reasons why this should be supported, value, code, open, Slicing the items based on the system value, false)
* item[WANT_TO_BE_PREGNANT].code contains
    WANT_TO_BE_PREGNANT_REPORTED_CODE 1..1

* item[WANT_TO_BE_PREGNANT].code 1..1
* item[WANT_TO_BE_PREGNANT].code[WANT_TO_BE_PREGNANT_REPORTED_CODE].code = #86645-9
* item[WANT_TO_BE_PREGNANT].code[WANT_TO_BE_PREGNANT_REPORTED_CODE].system = $LNC

* insert Question(BREASTFEEDING, is-breast-feeding, Is breastfeeding, choice, false, false,reasons why this should be supported)
* item[BREASTFEEDING]
  * answerValueSet 1..1
  * answerValueSet.extension contains permitted-value-conceptmap named InternalCodesToExchangeCodes 1..1
  * answerValueSet = Canonical(YesNoValueSet)
  * answerValueSet.extension[InternalCodesToExchangeCodes].valueCanonical = Canonical(BreastfeedingStatusProprietaryToLOINC)

* insert Slice(item[BREASTFEEDING].code, reasons why this should be supported, value, code, open, Slicing the items based on the system value, false)
* item[BREASTFEEDING].code contains
    BREASTFEEDING_REPORTED_CODE 1..1

* item[BREASTFEEDING].code 1..1
* item[BREASTFEEDING].code[BREASTFEEDING_REPORTED_CODE].code = #63895-7
* item[BREASTFEEDING].code[BREASTFEEDING_REPORTED_CODE].system = $LNC

* insert Question(LMP, lmp, Last Menstrual Period, date, false, false, reasons why this should be supported)

* insert Slice(item[LMP].code, reasons why this should be supported, value, code, open, Slicing the items based on the system value, false)
* item[LMP].code contains
    LMP_REPORTED_CODE 1..1

* item[LMP].code 1..1
* item[LMP].code[LMP_REPORTED_CODE].code = #LP187193-0
* item[LMP].code[LMP_REPORTED_CODE].system = $LNC

* insert Question(EDD, edd, Estimated Delivery Date, date, false, false, reasons why this should be supported)

* insert Slice(item[EDD].code, reasons why this should be supported, value, code, open, Slicing the items based on the system value, false)
* item[EDD].code contains
    EDD_CODE 1..1

* item[EDD].code 1..1
* item[EDD].code[EDD_CODE].code = #11779-6
* item[EDD].code[EDD_CODE].system = $LNC

* insert Question(FamilyPlanningMethod, fpm, Family Planning Method, choice, false, true, reasons why this should be supported)
* item[FamilyPlanningMethod]
  * answerValueSet 1..1
  * answerValueSet = Canonical(FamilyPlanningMethodValueSet)

* insert Slice(item[FamilyPlanningMethod].code, reasons why this should be supported, value, code, open, Slicing the items based on the system value, false)
* item[FamilyPlanningMethod].code contains
    FPM_CODE 1..1

* item[FamilyPlanningMethod].code 1..1
* item[FamilyPlanningMethod].code[FPM_CODE].code = #8659-5
* item[FamilyPlanningMethod].code[FPM_CODE].system = $LNC

Profile: GenericQuestionnaireResponse
Parent: QuestionnaireResponse
Id: generic-questionnaire-response
Title: "Questionnaire Response - Generic"
Description: "Base Questionnaire Response elements that are inherited by other Questionnaire Response resources."
* questionnaire 1..1
* status 1..1
* subject 1..1
* subject only Reference(EthPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* item 1..*
* author 1..1
* authored 1..1

Profile: PregnancyStatusAndFPMQuestionnaireResponse
Parent: GenericQuestionnaireResponse
Id: pregnancy-status-and-fmp-questionnaire-response
Title: "Questionnaire Response - Pregnancy Status and Family Planning Method (FPM)"
Description: "A questionaire response that documents the answers to the pregnancy status and FPM questions."
* obeys QuestionnaireResponse-PregnancyStatus-1
* questionnaire only Canonical(PregnancyStatusAndFPMQuestionnaire)
* insert Slice(item, reasons why this should be supported, value, linkId, open, Slicing the items based on the linkId value, false)
* item contains
    PREGNANT 0..1 MS and
    WANT_TO_BE_PREGNANT 0..1 MS and
    BREASTFEEDING 0..1 MS and
    LMP 0..1 MS and
    EDD 0..1 MS and
    FamilyPlanningMethod 0..1 MS

* insert QuestionResponseItem(PREGNANT, pregnant,Is Pregnant, StrictCoding, reasons why this should be supported)

* insert QuestionResponseItem(WANT_TO_BE_PREGNANT, want-to-be-pregnant, Wants to be pregnant, StrictCoding, reasons why this should be supported)

* insert QuestionResponseItem(BREASTFEEDING, is-breast-feeding, Is breastfeeding, StrictCoding, reasons why this should be supported)

* insert QuestionResponseItem(LMP, lmp, Last Menstrual Period, date, reasons why this should be supported)
* insert QuestionResponseItem(EDD, edd, Estimated Delivery Date, date, reasons why this should be supported)
* insert QuestionResponseItem(FamilyPlanningMethod, fpm, Family Planning Method, StrictCoding, reasons why this should be supported)

Profile: Weight
Parent: GenericObservation
Id: weight-observation
Title: "Observation - Weight"
Description: "Represents the patient's weight."
* category 1..1
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#29463-7
* value[x] only StrictQuantity
* valueQuantity 1..1
* valueQuantity.unit = "kg"
* valueQuantity = $UCUM_UNIT#kg

Profile: Height
Parent: GenericObservation
Id: height-observation
Title: "Observation - Height"
Description: "Represents the patient's height."
* category 1..1
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#8302-2
* value[x] only StrictQuantity
* valueQuantity 1..1
* valueQuantity.unit = "cm"
* valueQuantity = $UCUM_UNIT#cm

Profile: BMI
Parent: GenericObservation
Id: bmi-observation
Title: "Observation - BMI"
Description: "Represents the patient's BMI."
* category 1..1
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#39156-5
* value[x] only StrictQuantity
* valueQuantity 1..1
* valueQuantity.unit = "kg/m2"
* valueQuantity = $UCUM_UNIT#kg/m2

* derivedFrom 1..*
* derivedFrom only Reference(Height or Weight)

Profile: GeneralPractitioner
Parent: Practitioner
Id: practitioner
Title: "Practitioner - General Practitioner"
Description: 
    "Represents the practitioner who participated in the observation."
* name 1..*
* name.given 1..*
* name.family 1..1
* name.prefix 0..* MS
* name.prefix ^definition =
    "reason(s) why this should be supported."
* telecom 1..*

Profile: NutritionalStatus
Parent: GenericObservation
Id: nutritional-status-observation
Title: "Observation - Nutritional Status"
Description: "Represents the patient's Nutritional Status."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#101819-1
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from NutritionalStatusValueSet (required)

Profile: NutritionalScreeningResult
Parent: GenericObservation
Id: nutritional-screening-result-observation
Title: "Observation - Nutritional Screening Result"
Description: "Represents the patient's Nutritional Screening Result."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#39201-9
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from NutritionalScreeningResultValueSet (required)

Profile: NutritionalSupplimentsProvided
Parent: GenericObservation
Id: nutritional-suppliments-provided-observation
Title: "Observation - Nutritional Suppliments Provided"
Description: "Represents the patient's Nutritional Suppliments Provided."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#373453009
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.text 1..1
* valueCodeableConcept from NutritionalSupplimentsProvidedValueSet (required)
* derivedFrom 0..1 MS
* derivedFrom ^definition =
    "reason(s) why this should be supported."
* derivedFrom only Reference(TherapeuticSupplementaryFood)

Profile: EstimatedDeliveryDate
Parent: GenericObservation
Id: estimated-delivery-date-observation
Title: "Observation - Patient Estimated Delivery Date"
Description: "Represents the patient's Estimated Delivery Date."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#11778-8
* value[x] only dateTime
* valueDateTime 1..1
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* component 0..0

Profile: LastMenstrualPeriod
Parent: GenericObservation
Id: last-menstrual-period-observation
Title: "Observation - Patient Last Menstrual Period"
Description: "Represents the patient's Last Menstrual Period."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#8665-2
* value[x] only dateTime
* valueDateTime 1..1
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* component 0..0

Profile: FamilyPlanningMethod
Parent: GenericObservation
Id: family-planning-method-observation
Title: "Observation - Family Planning Method"
Description: "Represents the patient's Family Planning Method."
* category 1..1
* category = $OBSERVATION_CATEGORY#social-history
* code = $SCT#243816001
* valueCodeableConcept.extension contains FamilyPlanningMethods named Method 1..*

Profile: ReferredForPMTCTServiceRequest
Parent: GenericServiceRequest
Id: referred-for-pmtct-service-request
Title: "Service Request - Patient Referral to PMTCT"
Description: "Represents a service request for the patient's referral to PMTCT."
* code = $LNC#LP173238-9
* authoredOn 1..1
* orderDetail 1..*
* insert Slice(orderDetail, reasons why this should be supported, value, coding, open, Slicing the items based on the linkId value, false)
* orderDetail contains
    PMTCT 1..1

* orderDetail[PMTCT].coding 1..1
* orderDetail[PMTCT].coding = $LNC#LA6505-7

* requester 1..1

Profile: TherapeuticSupplementaryFood
Parent: GenericObservation
Id: therapeutic-supplementary-food-observation
Title: "Observation - Therapeutic/Supplementary Food"
Description: "Represents the patient's Therapeutic/Supplementary Food."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#41829006
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)
* derivedFrom 1..1
* derivedFrom only Reference(NutritionalScreeningResult)

Profile: Edema
Parent: GenericObservation
Id: edema-observation
Title: "Observation - Edema"
Description: "Indicates the presence of Edema."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#44966-0
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from EdemaValueSet (required)

Profile: MUAC
Parent: GenericObservation
Id: muac-observation
Title: "Observation - MUAC"
Description: "Measuring thae patient's mid upper arm circumference."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#284473002
* value[x] only StrictQuantity
* valueQuantity 1..1
* valueQuantity.unit = "cm"
* valueQuantity = $UCUM_UNIT#cm

Profile: HeadCircumference
Parent: GenericObservation
Id: head-circumference-observation
Title: "Observation - Head Circumference"
Description: "Represents the patient's Head Circumference."
* category 1..1
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#9843-4
* value[x] only StrictQuantity
* valueQuantity 1..1
* valueQuantity.unit = "cm"
* valueQuantity = $UCUM_UNIT#cm

Profile: ChildrenDevelopmentalMilestone
Parent: GenericObservation
Id: children-developmental-milestone-observation
Title: "Observation - Children Developmental Milestone"
Description: "Represents the child's developmental milestone."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#364673002
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from ChildrenDevelopmentalMilestoneValueSet (required)

Profile: PatientFunctionalStatus
Parent: GenericObservation
Id: patient-functional-status-observation
Title: "Observation - Patient Functional Status"
Description: "Represents the patient's functional status."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#75276-6
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from PatientFunctionalStatusValueSet (required)

Profile: PatientWHOStage
Parent: GenericObservation
Id: patient-who-stage-observation
Title: "Observation - WHO HIV Stage"
Description: "Represents the patient's HIV WHO stage."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#45233-4
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from WHOStageValueSet (required)

Profile: PregnancyStatus
Parent: GenericObservation
Id: pregnancy-status-observation
Title: "Observation - Pregnancy Status Reported"
Description: "Represents whether the patient is currently pregnant."
* obeys Observation-Pregnancy-Status-1
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#11449-6
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)
* basedOn 0..1 MS
* basedOn ^definition =
    "reason(s) why this should be supported."
* basedOn only Reference(ReferredForPMTCTServiceRequest)

Profile: FuturePregnancyPlans
Parent: GenericObservation
Id: future-pregnancy-plans-observation
Title: "Observation - Future Pregnancy Plans"
Description: "Represents whether the patient plans to be pregnant in the future."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#86645-9
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)

Profile: BreastfeedingStatus
Parent: GenericObservation
Id: breastfeeding-status-observation
Title: "Observation - Breastfeeding Status"
Description: "Represents whether the patient is currently breatfeeding."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#63895-7
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)

Profile: GenericMedicationRequest
Parent: MedicationRequest
Id: generic-medication-request
Title: "Medication Request - Generic"
Description: "Base Medication Request elements that are inherited by other Medication Request profiles."
* authoredOn 1..1
* identifier 1..*

* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)

* identifier contains
    RequestID 0..1 MS

* identifier[RequestID] ^definition =
    "reason(s) why this should be supported."
* identifier[RequestID].value 1..1
* identifier[RequestID].system = $PrescriptionID
* identifier[RequestID].type = $IdentifierTypeCodeSystem#FILL
* identifier[RequestID].type.text = "Prescription identifier"

* status 1..1
* intent 1..1
* subject 1..1
* subject only Reference(EthPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* medicationCodeableConcept.coding only StrictCoding

* dispenseRequest.quantity 1..1
* dispenseRequest.quantity.value 1..1
* dispenseRequest.quantity.unit 1..1
* dispenseRequest.quantity.code 1..1
* dispenseRequest.quantity.system 1..1

* reasonCode.coding only StrictCoding

Profile: GenericDrugDispensation
Parent: MedicationDispense
Id: generic-medication-dispense
Title: "Medication Dispense - Generic"
Description: "Base Medication Request elements that are inherited by other Medication Request profiles."
* status 1..1
* medicationCodeableConcept.text 1..1
* medicationCodeableConcept.coding only StrictCoding

* subject 1..1 
* subject only Reference(EthPatient)

* context 1..1 
* context only Reference(TargetFacilityEncounter)

* quantity 1..1
* quantity.value 1..1
* quantity.unit 1..1
* quantity.code 1..1
* quantity.system 1..1

* daysSupply 1..1
* daysSupply.value 1..1
* daysSupply.unit 1..1
* daysSupply.code 1..1
* daysSupply.system 1..1

* whenHandedOver 1..1

Profile: GenericMedicationStatement
Parent: MedicationStatement
Id: generic-medication-statement
Title: "Medication Statement - Generic"
Description: "Base Medication Statement elements that are inherited by other Medication Statement profiles."
* status 1..1
* subject 1..1
* subject only Reference(EthPatient)
* context 1..1
* context only Reference(TargetFacilityEncounter)
* effective[x] 1..1
* reasonCode.coding only StrictCoding

Profile: DifferentiatedServiceDelivery
Parent: GenericObservation
Id: differentiated-service-delivery-observation
Title: "Observation - Differentiated Service Delivery (DSD)"
Description: "Represents the DSD details."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $DSDAssessment#DSD-Assessment
* value[x] only dateTime
* valueDateTime 1..1
* extension contains DSDAssessmentExtension named DSDAssessmentDetails 1..1

Profile: StrictQuantity
Parent: Quantity
Id: strict-quantity
Title: "Strict Quantity"
Description: "Strict requirements for quantity-based measurements."
* value 1..1
* unit 1..1
* system 1..1
* code 1..1

Profile: TargetPopulation
Parent: GenericObservation
Id: target-population-observation
Title: "Observation - Target Population"
Description: "Represents the patient's targeted population."
* category 1..1
* category = $OBSERVATION_CATEGORY#social-history
* code = $SCT#385436007
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from TargetPopulationCategoryValueSet (required)

Profile: HighestEducation
Parent: GenericObservation
Id: highest-education-observation
Title: "Observation - Highest Education"
Description: "Represents the patient's highest education."
* category 1..1
* category = $OBSERVATION_CATEGORY#social-history
* code = $LNC#82589-3
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from PatientEducationLevelValueSet (required)
* valueCodeableConcept.text 1..1

Profile: PatientOccupation
Parent: GenericObservation
Id: patient-occupation-observation
Title: "Observation - Patient Occupation"
Description: "Represents the patient's current occupation."
* category 1..1
* category = $OBSERVATION_CATEGORY#social-history
* code = $LNC#85658-3
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7901 (extensible)
* valueCodeableConcept.text 1..1

Profile: StrictCoding
Parent: Coding
Id: strict-coding
Title: "Strict Coding"
Description: "Strict requirements for elements using the Coding data types."
* system 1..1
* code 1..1

Profile: CervicalCancerScreeningCounsellingStatus
Parent: GenericObservation
Id: cervical-cancer-screening-counselling-status-observation
Title: "Observation - Cervical Cancer Screening Counselling Status"
Description: "Indicates whether the patient was counselled for cervical cancer."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#409063005
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)

Profile: CervicalCancerScreeningAcceptedStatus
Parent: GenericObservation
Id: cervical-cancer-screening-accepted-observation
Title: "Observation - Cervical Cancer Screening Accepted"
Description: "Indicates whether the patient accepted cervical cancer screening."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#171153008
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)
* derivedFrom 1..1
* derivedFrom only Reference(CervicalCancerScreeningCounsellingStatus)

Profile: CervicalCancerScreeningStatus
Parent: GenericObservation
Id: cervical-cancer-screening-observation
Title: "Observation - Cervical Cancer Screening"
Description: "Represents the cervical cancer screening details."
* obeys Cervical-Cancer-Screening-1
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#243877001
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from CervicalCancerScreenedValueSet (required)
* derivedFrom 1..1
* derivedFrom only Reference(CervicalCancerScreeningAcceptedStatus)

* hasMember 0..* MS
* hasMember ^definition =
    "reason(s) why this should be supported."

* insert SliceForResolve(hasMember, reasons why this should be supported, open, Slicing hasMember based on the profile value, false)

* hasMember contains
    ScreeningType 0..1 MS and
    ScreeningMethod 0..1 MS and
    ScreeningResult 0..1 MS

* hasMember[ScreeningType] ^definition =
    "reason(s) why this should be supported."
* hasMember[ScreeningType] only Reference(CervicalCancerScreeningType)

* hasMember[ScreeningMethod] ^definition =
    "reason(s) why this should be supported."
* hasMember[ScreeningMethod] only Reference(CervicalCancerScreeningMethod)

* hasMember[ScreeningResult] ^definition =
    "reason(s) why this should be supported."
* hasMember[ScreeningResult] only Reference(CervicalCancerScreeningResult)

Profile: CervicalCancerScreeningType
Parent: GenericObservation
Id: cervical-cancer-screening-type-observation
Title: "Observation - Cervical Cancer Screening Type"
Description: "This is used to record the patient's cervical cancer screening type."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#413744002
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from CervicalCancerScreeningTypeValueSet (required)

Profile: CervicalCancerScreeningMethod
Parent: GenericObservation
Id: cervical-cancer-screening-method-observation
Title: "Observation - Cervical Cancer Screening Method"
Description: "This is used to record the patient's cervical cancer screening method."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#171149006
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from CervicalCancerScreeningMethodValueSet (required)
* basedOn 1..1
* basedOn only Reference(CervicalCancerScreeningServiceRequest)

Profile: CervicalCancerScreeningResult
Parent: GenericObservation
Id: cervical-cancer-screening-result-observation
Title: "Observation - Cervical Cancer Screening Result"
Description: "This is used to record the patient's cervical cancer screening result."
* obeys Cervical-Cancer-Screening-Result-1 and Cervical-Cancer-Screening-Result-2
* category 1..1
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#21864-4
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* insert Slice(valueCodeableConcept.coding, reasons why this should be supported, value, code, open, Slicing the screening result based on the value, false)

* valueCodeableConcept.coding contains
    VIA 0..1 MS and
    HPV 0..1 MS

* valueCodeableConcept.coding[VIA] ^definition =
    "reason(s) why this should be supported."
* valueCodeableConcept.coding[VIA].code 1..1
* valueCodeableConcept.coding[VIA].code from CervicalCancerScreeningVIAResultsValueSet (required)

* valueCodeableConcept.coding[HPV] ^definition =
    "reason(s) why this should be supported."
* valueCodeableConcept.coding[HPV].code 1..1
* valueCodeableConcept.coding[HPV].code from CervicalCancerScreeningHPVResultsValueSet (required)

* derivedFrom 1..1
* derivedFrom only Reference(CervicalCancerScreeningStatus)
* basedOn 0..* MS
* basedOn ^definition =
    "reason(s) why this should be supported."
* basedOn only Reference(CervicalCancerCarePlan)

Profile: ARVRegimenChange
Parent: GenericObservation
Id: arv-regimen-changed-observation
Title: "Observation - ARV Regimen Change"
Description: "This is used to capture the ARV regimen change category and its details."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#182838006
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from ARVRegimenChangeCategoryValueSet (required)
* hasMember 1..*

* insert SliceForResolve(hasMember, reasons why this should be supported, open, Slicing hasMember based on the profile value, false)

* hasMember contains
    ChangeReason 0..1 MS and
    ChangeCategoryType 1..1

* hasMember[ChangeReason] ^definition =
    "reason(s) why this should be supported."
* hasMember[ChangeReason] only Reference(ARVRegimenChangeReason)

* hasMember[ChangeCategoryType] only Reference(ARVRegimenChangeCategoryType)

Profile: ARVRegimenChangeReason
Parent: GenericObservation
Id: arv-regimen-change-reason-observation
Title: "Observation - ARV Regimen Change Reason"
Description: "This is used to capture the reason for the ARV regimen change."
* obeys Observation-ARV-Regimen-Change-Reason-1 and Observation-ARV-Regimen-Change-Reason-2
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LL354-2
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from ReasonForARVRegimenChangeValueSet (required)
* valueCodeableConcept.text 1..1
* interpretation 0..* MS
* interpretation ^definition =
    "reason(s) why this should be supported."
* interpretation.text 1..1
* interpretation.coding only StrictCoding

* insert Slice(interpretation, reasons why this should be supported, value, text, open, Slicing the reason for the regimen change based on the text value, false)

* interpretation contains
    ImmunologicFailure 0..1 MS and
    ClinicalFailure 0..1 MS and
    VirologicFailure 0..1 MS

* interpretation[ImmunologicFailure] ^definition =
    "reason(s) why this should be supported."
* interpretation[ImmunologicFailure].text = "CD4 below 250 cells/mm3"
* interpretation[ImmunologicFailure] = $ObservationInterpretation#L

* interpretation[ClinicalFailure] ^definition =
    "reason(s) why this should be supported."
* interpretation[ClinicalFailure].text = "CD4 below 100 cells/mm3"
* interpretation[ClinicalFailure] = $ObservationInterpretation#LL

* interpretation[VirologicFailure] ^definition =
    "reason(s) why this should be supported."
* interpretation[VirologicFailure].text = "VL above 999 copies/mL"
* interpretation[VirologicFailure] = $ObservationInterpretation#H

Profile: ARVRegimenSideEffects
Parent: GenericObservation
Id: arv-regimen-side-effects-observation
Title: "Observation - ARV Regimen Side Effects"
Description: "This is used to capture the any side affects as a result of taking ARV medication."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#401207004
* valueCodeableConcept.extension contains ARVRegimenSideEffectsExtension named ARVSideEffects 1..*
* partOf 1..1
* partOf only Reference(ARTTreatmentMedicationStatement)

Profile: PlaceOfDelivery
Parent: GenericObservation
Id: delivery-place-observation
Title: "Observation - Place of Delivery"
Description: "This is used to record the place of delivery for a patient who is < 6yrs of age."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#72150-6
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.coding from PlaceOfDeliveryValueSet (required)
* valueCodeableConcept.text 1..1

Profile: ModeOfDelivery
Parent: GenericObservation
Id: delivery-mode-observation
Title: "Observation - Mode of Delivery"
Description: "This is used to record the mode of delivery for a patient who is < 6yrs of age."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#LL2193-2
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.coding from ModeOfDeliveryValueSet (required)
* valueCodeableConcept.text 1..1

Profile: ResidesWithinCatchmentArea
Parent: GenericObservation
Id: resides-in-catchment-area-observation
Title: "Observation - Resides in Catchment Area"
Description: "This is used to indicate whether the patient resides in the catchment area."
* category 1..1
* category = $OBSERVATION_CATEGORY#social-history
* code = $LNC#LA21920-6
* value[x] only CodeableConcept
* valueCodeableConcept from YesNoValueSet (required)
* extension contains AnticipatedChallengesWithRegularFollowUpExtension named FollowUpChallengesAnticipated 0..1 MS
* extension[FollowUpChallengesAnticipated] ^definition =
    "reason(s) why this should be supported."

Profile: ARVRegimenChangeCategoryType
Parent: GenericObservation
Id: arv-change-category-type-observation
Title: "Observation - ARV Regimen Category Type"
Description: "This is used to record the type for the ARV regimen change category."
* obeys Observation-ARV-Regimen-Change-Type-1
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#182838006
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* insert Slice(valueCodeableConcept.coding, reasons why this should be supported, value, code, open, Slicing the screening result based on the value, false)

* valueCodeableConcept.coding contains
    SwitchType 0..1 MS and
    SubstitutionType 0..1 MS

* valueCodeableConcept.coding[SwitchType] ^definition =
    "reason(s) why this should be supported."
* valueCodeableConcept.coding[SwitchType].code 1..1
* valueCodeableConcept.coding[SwitchType].code from ARVRegimenSwitchTypeValueSet (required)

* valueCodeableConcept.coding[SubstitutionType] ^definition =
    "reason(s) why this should be supported."
* valueCodeableConcept.coding[SubstitutionType].code 1..1
* valueCodeableConcept.coding[SubstitutionType].code from ARVRegimenSubstituteTypeValueSet (required)

Profile: ReferralOutServiceRequest
Parent: GenericServiceRequest
Id: referral-out-service-request
Title: "Service Request - Request for Referral"
Description: "Service request used to make a request for a referral."
* intent = #order
* code = $LNC#LP173238-9
* locationReference 1..*
* authoredOn 1..1
* reasonReference 1..*

Profile: ARVMedicationAdministration
Parent: MedicationAdministration
Id: arv-medication-administration
Title: "Medication Administration - For Prescribed ARV Medication"
Description: "Used to record the medication administration period for prescribed ARV medication."
* status 1..1
* request 1..1
* medication[x] only Reference
* medicationReference only Reference(ARVMedication)

* request only Reference(ARVMedicationRequest)
* subject 1..1
* subject only Reference(EthPatient)
* context 1..1
* context only Reference(TargetFacilityEncounter)
* effective[x] only Period
* effectivePeriod 1..1
  * start 1..1
  * end 1..1
* note 1..*

Profile: ARVMedication
Parent: Medication
Id: arv-regimen-medication
Title: "Medication - Represents an ARV Regimen"
Description: "Used to record the ARV regimen that will be prescribed to the patient."
* code 1..1
* code.coding only StrictCoding
* code from ARVTreatmentValueSet (required)
* code.text 1..1

Profile: OIMedication
Parent: Medication
Id: oi-medication
Title: "Medication - Represents Medication For Opportunistic Infections"
Description: "Used to record the OI medication that will be prescribed to the patient."
* code 1..1
* code.coding only StrictCoding
* code from OpportunisticInfectionsTreatmentValueSet (required)
* code.text 1..1

Profile: ReferralInServiceRequest
Parent: GenericServiceRequest
Id: referral-in-service-request
Title: "Service Request - Incoming Referral Information"
Description: "Used to capture a patient's referral information."
* code = $LNC#39267-0
* authoredOn 1..1
* requester 1..1
* reasonCode 1..*

* insert Slice(reasonCode, reasons why this should be supported, value, coding, open, Slicing the reason code based on the coding value, false)

* reasonCode contains
    HIVReferral 0..1 MS

* reasonCode[HIVReferral] ^definition =
    "reason(s) why this should be supported."
* reasonCode[HIVReferral].coding 1..1
* reasonCode[HIVReferral].coding from ReferralReasonValueSet (required)

* locationReference 1..1

Profile: HIVStatusDisclosureAtEnrollment
Parent: GenericObservation
Id: hiv-status-disclosure-at-enrollment-observation
Title: "Observation - HIV Status Disclosure At Enrollment"
Description: "Used to determine whether the patient or their child's HIV Status is known, and by who."
* obeys Observation-HIV-Status-Disclosure-At-Enrollment-1
* category 1..1
* category = $OBSERVATION_CATEGORY#social-history
* code = $LNC#47249-8
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)
* extension contains PatientRelationshipExtension named PatientRelationship 0..* MS
* extension[PatientRelationship] ^definition =
    "reason(s) why this should be supported."

Profile: FamilyMemberHIVStatus
Parent: GenericObservation
Id: family-member-hiv-status-observation
Title: "Observation - Family Member HIV Status"
Description: "This is used to record the family member's HIV status."
* category 1..1
* category = $OBSERVATION_CATEGORY#social-history
* code = $LNC#10157-6
* hasMember 1..*

* insert SliceForResolve(hasMember, reasons why this should be supported, open, Slicing hasMember based on the profile value, false)
* hasMember ^slicing.discriminator[+].type = #value
* hasMember ^slicing.discriminator[=].path = "resolve().value.ofType(CodeableConcept).coding"
* hasMember ^slicing.discriminator[+].type = #value
* hasMember ^slicing.discriminator[=].path = "display"

* hasMember contains
    DisclosureAtEnrollment 0..1 MS and
    CounseledForHIV 0..1 MS and
    TestedForHIV 0..1 MS and
    EnrolledIntoCare 0..1 MS and
    StartedART 0..1 MS and
    HealthStatus 0..1 MS

* hasMember[DisclosureAtEnrollment] ^definition =
    "reason(s) why this should be supported."
* hasMember[DisclosureAtEnrollment] only Reference(HIVStatusDisclosureAtEnrollment)

* hasMember[CounseledForHIV] ^definition =
    "reason(s) why this should be supported."
* hasMember[CounseledForHIV] only Reference(CounseledForHIV)

* hasMember[TestedForHIV] ^definition =
    "reason(s) why this should be supported."
* hasMember[TestedForHIV] only Reference(TestedForHIV)

* hasMember[EnrolledIntoCare] ^definition =
    "reason(s) why this should be supported."
* hasMember[EnrolledIntoCare].display = "Linked to HIV Care and Treatment"
* hasMember[EnrolledIntoCare] only Reference(HIVProgramStatusObservation)

* hasMember[StartedART] ^definition =
    "reason(s) why this should be supported."
* hasMember[StartedART].display = "Initiated ART"
* hasMember[StartedART] only Reference(HIVProgramStatusObservation)

* hasMember[HealthStatus] ^definition =
    "reason(s) why this should be supported."
* hasMember[HealthStatus] only Reference(HealthStatus)

* note 0..*

Profile: TestedForHIV
Parent: GenericObservation
Id: tested-for-hiv-observation
Title: "Observation - Tested for HIV"
Description: "Used to determine whether the patient has tested for HIV."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#171121004
* value[x] only CodeableConcept
* valueCodeableConcept from YesNoValueSet (required)
* valueCodeableConcept.extension contains ObservedDateExtension named ObservedDate 0..1 MS
* valueCodeableConcept.extension[ObservedDate] ^definition =
    "reason(s) why this should be supported."

* hasMember 0..* MS
* hasMember ^definition =
    "reason(s) why this should be supported."

* insert SliceForResolve(hasMember, reasons why this should be supported, open, Slicing hasMember based on the profile value, false)

* hasMember contains
    ConfirmedHIVPositive 0..1 MS

* hasMember[ConfirmedHIVPositive] ^definition =
    "reason(s) why this should be supported."
* hasMember[ConfirmedHIVPositive] only Reference(ConfirmedHIVPositive)

Profile: CounseledForHIV
Parent: GenericObservation
Id: counseled-for-hiv-observation
Title: "Observation - Counseled for HIV"
Description: "Used to determine whether the patient has been counseled for HIV testing (pre-test)."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#313077009
* value[x] only CodeableConcept
* valueCodeableConcept from YesNoValueSet (required)
* valueCodeableConcept.extension contains ObservedDateExtension named ObservedDate 0..1 MS
* valueCodeableConcept.extension[ObservedDate] ^definition =
    "reason(s) why this should be supported."

* hasMember 0..1 MS
* hasMember ^definition =
    "reason(s) why this should be supported."
* hasMember only Reference(TestedForHIV)

Profile: HealthStatus
Parent: GenericObservation
Id:  health-status-observation
Title: "Observation - Health Status"
Description: "This is used to record the patient's health status."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#11323-3
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from HealthStatusValueSet (required)

Profile: HIVTestResults
Parent: GenericObservation
Id:  hiv-test-results-observation
Title: "Observation - HIV Test Results"
Description: "This is used to record the patient's HIV test results."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#LL5696-1
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from HIVTestResultValueSet (required)
* derivedFrom 1..1
* derivedFrom only Reference(TestedForHIV)

Profile: PatientFamilymembersGroup
Parent: Group
Id: patient-family-members-group
Title: "Group - Patient's Family Members"
Description: "Represents the patient and the family members being referenced as part of healthcare-related activity"
* type = #person
* actual = true
* member 1..*

* insert Slice(member, reasons why this should be supported, value, entity.display, open, Slicing member based on the display value, false)

* member contains
    IndexCase 1..1 and
    RelatedPatient 0..1 MS

* member[IndexCase].entity.display = "Index Patient"
* member[IndexCase].entity only Reference(EthPatient)

* member[RelatedPatient].entity.display = "A Patient Who Is Related to the Index Patient"
* member[RelatedPatient] ^definition =
    "reason(s) why this should be supported."
* member[RelatedPatient].entity only Reference(EthPatient)

Profile: EthEpisodeOfCare
Parent: EpisodeOfCare
Id: eth-episode-of-care
Title: "Episode of Care"
Description: "Records the health related activities for patients associated with HIV, TB and Cervical Cancer treatment and care services."
* identifier 0..* MS
* identifier ^definition =
    "reason(s) why this should be supported."

* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)
* identifier contains
    EpisodeOfCareID 0..1 MS

* identifier[EpisodeOfCareID] ^definition =
    "reason(s) why this should be supported."
* identifier[EpisodeOfCareID].value 1..1
* identifier[EpisodeOfCareID].system = $EpisodeOfCareID

* type 1..*
* insert Slice(type.coding, reasons why this should be supported, value, code, open, Slicing type based on the code value, false)

* type.coding contains
    HIV-Tracking 0..1 MS and
    ART 0..1 MS and
    TB 0..1 MS and
    TPT 0..1 MS and
    Cervical-Cancer 0..1 MS

* type.coding[HIV-Tracking] ^definition =
    "reason(s) why this should be supported."
* type.coding[HIV-Tracking].code 1..1
* type.coding[HIV-Tracking].code = $LNC#LA28577-7

* type.coding[ART] ^definition =
    "reason(s) why this should be supported."
* type.coding[ART].code 1..1
* type.coding[ART].code = $LNC#LP66375-4

* type.coding[TB] ^definition =
    "reason(s) why this should be supported."
* type.coding[TB].code 1..1
* type.coding[TB].code = $SCT#171126009

* type.coding[TPT] ^definition =
    "reason(s) why this should be supported."
* type.coding[TPT].code 1..1
* type.coding[TPT].code = $SCT#699618001

* type.coding[Cervical-Cancer] ^definition =
    "reason(s) why this should be supported."
* type.coding[Cervical-Cancer].code 1..1
* type.coding[Cervical-Cancer].code = $SCT#702455009

* patient only Reference(EthPatient)
* managingOrganization 1..1
* managingOrganization only Reference(ServiceProvider)

* referralRequest 0..* MS
* referralRequest ^definition =
    "reason(s) why this should be supported."

* insert SliceForResolve(referralRequest, reasons why this should be supported, open, Slicing referralRequest based on the profile value, false)

* referralRequest contains
    Incoming 0..1 MS and
    Outgoing 0..1 MS

* referralRequest[Incoming] ^definition =
    "reason(s) why this should be supported."
* referralRequest[Incoming] only Reference(ReferralInServiceRequest)

* referralRequest[Outgoing] ^definition =
    "reason(s) why this should be supported."
* referralRequest[Outgoing] only Reference(ReferralOutServiceRequest)

Profile: ViralLoadPerformed
Parent: GenericObservation
Id: viral-load-performed-observation
Title: "Observation - Viral Load Performed"
Description: "This is used to indicate whether a viral load was performed."
* obeys Observation-Viral-Load-Performed-1
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $SCT#315124004
* value[x] only CodeableConcept
* valueCodeableConcept from YesNoValueSet (required)

* hasMember 0..1 MS
* hasMember ^definition =
    "reason(s) why this should be supported."
* hasMember only Reference(ViralLoadIndication)

Profile: ViralLoadIndication
Parent: GenericObservation
Id: viral-load-indication-observation
Title: "Observation - Viral Load Indication"
Description: "This is used to represent the viral load indication."
* obeys Observation-Viral-Load-Indication-1 and Observation-Viral-Load-Indication-2 and Observation-Viral-Load-Indication-3
* category 1..1
* category = $OBSERVATION_CATEGORY#laboratory
* code from ViralLoadIndicationValueSet (required)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* insert Slice(valueCodeableConcept.coding, reasons why this should be supported, value, code, open, Slicing the viral load indication on the code value, false)

* valueCodeableConcept.coding contains
    Routine 0..1 MS and
    Targeted 0..1 MS

* valueCodeableConcept.coding[Routine] ^definition =
    "reason(s) why this should be supported."
* valueCodeableConcept.coding[Routine].code 1..1
* valueCodeableConcept.coding[Routine].code from RoutineIndicationViralLoadValueSet (required)

* valueCodeableConcept.coding[Targeted] ^definition =
    "reason(s) why this should be supported."
* valueCodeableConcept.coding[Targeted].code 1..1
* valueCodeableConcept.coding[Targeted].code from TargetedIndicationViralLoadValueSet (required)

* basedOn 1..*

* insert SliceForResolve(basedOn, reasons why this should be supported, open, Slicing basedOn based on the profile value, false)

* basedOn contains
    ViralLoadServiceRequest 1..1 and
    ARTCarePlan 0..1 MS

* basedOn[ARTCarePlan] ^definition =
    "reason(s) why this should be supported."
* basedOn[ARTCarePlan] only Reference(ARTFollowUpCareplan)

* basedOn[ViralLoadServiceRequest] only Reference(ViralLoadServiceRequest)

Profile: ViralLoadServiceRequest
Parent: GenericServiceRequest
Id: viral-load-service-request
Title: "Service Request - Viral Load"
Description: "Represents the service request for viral load."
* code = $LNC#25836-8
* category 1..1
* category = $LNC#LP94892-4
* priority 1..1
* authoredOn 1..1

Profile: GenericDiagnosticReport
Parent: DiagnosticReport
Id: generic-diagnostic-report
Title: "Diagnostic Report - Generic"
Description: "Base DiagnosticReport elements that are inherited by other DiagnosticReport profiles."
* status 1..1
* category 1..1
* category = $LNC#11502-2
* code 1..1
* subject 1..1
* subject only Reference(EthPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* result 1..*
* issued 1..1
* basedOn 1..1
* performer 1..*
* performer only Reference(ServiceProvider)

Profile: ViralLoadDiagnosticReport
Parent: GenericDiagnosticReport
Id: viral-load-diagnostic-report
Title: "Diagnostic Report - Viral Load"
Description: "Represents the results for viral load."
* category = $LNC#11502-2
* code = $LNC#25836-8
* result 1..1
* result only Reference(ViralLoadResultObservation)
* basedOn only Reference(ViralLoadServiceRequest)

Profile: EnhancedAdherenceCounselling
Parent: GenericObservation
Id: enhanced-adherence-counselling-observation
Title: "Observation - Enhanced Adherence Counselling"
Description: "Indicates whether the patient has been provided with enhanced adherence counselling."
* obeys Observation-Enhanced-Adherence-Counselling-1
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#410265008
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)

* basedOn 0..* MS
* basedOn ^definition = "reason(s) why this should be supported."

* insert SliceForResolve(basedOn, reasons why this should be supported, open, Slicing basedOn based on the profile value, false)

* basedOn contains
    EACServiceRequest 0..1 MS and
    ARTCarePlan 0..1 MS

* basedOn[ARTCarePlan] ^definition =
    "reason(s) why this should be supported."
* basedOn[ARTCarePlan] only Reference(ARTFollowUpCareplan)

* basedOn[EACServiceRequest] ^definition =
    "reason(s) why this should be supported."
* basedOn[EACServiceRequest] only Reference(EnhancedAdherenceCounsellingServiceRequest)

Profile: EnhancedAdherenceCounsellingServiceRequest
Parent: GenericServiceRequest
Id: enhanced-adherence-counselling-service-request
Title: "Service Request - Enhanced Adherence Counselling"
Description: "Represents the service request for enhanced adherence counselling."
* code = $SCT#410265008
* orderDetail 1..1
* orderDetail from EACGivenValueSet (required)
* category 1..1
* category = $LNC#LP173100-1
* authoredOn 1..1
* reasonReference 1..1
* reasonReference only Reference(EnhancedAdherenceCounselling)

Profile: CD4Percentage
Parent: GenericObservation
Id: cd4-percentage-observation
Title: "Observation - CD4 Percentage"
Description: "Used to record the patient's CD4 percentage."
* category 1..1
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#32516-7

* value[x] only StrictQuantity
* valueQuantity 1..1
* valueQuantity = $UCUM_UNIT#%
* valueQuantity.unit = "%"

* derivedFrom 0..1 MS
* derivedFrom ^definition = "reason(s) why this should be supported."
* derivedFrom only Reference(CD4AbsoluteCount)

Profile: CD4AbsoluteCount
Parent: GenericObservation
Id: cd4-absolute-observation
Title: "Observation - Absolute CD4 Count"
Description: "Used to record the patient's absolute CD4 count."
* category 1..1
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#32515-9

* value[x] only StrictQuantity
* valueQuantity 1..1
* valueQuantity = $UCUM_UNIT#/mm3
* valueQuantity.unit = "cells/mm3"

* basedOn 0..1 MS
* basedOn ^definition =
    "reason(s) why this should be supported."
* basedOn only Reference(ARTFollowUpCareplan)

Profile: CD4ServiceRequest
Parent: GenericServiceRequest
Id: cd4-service-request
Title: "Service Request - CD4"
Description: "Represents the service request for CD4."
* code = $LNC#32515-9
* category 1..1
* category = $LNC#LP94892-4
* authoredOn 1..1

Profile: CD4DiagnosticReport
Parent: GenericDiagnosticReport
Id: cd4-diagnostic-report
Title: "Diagnostic Report - CD4"
Description: "Represents the results for CD4."
* obeys DiagnosticReport-CD4-1
* category = $LNC#11502-2
* code = $LNC#32515-9

* insert Slice(result, reasons why this should be supported, value, display, open, Slicing result based on the display value, false)

* result contains
    CD4AbsoluteCount 0..1 MS and
    CD4Percentage 0..1 MS

* result[CD4AbsoluteCount].display = "Absolute CD4 Count"
* result[CD4AbsoluteCount] ^definition =
    "reason(s) why this should be supported."
* result[CD4AbsoluteCount] only Reference(CD4AbsoluteCount)

* result[CD4Percentage].display = "CD4 Percentage"
* result[CD4Percentage] ^definition =
    "reason(s) why this should be supported."
* result[CD4Percentage] only Reference(CD4Percentage)

* issued 1..1
* basedOn 1..1
* basedOn only Reference(CD4ServiceRequest)

Profile: HGBServiceRequest
Parent: GenericServiceRequest
Id: hgb-service-request
Title: "Service Request - HGB"
Description: "Represents the service request for Hemoglobin (HGB)."
* code = $LNC#718-7
* category 1..1
* category = $LNC#LP94892-4
* authoredOn 1..1

Profile: HGBDiagnosticReport
Parent: GenericDiagnosticReport
Id: hgb-diagnostic-report
Title: "Diagnostic Report - HGB"
Description: "Represents the results for Hemoglobin (HGB)."
* code = $LNC#718-7
* result 1..1
* result only Reference(HGBResult)
* basedOn only Reference(HGBServiceRequest)

Profile: HGBResult
Parent: GenericObservation
Id: hgb-observation
Title: "Observation - HGB"
Description: "Used to record the patient's Hemoglobin (HGB)."
* category 1..1
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#718-7

* value[x] only StrictQuantity
* valueQuantity 1..1
* valueQuantity = $UCUM_UNIT#g/dL
* valueQuantity.unit = "g/dL"

/** referenceRange 1..*
* referenceRange.low 1..1
* referenceRange.low.value = 7.5
* referenceRange.low.unit = "g/dL"
* referenceRange.low = $UCUM_UNIT#g/dL

* referenceRange.high 1..1
* referenceRange.high.value = 10
* referenceRange.high.unit = "g/dL"
* referenceRange.high = $UCUM_UNIT#g/dL*/

Profile: CreatinineResult
Parent: GenericObservation
Id: creatine-observation
Title: "Observation - Creatinine"
Description: "Used to record the patient's creatinine."
* category 1..1
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#2160-0

* value[x] only StrictQuantity
* valueQuantity 1..1
* valueQuantity = $UCUM_UNIT#mg/dL
* valueQuantity.unit = "mg/dL"

/** referenceRange 1..*
* referenceRange.low 1..1
* referenceRange.low.value = 64

* referenceRange.high 1..1
* referenceRange.high.value = 104
* referenceRange.type = $ReferenceRangeMeaning#normal*/

Profile: CreatinineServiceRequest
Parent: GenericServiceRequest
Id: creatinine-service-request
Title: "Service Request - Creatinine"
Description: "Represents the service request for creatinine."
* code = $LNC#2160-0
* category 1..1
* category = $LNC#LP94892-4
* authoredOn 1..1

Profile: CreatinineDiagnosticReport
Parent: GenericDiagnosticReport
Id: creatinine-diagnostic-report
Title: "Diagnostic Report - Creatinine"
Description: "Represents the results for creatinine."
* code = $LNC#2160-0
* result 1..1
* result only Reference(CreatinineResult)
* basedOn only Reference(CreatinineServiceRequest)

Profile: ALTandASTResults
Parent: GenericObservation
Id: alt-ast-observation
Title: "Observation - Aspartate aminotransferase (AST) and Alanine aminotransferase (ALT)"
Description: "Used to record the patient's AST and ALT."
* category 1..1
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#24325-3

* component 1..*

* insert Slice(component, reasons why this should be supported, value, code, open, Slicing liver function test based on the code value, false)

* component contains
    AST 0..1 MS and
    ALT 0..1 MS

* component[AST] ^definition =
    "reason(s) why this should be supported."
* component[AST].value[x] only StrictQuantity
* component[AST].code = $LNC#1920-8
* component[AST].valueQuantity 1..1
* component[AST].valueQuantity.unit = "U/L"
* component[AST].valueQuantity = $UCUM_UNIT#U/L

* component[ALT] ^definition =
    "reason(s) why this should be supported."
* component[ALT].value[x] only StrictQuantity
* component[ALT].code = $LNC#1742-6
* component[ALT].valueQuantity 1..1
* component[ALT].valueQuantity.unit = "U/L"
* component[ALT].valueQuantity = $UCUM_UNIT#U/L

Profile: ALTandASTServiceRequest
Parent: GenericServiceRequest
Id: alt-ast-service-request
Title: "Service Request - Aspartate aminotransferase (AST) and Alanine aminotransferase (ALT)"
Description: "Represents the service request for AST and ALT."
* code = $LNC#24325-3
* category 1..1
* category = $LNC#LP94892-4
* authoredOn 1..1

Profile: ALTandASTDiagnosticReport
Parent: GenericDiagnosticReport
Id: alt-ast-diagnostic-report
Title: "Diagnostic Report - Aspartate aminotransferase (AST) and Alanine aminotransferase (ALT)"
Description: "Represents the results for AST and ALT."
* code = $LNC#24325-3
* result 1..1
* result only Reference(ALTandASTResults)
* basedOn only Reference(ALTandASTServiceRequest)

Profile: CotrimoxazolePreventiveTherapy
Parent: GenericObservation
Id: cotrimoxazole-preventive-therapy-observation
Title: "Observation - Cotrimoxazole Preventive Therapy"
Description: "Used to indicate whether the patient has started cotrimoxazole preventive therapy."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#18998-5

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)

* basedOn 0..1 MS
* basedOn ^definition =
    "reason(s) why this should be supported."
* basedOn only Reference(CotrimoxazolePreventiveTherapyCareplan)

Profile: CotrimoxazolePreventiveTherapyCareplan
Parent: CarePlan
Id: cotrimoxazole-preventive-therapy-careplan
Title: "Care Plan - Cotrimoxazole Preventive Therapy"
Description: "Used to record the cotrimoxazole preventive therapy details for the patient."
* status 1..1
* intent 1..1
* category 1..1
* category = $LNC#LP173209-0
* category.text 1..1
* category.text = "Cotrimoxazole Preventive Therapy"
* subject 1..1 
* subject only Reference(EthPatient)
* encounter 1..1 
* encounter only Reference(TargetFacilityEncounter)

* created 0..1 MS
* created ^definition = "reason(s) why this should be supported."

* activity 1..*

* activity.reference 0..1 MS
* activity.reference ^definition = "reason(s) why this should be supported."
* activity.reference only Reference(CotrimoxazolePreventiveTherapyMedicationRequest)

* activity.extension contains CotrimoxazoleAdherenceExtension named Adherence 0..1 MS
* activity.extension[Adherence] ^definition = "reason(s) why this should be supported."
* activity.extension[Adherence].valueReference only Reference(CotrimoxazolePreventiveTherapyAdherenceObservation)

Profile: CotrimoxazolePreventiveTherapyAdherenceObservation
Parent: GenericObservation
Id: cotrimoxazole-preventive-therapy-adherence-observation
Title: "Observation - Cotrimoxazole Preventive Therapy Adherence"
Description: "Represents the patient's cotrimoxazole preventive therapy Adherence"
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#418633004
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from ARVAdherenceValueSet (required)
* valueCodeableConcept.text 1..1

Profile: CotrimoxazolePreventiveTherapyMedicationRequest
Parent: GenericMedicationRequest
Id: cotrimoxazole-preventive-therapy-medication-request
Title: "Medication Request - Cotrimoxazole Preventive Therapy"
Description: "Used to record requests for medication that are prescribed to a patient receiving cotrimoxazole preventive therapy."
* medication[x] only Reference
* medicationReference only Reference(OIMedication)
* dispenseRequest.quantity = $OrderableDrugForm_UNIT#TAB
* dispenseRequest.quantity.unit = "TAB"
* reasonReference 1..1
* reasonReference only Reference(CotrimoxazolePreventiveTherapy)
* basedOn 1..1
* basedOn only Reference(CotrimoxazolePreventiveTherapyCareplan)

Profile: CotrimoxazolePreventiveTherapyDispensation
Parent: GenericDrugDispensation
Id: cotrimoxazole-preventive-therapy-medication-dispense
Title: "Medication Dispense - Cotrimoxazole Preventive Therapy"
Description: "Used to represent dispensed medication prescribed to a patient receiving cotrimoxazole preventive therapy."
* medication[x] only Reference
* medicationReference only Reference(OIMedication)

* quantity = $OrderableDrugForm_UNIT#TAB
* quantity.unit = "TAB"

* daysSupply = $UCUM_UNIT#d
* daysSupply.unit = "Days"

* authorizingPrescription 1..1
* authorizingPrescription only Reference(CotrimoxazolePreventiveTherapyMedicationRequest)

Profile: CotrimoxazolePreventiveTherapyMedicationAdministration
Parent: MedicationAdministration
Id: cotrimoxazole-preventive-therapy-medication-administration
Title: "Medication Administration - For Prescribed Cotrimoxazole Preventive Therapy Medication"
Description: "Used to record the medication administration period for prescribed cotrimoxazole preventive therapy medication."
* status 1..1
* medication[x] only Reference
* medicationReference only Reference(OIMedication)
* request 0..1 MS
  * ^definition = "Indicates a point in time prescription."
  * ^short = "Used for point in time prescriptions in the context of an encounter."
* request only Reference(CotrimoxazolePreventiveTherapyMedicationRequest)
* subject 1..1
* subject only Reference(EthPatient)
* context 1..1
* context only Reference(TargetFacilityEncounter)
* effective[x] only Period
* effectivePeriod 1..1
  * start 1..1
  * end 0..1 MS
    * ^definition = "Indicates the medication end date for the request."
    * ^short = "Used to represent the medication end date for the request (point in time prescription)."

Profile: FluconazolePreventiveTherapy
Parent: GenericObservation
Id: fluconazole-preventive-therapy-observation
Title: "Observation - Fluconazole Preventive Therapy"
Description: "Used to indicate whether the patient has started fluconazole preventive therapy."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#18924-1

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)

Profile: FluconazolePreventiveTherapyMedicationAdministration
Parent: MedicationAdministration
Id: fluconazole-preventive-therapy-medication-administration
Title: "Medication Administration - For Prescribed Fluconazole Preventive Therapy Medication"
Description: "Used to record the medication administration period for prescribed fluconazole preventive therapy medication."
* status 1..1
* medication[x] only Reference
* medicationReference only Reference(OIMedication)
* reasonReference 1..1
* reasonReference only Reference(FluconazolePreventiveTherapy)
* subject 1..1
* subject only Reference(EthPatient)
* context 1..1
* context only Reference(TargetFacilityEncounter)
* effective[x] only Period
* effectivePeriod 1..1
  * start 1..1
  * end 0..1 MS
    * ^definition = "Indicates the medication end date for the request."
    * ^short = "Used to represent the medication end date for the request (point in time prescription)."

Profile: HIVProgramStatusObservation
Parent: GenericObservation
Id: hiv-program-status-observation
Title: "Observation - HIV Program Status"
Description: "Represents the patient's HIV program status."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP95599-4
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from HIVTrackingValueSet (required)
* valueCodeableConcept.extension contains ObservedDateExtension named ObservedDate 0..1 MS
* valueCodeableConcept.extension[ObservedDate] ^definition =
    "reason(s) why this should be supported."
* hasMember 0..* MS
* hasMember ^definition =
    "reason(s) why this should be supported."

* insert SliceForResolve(hasMember, reasons why this should be supported, open, Slicing hasMember based on the profile value, false)

* hasMember contains
    ReasonsARTNotStarted 0..1 MS and
    FinalOutcomeKnown 0..1 MS and
    FinalOutcome 0..1 MS

* hasMember[ReasonsARTNotStarted] ^definition =
    "reason(s) why this should be supported."
* hasMember[ReasonsARTNotStarted] only Reference(HIVProgramStatusReasonARTNotStartedObservation)

* hasMember[FinalOutcomeKnown] ^definition =
    "reason(s) why this should be supported."
* hasMember[FinalOutcomeKnown] only Reference(HIVProgramFinalOutcomeKnownObservation)

* hasMember[FinalOutcome] ^definition =
    "reason(s) why this should be supported."
* hasMember[FinalOutcome] only Reference(FinalOutcomeObservation)

* basedOn 0..1 MS
* basedOn ^definition =
    "reason(s) why this should be supported."
* basedOn only Reference(ARTFollowUpCareplan)

Profile: HIVProgramStatusReasonARTNotStartedObservation
Parent: GenericObservation
Id: hiv-program-reason-art-not-started-observation
Title: "Observation - Reason ART Not Started"
Description: "Represents the reason for the patient not starting ART."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#87534-4
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from ReasonNotStartedARTValueSet (required)

* hasMember 0..1 MS
* hasMember ^definition =
    "reason(s) why this should be supported."
* hasMember only Reference(ARTNotStartedPlanForNextStepObservation)

Profile: ARTNotStartedPlanForNextStepObservation
Parent: GenericObservation
Id: art-not-started-plan-next-step-observation
Title: "Observation - ART Not Started Plan For Next Step"
Description: "Represents the plan for next steps for a patient who did not start ART."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP127912-6
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from PlanForNextStepValueSet (required)

Profile: HIVProgramFinalOutcomeKnownObservation
Parent: GenericObservation
Id: hiv-program-final-outcome-known-observation
Title: "Observation - HIV Program Final Outcome Known"
Description: "Indicates whether the final outcome is known for the patient who is enrolled into the HIV program."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#18776-5
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)
* valueCodeableConcept.extension contains ObservedDateExtension named ObservedDate 0..1 MS
* valueCodeableConcept.extension[ObservedDate] ^definition =
    "reason(s) why this should be supported."

* hasMember 0..1 MS
* hasMember ^definition =
    "reason(s) why this should be supported."
* hasMember only Reference(FinalOutcomeObservation)

Profile: FinalOutcomeObservation
Parent: GenericObservation
Id: hiv-program-final-outcome-observation
Title: "Observation - HIV Program Final Outcome"
Description: "Represents the final outcome for the patient who is enrolled into the HIV program."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#63939-3
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from FinalOutcomeValueSet (required)

* basedOn 0..1 MS
* basedOn ^definition =
    "reason(s) why this should be supported."
* basedOn only Reference(ReferralOutServiceRequest)

Profile: TBTreatmentStartedObservation
Parent: GenericObservation
Id: tb-treatment-started-observation
Title: "Observation - TB Treatment Started"
Description: "Documents whether the patient has started TB treatment."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#45242-5
* value[x] only CodeableConcept
* valueCodeableConcept obeys Observation-TB-Treatment-Started-1
* valueCodeableConcept from YesNoValueSet (required)
* valueCodeableConcept 1..1
* valueCodeableConcept.extension contains ObservedDateExtension named ObservedDate 0..1 MS
* valueCodeableConcept.extension[ObservedDate] ^definition =
    "reason(s) why this should be supported."
* derivedFrom 0..1 MS
* derivedFrom ^definition =
    "reason(s) why this should be supported."
* derivedFrom only Reference(TBDiagnosticTestResultObservation)

* basedOn 0..1 MS
* basedOn ^definition =
    "reason(s) why this should be supported."
* basedOn only Reference(TBTreatmentCareplan)

Profile: TBTreatmentStatusObservation
Parent: GenericObservation
Id: tb-treatment-status-observation
Title: "Observation - TB Treatment Status"
Description: "Documents the patient's TB treatment status."
* obeys Observation-TB-Treatment-Status-1 and Observation-TB-Treatment-Status-2
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#45241-7
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from TBTreatmentStatusValueSet (required)

* derivedFrom 1..1
* derivedFrom only Reference(TBTreatmentStartedObservation)

* hasMember 0..* MS
* hasMember ^definition =
    "reason(s) why this should be supported."

* insert SliceForResolve(hasMember, reasons why this should be supported, open, Slicing hasMember based on the profile value, false)

* hasMember contains
    ActiveTBDiscontinued 0..1 MS and
    ActiveTBCompleted 0..1 MS

* hasMember[ActiveTBDiscontinued] ^definition =
    "reason(s) why this should be supported."
* hasMember[ActiveTBDiscontinued] only Reference(TreatmentDiscontinuedObservation)

* hasMember[ActiveTBCompleted] ^definition =
    "reason(s) why this should be supported."
* hasMember[ActiveTBCompleted] only Reference(TreatmentCompletedObservation)

Profile: TreatmentDiscontinuedObservation
Parent: GenericObservation
Id: treatment-discontinued-observation
Title: "Observation - Treatment Discontinued"
Description: "Documents the details for the patient who discontinued treatment."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#182840001
* value[x] only dateTime
* valueDateTime 1..1

Profile: TreatmentCompletedObservation
Parent: GenericObservation
Id: treatment-completed-observation
Title: "Observation - Treatment Completed"
Description: "Documents the details for the patient who completed treatment."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $SCT#182992009
* value[x] only dateTime
* valueDateTime 1..1

Profile: EligibleForTPTObservation
Parent: GenericObservation
Id: tpt-eligbility-observation
Title: "Observation - TPT Eligibility"
Description: "Documents whether the patient is eligibile for TB Prevention Therapy (TPT)."
* obeys Observation-TB-Eligibility-1
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $TPTEligibilityStatusCodeSystem#Eligible-For-TPT
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)
* derivedFrom 1..1
* derivedFrom only Reference(TBScreeningResultObservation)
* hasMember 0..1 MS
* hasMember ^definition =
    "reason(s) why this should be supported."
* hasMember only Reference(ReasonNotEligibleForTPTObservation)

Profile: ReasonNotEligibleForTPTObservation
Parent: GenericObservation
Id: reason-not-eligbile-for-tpt-observation
Title: "Observation - Reason Not Eligibile For TPT"
Description: "Documents the reason why the patient is not eligibile for TB Prevention Therapy (TPT)."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $TPTEligibilityStatusCodeSystem#TPT-Reason-Not-Eligible
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from TPTReasonNotEligibileValueSet (required)
* valueCodeableConcept.text 1..1

Profile: TPTStartedObservation
Parent: GenericObservation
Id: tpt-started-observation
Title: "Observation - TPT Started"
Description: "Documents the date when the patient started TB Prevention Therapy (TPT)."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* value[x] only dateTime
* valueDateTime 1..1
* code = $SCT#422181004
* derivedFrom 0..1 MS
* derivedFrom ^definition =
    "reason(s) why this should be supported."
* derivedFrom only Reference(EligibleForTPTObservation)
* hasMember 0..* MS
* hasMember ^definition =
    "reason(s) why this should be supported."
* hasMember only Reference(TBProphylaxisTypeObservation)

Profile: TBProphylaxisTypeObservation
Parent: GenericObservation
Id: tb-prophylaxis-type-observation
Title: "Observation - TB Prophylaxis Type"
Description: "Documents the type of prophylaxis the patient is currently receiving."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP149760-3
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from TPTProphylaxisTypeValueSet (required)

* hasMember 0..* MS
* hasMember ^definition =
    "reason(s) why this should be supported."

* insert SliceForResolve(hasMember, reasons why this should be supported, open, Slicing hasMember based on the profile value, false)

* hasMember contains
    INHFollowUp 0..1 MS and
    AltenateProphylaxisType 0..1 MS

* hasMember[INHFollowUp] ^definition =
    "reason(s) why this should be supported."
* hasMember[INHFollowUp] only Reference(INHAtFollowupObservation)

* hasMember[AltenateProphylaxisType] ^definition =
    "reason(s) why this should be supported."
* hasMember[AltenateProphylaxisType] only Reference(AlternateTBProphylaxisTypeObservation)

Profile: INHAtFollowupObservation
Parent: GenericObservation
Id: inh-at-follow-up-observation
Title: "Observation - INH At Follow-up"
Description: "Indicates that the patient is receiving INH at follow-up."
* obeys Observation-INH-Follow-Up-1 and Observation-INH-Follow-Up-2
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LA21590-7
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from MonthOrdinalsValueSet (extensible)
* valueCodeableConcept ^binding.extension[+].extension[+].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #required
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://moh.gov.et/fhir/hiv/ValueSet/treatment-outcome-value-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "A list of codes indicating the status of the treatment."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* hasMember 0..* MS
* hasMember ^definition =
    "reason(s) why this should be supported."

* insert SliceForResolve(hasMember, reasons why this should be supported, open, Slicing hasMember based on the profile value, false)

* hasMember contains
    TPTDiscontinued 0..1 MS and
    TPTCompleted 0..1 MS

* hasMember[TPTDiscontinued] ^definition =
    "reason(s) why this should be supported."
* hasMember[TPTDiscontinued] only Reference(TreatmentDiscontinuedObservation)

* hasMember[TPTCompleted] ^definition =
    "reason(s) why this should be supported."
* hasMember[TPTCompleted] only Reference(TreatmentCompletedObservation)

Profile: AlternateTBProphylaxisTypeObservation
Parent: GenericObservation
Id: alternate-tb-prophylaxis-type-observation
Title: "Observation - Alternate TB Prophylaxis Type"
Description: "Documents the alternate type of prophylaxis the patient is currently receiving."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP149760-3
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from AlternateTPTProphylaxisTypeValueSet (required)
* hasMember 1..*

* insert SliceForResolve(hasMember, reasons why this should be supported, open, Slicing hasMember based on the profile value, false)
* hasMember ^slicing.discriminator[+].type = #value
* hasMember ^slicing.discriminator[=].path = "resolve().value.ofType(CodeableConcept).coding"
* hasMember ^slicing.discriminator[+].type = #value
* hasMember ^slicing.discriminator[=].path = "display"

* hasMember contains
    3HP 0..1 MS and
    3HR 0..1 MS

* hasMember[3HP] ^definition =
    "reason(s) why this should be supported."
* hasMember[3HP] only Reference(AlternateTPTAtFollowupObservation)
* hasMember[3HP].display = "3HP"

* hasMember[3HR] ^definition =
    "reason(s) why this should be supported."
* hasMember[3HR] only Reference(AlternateTPTAtFollowupObservation)
* hasMember[3HR].display = "3HR"

Profile: AlternateTPTAtFollowupObservation
Parent: GenericObservation
Id: alternate-tpt-at-follow-up-observation
Title: "Observation - Alternate TPT At Follow-up"
Description: "Documents the alternate TPT at follow-up."
* obeys Observation-alternate-tpt-Follow-Up-1 and Observation-alternate-tpt-Follow-Up-2
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LA21590-7
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from MonthOrdinalsValueSet (extensible)
* valueCodeableConcept ^binding.extension[+].extension[+].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #required
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://moh.gov.et/fhir/hiv/ValueSet/treatment-outcome-value-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "A list of codes indicating the status of the treatment."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* hasMember 0..* MS
* hasMember ^definition =
    "reason(s) why this should be supported."

* insert SliceForResolve(hasMember, reasons why this should be supported, open, Slicing hasMember based on the profile value, false)

* hasMember contains
    TPTDiscontinued 0..1 MS and
    TPTCompleted 0..1 MS

* hasMember[TPTDiscontinued] ^definition =
    "reason(s) why this should be supported."
* hasMember[TPTDiscontinued] only Reference(TreatmentDiscontinuedObservation)

* hasMember[TPTCompleted] ^definition =
    "reason(s) why this should be supported."
* hasMember[TPTCompleted] only Reference(TreatmentCompletedObservation)

Profile: TBTreatmentCareplan
Parent: CarePlan
Id: tb-treatment-careplan
Title: "Care Plan - TB Treatment"
Description: "Used to record the TB treatment details for the patient."
* status 1..1
* intent 1..1
* category 1..1
* category = $LNC#LP173209-0
* category.text 1..1
* category.text = "TB treatment"
* subject 1..1 
* subject only Reference(EthPatient)
* encounter 1..1 
* encounter only Reference(TargetFacilityEncounter)

* created 0..1 MS
* created ^definition = "reason(s) why this should be supported."

* activity 1..*

* activity.outcomeReference 1..*

* insert SliceForResolve(activity.outcomeReference, reasons why this should be supported, open, Slicing outcomeReference based on the profile value, false)

* activity.outcomeReference contains
    TreatmentStatus 1..1

* activity.outcomeReference[TreatmentStatus] only Reference(TBTreatmentStatusObservation)

* activity.reference 1..1
* activity.reference only Reference(TBScreeningServiceRequest)

Profile: TPTMedicationRequest
Parent: GenericMedicationRequest
Id: tpt-medication-request
Title: "Medication Request - TB Preventive Therapy (TPT)"
Description: "Used to record requests for TPT medication that are prescribed to a patient."
* medication[x] only Reference
* medicationReference only Reference(TPTMedication)
* basedOn 1..1
* basedOn only Reference(TPTCareplan)

Profile: TPTMedication
Parent: Medication
Id: tpt-medication
Title: "Medication - Represents a medication for TB Preventive Therapy (TPT)"
Description: "Used to record the TPT medication that will be prescribed to the patient."
* code 1..1
* code.coding only StrictCoding
* code from TPTProphylaxisValueSet (required)
* code.text 1..1

Profile: TPTCareplan
Parent: CarePlan
Id: tpt-careplan
Title: "Care Plan - TB Preventive Therapy (TPT)"
Description: "Used to record the TPT details for the patient."
* status 1..1
* intent 1..1
* category 1..1
* category = $LNC#LP173209-0
* category.text 1..1
* category.text = "TB treatment"
* subject 1..1 
* subject only Reference(EthPatient)
* encounter 1..1 
* encounter only Reference(TargetFacilityEncounter)

* created 0..1 MS
* created ^definition = "reason(s) why this should be supported."

* activity 1..*

* activity.outcomeReference 1..*

* insert SliceForResolve(activity.outcomeReference, reasons why this should be supported, open, Slicing outcomeReference based on the profile value, false)

* activity.outcomeReference contains
    TreatmentStatus 1..1

* activity.outcomeReference[TreatmentStatus] only Reference(TBProphylaxisTypeObservation)

* activity.reference 1..1
* activity.reference only Reference(TPTMedicationRequest)

Profile: TPTMedicationStatement
Parent: GenericMedicationStatement
Id: tpt-medication-statement
Title: "Medication Statement - TB Preventive Therapy (TPT)"
Description: "Records the medication history for the patient receiving TPT medication."
* medication[x] only Reference
* medicationReference only Reference(TPTMedication)
* reasonReference 0..1 MS
  * ^definition = "Indicates a reason for the point in time prescription."
  * ^short = "Used for indicating the reason for point in time prescriptions in the context of an encounter."
* reasonReference only Reference(TBProphylaxisTypeObservation)

Profile: GenericCondition
Parent: Condition
Id: generic-condition
Title: "Condition - Generic"
Description: "Base Condition elements that are inherited by other Condition profiles."
* code 1..1
* category 1..1
* subject 1..1
* subject only Reference(EthPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* recordedDate 1..1
* clinicalStatus 1..1

Profile: OpportunisticInfections
Parent: GenericCondition
Id: opportunistic-infections
Title: "Condition - Opportunistic Infection"
Description: "Captures the opportunistic infections that the patient is currently/was previsouly suffering from."
* code from OpportunisticInfectionsValueSet (extensible)
* category = $ConditionCategoryCodeSystem#problem-list-item
* code.text 1..1

Profile: MedicalHistory
Parent: List
Id: medical-history
Title: "List - Medical History"
Description: "Documents the medical history for the patient"
* status = #current
* title 1..1
* title = "Medical History"
* code 1..1
* code = $LNC#LP73189-0
* subject 1..1
* subject only Reference(EthPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* date 1..1
* source 1..1
* source only Reference(GeneralPractitioner)
* entry 1..*
* entry obeys List-Medical-History-1

* insert Slice(entry, reasons why this should be supported, value, flag.coding, open, Slicing the entry based on the flag value, false)

* entry contains
    PastMedicalHistory 0..* MS and
    CurrentMedicalInformation 0..* MS

* entry[PastMedicalHistory] ^definition =
    "Past medical history representing inactive problems."
* entry[PastMedicalHistory].flag 1..1
* entry[PastMedicalHistory].flag.coding 1..1
* entry[PastMedicalHistory].flag.coding = $LNC#LP74217-8
* entry[PastMedicalHistory].item only Reference(OpportunisticInfections)

* entry[CurrentMedicalInformation] ^definition =
    "Current medical information representing active problems."
* entry[CurrentMedicalInformation].flag 1..1
* entry[CurrentMedicalInformation].flag.coding 1..1
* entry[CurrentMedicalInformation].flag.coding = $LNC#LP74664-1
* entry[CurrentMedicalInformation].item only Reference(OpportunisticInfections)

Profile: AssessedForPainObservation
Parent: GenericObservation
Id: assessed-for-pain-observation
Title: "Observation - Assessed for Pain"
Description: "Documents whether the patient has been assessed for pain."
* obeys Observation-Assessed-For-Pain-1
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#LP428833-0
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)
* hasMember 0..1 MS
* hasMember ^definition =
    "reason(s) why this should be supported."
* hasMember only Reference(LevelOfPainObservation)

Profile: LevelOfPainObservation
Parent: GenericObservation
Id: level-of-pain-observation
Title: "Observation - Level of Pain"
Description: "Indicates the level of pain the patient is experiencing."
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#LL5953-6
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)

Profile: HIVPreventionPlan
Parent: GenericObservation
Id: hiv-prevention-plan-observation
Title: "Observation - HIV Prevention Plan"
Description: "Indicates the HIV prevention plan agreed between the clinician and the patient."
* category 1..1
* category = $OBSERVATION_CATEGORY#social-history
* code = $SCT#439057000
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.extension contains HIVPreventionPlanVExtension named HIVPreventionPlan 1..*

Profile: OperationTrippleZero
Parent: GenericObservation
Id: otz-observation
Title: "Observation - Operation Tripple Zero"
Description: "Indicates whether the patient was enrolled into the specialised program, OTZ."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#LP7652-3
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)
* valueCodeableConcept.extension contains ObservedDateExtension named ObservedDate 0..1 MS
* valueCodeableConcept.extension[ObservedDate] ^definition =
    "reason(s) why this should be supported."

Profile: MedicationHistory
Parent: List
Id: medication-history
Title: "List - History of Past Medication"
Description: "Documents the medication history of previsouly prescribed (cotrimoxazole, isoniazid and ARV) treatment for the patient."
* status = #current
* title 1..1
* title = "Medication History"
* code 1..1
* code = $LNC#8677-7
* subject 1..1
* subject only Reference(EthPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* date 1..1
* source 1..1
* source only Reference(GeneralPractitioner)
* entry 1..*
* entry obeys List-Medical-History-2

* insert Slice(entry, reasons why this should be supported, value, flag.coding, open, Slicing the entry based on the flag value, false)

* entry contains
    Cotrimoxazole 0..1 MS and
    Isoniazid 0..1 MS and
    ARV 0..* MS

* entry[Cotrimoxazole] ^definition =
    "Cotrimoxazole status"
* entry[Cotrimoxazole].flag 1..1
* entry[Cotrimoxazole].flag.coding 1..1
* entry[Cotrimoxazole].flag.coding = $LNC#18998-5
* entry[Cotrimoxazole].item only Reference(OIMedicationStatement)

* entry[Isoniazid] ^definition =
    "Isoniazid (INH) status"
* entry[Isoniazid].flag 1..1
* entry[Isoniazid].flag.coding 1..1
* entry[Isoniazid].flag.coding = $LNC#18934-0
* entry[Isoniazid].item only Reference(TPTMedicationStatement)

* entry[ARV] ^definition =
    "Antiretroviral therapy status"
* entry[ARV].flag 1..1
* entry[ARV].flag.coding 1..1
* entry[ARV].flag.coding = $LNC#47248-0
* entry[ARV].item only Reference(HIVTreatmentPriorToEnrollment or ARTTreatmentMedicationStatement or CurrentHIVTreatmentTherapyDuration)

Profile: HIVTreatmentPriorToEnrollment
Parent: GenericObservation
Id: hiv-treatment-prior-enrollment-observation
Title: "Observation - HIV Treatment Prior to Enrollment"
Description: "Indicates whether the patient has ever received ART prior to enrollment in the current facility."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#45231-8
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)

Profile: CurrentHIVTreatmentTherapyDuration
Parent: GenericObservation
Id: current-art-duration-observation
Title: "Observation - Current HIV Treatment Therapy Duration"
Description: "Indicates the duration the patient has been on the current ART."
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#45239-1
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity = $UCUM_UNIT#mo
* valueQuantity.unit = "mo"

Profile: Temperature
Parent: GenericObservation
Id: temperature-observation
Title: "Observation - Temperature"
Description: "Indicates the patient's current temperature."
* category 1..1
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#8310-5
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity = $UCUM_UNIT#Cel
* valueQuantity.unit = "degrees C"

Profile: HeartRate
Parent: GenericObservation
Id: heart-rate-observation
Title: "Observation - Heart Rate"
Description: "Indicates the patient's current heart rate."
* category 1..1
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#8867-4
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity = $UCUM_UNIT#/min
* valueQuantity.unit = "beats/min"

Profile: BloodPressure
Parent: GenericObservation
Id: blood-pressure
Title: "Blood Pressure Observation"
Description: "Represents the patient's blood pressure."
* subject only Reference(EthPatient)
* encounter only Reference(TargetFacilityEncounter)
* code = $LNC#85354-9
* category 1..1
* category = $OBSERVATION_CATEGORY#vital-signs
* component 1..*

* insert Slice(component, reasons why this should be supported, value, code, open, Slicing the component based on the code value, false)

* component contains
    Systolic 0..1 MS and
    Diastolic 0..1 MS

* component[Systolic] ^definition =
    "reason(s) why this should be supported."
* component[Systolic].code 1..1
* component[Systolic].code = $LNC#8480-6
* component[Systolic].valueQuantity.value 1..1
* component[Systolic].valueQuantity.unit = "mmHg"
* component[Systolic].valueQuantity = $UCUM_UNIT#mm[Hg]

* component[Diastolic] ^definition =
    "reason(s) why this should be supported."
* component[Diastolic].code 1..1
* component[Diastolic].code = $LNC#8462-4
* component[Diastolic].valueQuantity.value 1..1
* component[Diastolic].valueQuantity.unit = "mmHg"
* component[Diastolic].valueQuantity = $UCUM_UNIT#mm[Hg]

Profile: RespiratoryRate
Parent: GenericObservation
Id: respiratory-rate-observation
Title: "Observation - Respiratory Rate"
Description: "Indicates the patient's current respiratory rate."
* category 1..1
* category = $OBSERVATION_CATEGORY#vital-signs
* code = $LNC#9279-1
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity = $UCUM_UNIT#/min
* valueQuantity.unit = "breaths/min"