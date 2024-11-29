Extension: NextVisitDateExtension
Id: care-plan-next-visit
Title: "Care Plan - Next Visit Date"
Description: "This is an extension to capture the next visit date for the patient's follow-up treatment."
* value[x] only dateTime
* valueDateTime 1..1
* ^context[+].type = #element
* ^context[=].expression = "CarePlan.activity"
    
Extension: EncounterVisitTypeExtension
Id: encounter-visit-type
Title: "Encounter Visit Type"
Description: "This is an extension to capture whether the visit is scheduled or unscheduled."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from EncounterVisitTypeValueSet (required)
* valueCodeableConcept.coding only StrictCoding
* ^context[+].type = #element
* ^context[=].expression = "Encounter.type"

Extension: DSDAssessmentStatusExtension
Id: dsd-assessment-status
Title: "Differentiated Service Delivery - Status"
Description: "This is an extension to capture the status of the DSD assessment."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from DSDAssessmentStatusValueSet (required)
* valueCodeableConcept.coding only StrictCoding
* ^context[+].type = #element
* ^context[=].expression = "Observation.extension"

Extension: DSDAssessmentCategoryExtension
Id: dsd-assessment-category
Title: "Differentiated Service Delivery - Category"
Description: "This is an extension to capture the category for the DSD assessment."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from DSDCategoryValueSet (required)
* valueCodeableConcept.text 1..1
* valueCodeableConcept.coding only StrictCoding
* ^context[+].type = #element
* ^context[=].expression = "Observation.extension"

Extension: DSDAssessmentCategoryChangedOnAssessmentDateExtension
Id: dsd-assessment-category-changed-on-assessment-date
Title: "Differentiated Service Delivery - Category Changed On Assessment Date?"
Description: "This is an extension to capture whether the category for DSD was changed on the same day as the DSD assessment."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from YesNoValueSet (required)
* valueCodeableConcept.coding only StrictCoding
* ^context[+].type = #element
* ^context[=].expression = "Observation.extension"

Extension: DSDAssessmentReasonCategoryChangeExtension
Id: dsd-assessment-category-change-reason
Title: "Differentiated Service Delivery - Reason For Category Change"
Description: "This is an extension to capture the reason for the change in category for the DSD assessment."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from DSDReasonForCategoryChangeValueSet (required)
* valueCodeableConcept.text 1..1
* valueCodeableConcept.coding only StrictCoding
* ^context[+].type = #element
* ^context[=].expression = "Observation.extension"

Extension: DSDAssessmentExtension
Id: dsd-assessment
Title: "Differentiated Service Delivery - Details"
Description: "This is an extension to capture all the details regarding the DSD assessment."
* obeys Extension-DSD-1
* extension contains DSDAssessmentStatusExtension named Status 0..1 MS
* extension[Status] ^definition = "reason(s) why this should be supported."

* extension contains DSDAssessmentCategoryExtension named Category 1..1

* extension contains DSDAssessmentCategoryChangedOnAssessmentDateExtension named CategoryChangedOnAssessmentDate 0..1 MS
* extension[CategoryChangedOnAssessmentDate] ^definition = "reason(s) why this should be supported."

* extension contains DSDAssessmentReasonCategoryChangeExtension named CategoryChangeReason 0..1 MS
* extension[CategoryChangeReason] ^definition = "reason(s) why this should be supported."

* ^context[+].type = #element
* ^context[=].expression = "Observation"

Extension: ARVAdherenceExtension
Id: arv-adherence
Title: "ARV Adherence"
Description: "This is an extension to capture the Observation for ARV adherence."
* value[x] only Reference(ARVAdherenceObservation)
* valueReference 1..1
* ^context[+].type = #element
* ^context[=].expression = "CarePlan.activity"

Extension: CotrimoxazoleAdherenceExtension
Id: cotrimoxazole-adherence
Title: "Cotrimoxazole Adherence"
Description: "This is an extension to capture the Observation for cotrimoxazole adherence."
* value[x] only Reference(CotrimoxazolePreventiveTherapyAdherenceObservation)
* valueReference 1..1
* ^context[+].type = #element
* ^context[=].expression = "CarePlan.activity"

Extension: ResidentialTypeExtension
Id: residential-type
Title: "Residential Type"
Description: "This is an extension to capture the residential type associated with the address."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.coding only StrictCoding
* valueCodeableConcept from ResidentialTypeValueSet (required)
* ^context[+].type = #element
* ^context[=].expression = "Address"

Extension: AnticipatedChallengesWithRegularFollowUpExtension
Id: anticipated-challenge-with-regular-follow-up
Title: "Challenge Anticipated With Regular Follow Up"
Description: "This is an extension to capture whether challenges are anticipated with patient follow up at this facility."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.coding only StrictCoding
* valueCodeableConcept from FollowUpChallengesAnticipatedYesNoValueSet (required)
* ^context[+].type = #element
* ^context[=].expression = "Observation"

Extension: ARVRegimenSideEffectsExtension
Id: arv-regimen-side-effects
Title: "ARV Regimen Side Effects"
Description: "This is an extension to capture the side effects associated with taking the prescrived ARV regimen."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.coding only StrictCoding
* valueCodeableConcept from ARVSideEffectsValueSet (required)
* ^context[+].type = #element
* ^context[=].expression = "Observation.value.ofType(CodeableConcept)"

Extension: ReasonsForPoorARVAdherenceExtension
Id: reasons-for-poor-arv-adherence
Title: "Reasons For Poor ARV Adherence"
Description: "This is an extension to capture the reasons for poor ARV adherence."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.coding only StrictCoding
* valueCodeableConcept from ReasonsForPoorARVAdherenceValueSet (required)
* valueCodeableConcept.text 1..1
* ^context[+].type = #element
* ^context[=].expression = "Observation.value.ofType(CodeableConcept)"

Extension: FamilyPlanningMethods
Id: family-planning-methods
Title: "Family Planning Method"
Description: "This is an extension to capture family planning methods."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from FamilyPlanningMethodValueSet (required)
* valueCodeableConcept.coding only StrictCoding
* ^context[+].type = #element
* ^context[=].expression = "Observation.value.ofType(CodeableConcept)"

Extension: PatientRelationshipExtension
Id: patient-relationship
Title: "Patient Relationship"
Description: "This is an extension to capture the relationship of the person with whom the HIV status was disclosed."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype (required)
* valueCodeableConcept.text 1..1
* ^context[+].type = #element
* ^context[=].expression = "Observation"

Extension: ReasonARTStoppedExtension
Id: reason-art-stopped
Title: "Reasons ART Stopped"
Description: "This is an extension to capture the reasons for stopping ART."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.text 1..1
* valueCodeableConcept from ReasonARTStoppedValueSet (required)
* valueCodeableConcept.coding only StrictCoding
* ^context[+].type = #element
* ^context[=].expression = "Observation.value.ofType(CodeableConcept)"

Extension: ObservedDateExtension
Id: observed-date
Title: "Date and Time Associated with the Assertion"
Description: "Represents the date and time to be documented together with the assertion. This is not necessarily the same date and time the Observation was created! For example, it can be used to record a date and time in the past to indicate when a patient reached a certin clinical status."
* value[x] only dateTime
* valueDateTime 1..1
* ^context[+].type = #element
* ^context[=].expression = "Observation.value.ofType(CodeableConcept)"

Extension: HIVPreventionPlanVExtension
Id: hiv-prevention-plan
Title: "HIV Prevention Plan"
Description: "This is an extension to capture the patient's plan for the prevention of HIV being transmitted to others."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from HIVPreventionPlanValueSet (required)
* valueCodeableConcept.coding only StrictCoding
* ^context[+].type = #element
* ^context[=].expression = "Observation.value.ofType(CodeableConcept)"

Extension: ReasonsForARTEligibilityExtension
Id: reasons-eligible-for-art
Title: "Reasons Why Eligible for ART"
Description: "This is an extension to capture the reasons why the patient is considered eligible for ART."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.text 1..1
* valueCodeableConcept from ReasonForARTEligibilityValueSet (required)
* valueCodeableConcept.coding only StrictCoding
* ^context[+].type = #element
* ^context[=].expression = "Observation.value.ofType(CodeableConcept)"

Extension: CD4AndVLClassificationForTreatmentFailureExtension
Id: cd4-vl-classification-for-treatment-failure
Title: "Viral Load/CD4 Count Classifications Indicating Treatment Failure"
Description: "This is an extension to capture the classification of the Viral Load/CD4 treatment failure."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from CD4AndVLClassificationForTreatmentFailureValueSet (required)
* valueCodeableConcept.coding only StrictCoding
* ^context[+].type = #element
* ^context[=].expression = "Observation.value.ofType(CodeableConcept)"

Extension: ResourceValueReferenceExtension
Id: resource-value-reference
Title: "Resource Value Reference"
Description: "This is an extension to assoiciate a referenced resource to support the answer to the questionnaire resource question."
* value[x] only Reference
* valueReference 1..1
* ^context[+].type = #element
* ^context[=].expression = "QuestionnaireResponse.item.answer"