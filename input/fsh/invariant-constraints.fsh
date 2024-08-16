Invariant: MRN-UAN-EMR-ID-1
Description: "Only letters, special characters (dash) and numbers are allowed."
Expression: "$this.matches('[A-Za-z0-9-]*')"
Severity: #error

Invariant: Encounter-1
Description: "Only numbers are allowed."
Expression: "$this.matches('[0-9]*')"
Severity: #error

Invariant: Observation-TB-Eligibility-1
Description: "If Observation.valueBoolean is false then Observation.hasMember SHALL be present."
Expression: "value = false implies Observation.hasMember.exists()"
Severity: #error

Invariant: Observation-HIV-confirmed-1
Description: "If Observation.code is \"89365-1\" then Observation.category SHALL be \"exam\"."
Expression: "code.coding.where(system = 'http://loinc.org' and code = '89365-1').exists() implies Observation.category.coding.where(system = 'http://terminology.hl7.org/CodeSystem/observation-category' and code = 'exam').exists()"
Severity: #error

Invariant: Observation-HIV-confirmed-2
Description: "If Observation.code is \"9836-8\" then Observation.category SHALL be \"laboratory\"."
Expression: "code.coding.where(system = 'http://loinc.org' and code = '9836-8').exists() implies Observation.category.coding.where(system = 'http://terminology.hl7.org/CodeSystem/observation-category' and code = 'laboratory').exists()"
Severity: #error

Invariant: Observation-HIV-confirmed-3
Description: "If Observation.code is \"9836-8\" then Observation.basedOn SHALL be present."
Expression: "code.coding.where(system = 'http://loinc.org' and code = '9836-8').exists() implies Observation.basedOn.exists()"
Severity: #error

Invariant: QuestionnaireResponse-PregnancyStatus-1
Description: "The QuestionnaireResponse SHALL have at least one answer for \"Is Pregnant\", \"Wants to be pregnant\" or \"Is breastfeeding\"."
Expression: "item.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/pregnancy-status-and-fmp-questionnaire-response', 'PREGNANT').count() + item.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/pregnancy-status-and-fmp-questionnaire-response', 'WANT_TO_BE_PREGNANT').count() + item.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/pregnancy-status-and-fmp-questionnaire-response', 'BREASTFEEDING').count() > 0"
Severity: #error

Invariant: Observation-Pregnancy-Status-1
Description: "If Observation.valueCodeableConcept is \"LA26683-5\" then Observation.basedOn for \"Referred For PMTCT Service Request\" SHALL NOT be present."
Expression: "value.coding.where(system = 'http://loinc.org' and code = 'LA26683-5').exists() implies Observation.basedOn.exists().not()"
Severity: #error

Invariant: Careplan-ART-Follow-up-1
Description: "If CarePlan.activity.reference for \"MedicationRequest\" is present then the extension for \"NextVisitDate\" SHALL be present."
Expression: "reference.exists(type = 'http://moh.gov.et/fhir/hiv/StructureDefinition/arv-medication-request') implies extension.exists(url = 'http://moh.gov.et/fhir/hiv/StructureDefinition/care-plan-next-visit')"
Severity: #error

Invariant: Cervical-Cancer-Screening-Result-1
Description: "If Observation.valueCodeableConcept.coding.code is NOT \"via-negative\" and NOT \"hpv-negative\" then Observation.basedOn SHALL be present."
Expression: "value.coding.where(system = 'http://moh.gov.et/fhir/hiv/CodeSystem/via-screening-result-code-system' and code = 'via-negative').exists().not() and value.coding.where(system = 'http://moh.gov.et/fhir/hiv/CodeSystem/hpv-screening-result-code-system' and code = 'hpv-negative').exists().not() implies basedOn.exists()"
Severity: #error

Invariant: Extension-DSD-1
Description: "If the value for extension \"CategoryChangedOnAssessmentDate\" is true then the extension for \"CategoryChangeReason\" SHALL be present."
Expression: "extension.exists(url = 'http://moh.gov.et/fhir/hiv/StructureDefinition/dsd-assessment-category-changed-on-assessment-date' and value.coding.where(code = 'true')) implies extension.exists(url = 'http://moh.gov.et/fhir/hiv/StructureDefinition/dsd-assessment-category-change-reason')"
Severity: #error

Invariant: Observation-ARV-Adherence-1
Description: "If Observation.valueCodeableConcept.coding.code is NOT \"LA8967-7\" then Observation.hasMember SHALL be present."
Expression: "value.coding.where(system = 'http://loinc.org' and code = 'LA8967-7').exists().not() implies hasMember.exists()"
Severity: #error

Invariant: Observation-HIV-Status-Disclosure-At-Enrollment-1
Description: "If Observation.valueCodeableConcept.coding.code is \"true\" then extension for \"PatientRelationship\" SHALL be present."
Expression: "value.coding.where(system = 'http://moh.gov.et/fhir/hiv/CodeSystem/yes-no-code-system' and code = 'true').exists() implies extension.exists(url = 'http://moh.gov.et/fhir/hiv/StructureDefinition/patient-relationship')"
Severity: #error

Invariant: Observation-Viral-Load-Performed-1
Description: "If Observation.valueCodeableConcept.coding.code is \"true\" then hasMember SHALL be present."
Expression: "value.coding.where(system = 'http://moh.gov.et/fhir/hiv/CodeSystem/yes-no-code-system' and code = 'true').exists() implies hasMember.exists()"
Severity: #error

Invariant: Observation-Enhanced-Adherence-Counselling-1
Description: "If Observation.valueCodeableConcept.coding.code is \"true\" then the slice \"EACServiceRequest\" for basedOn SHALL be present."
Expression: "value.coding.where(system = 'http://moh.gov.et/fhir/hiv/CodeSystem/yes-no-code-system' and code = 'true').exists() implies basedOn.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/enhanced-adherence-counselling-observation', 'EACServiceRequest').exists()"
Severity: #error

Invariant: DiagnosticReport-CD4-1
Description: "The DiagnosticReport SHALL have at least one of DiagnosticReport.result for slice \"CD4AbsoluteCount\" or \"CD4Percentage\"."
Expression: "result.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/cd4-diagnostic-report', 'CD4AbsoluteCount').count() + result.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/cd4-diagnostic-report', 'CD4Percentage').count() > 0"
Severity: #error

Invariant: Observation-TB-Treatment-Started-1
Description: "If Observation.valueCodeableConcept.coding.code is \"true\" then extension for \"ObservedDate\" SHALL be present."
Expression: "coding.where(system = 'http://moh.gov.et/fhir/hiv/CodeSystem/yes-no-code-system' and code = 'true').exists() implies extension.exists(url = 'http://moh.gov.et/fhir/hiv/StructureDefinition/observed-date')"
Severity: #error

Invariant: Observation-INH-Follow-Up-1
Description: "If Observation.valueCodeableConcept.coding.code is \"INH-discontinued\" then Observation.hasMember for slice \"TPTDiscontinued\" SHALL be present."
Expression: "value.coding.where(system = 'http://moh.gov.et/fhir/hiv/CodeSystem/inh-follow-up-code-system' and code = 'INH-discontinued').exists() implies hasMember.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/inh-at-follow-up-observation', 'TPTDiscontinued').exists()"
Severity: #error

Invariant: Observation-INH-Follow-Up-2
Description: "If Observation.valueCodeableConcept.coding.code is \"INH-completed\" then Observation.hasMember for slice \"TPTCompleted\" SHALL be present."
Expression: "value.coding.where(system = 'http://moh.gov.et/fhir/hiv/CodeSystem/inh-follow-up-code-system' and code = 'INH-completed').exists() implies hasMember.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/inh-at-follow-up-observation', 'TPTCompleted').exists()"
Severity: #error

Invariant: Observation-alternate-tpt-Follow-Up-1
Description: "If Observation.valueCodeableConcept.coding.code is \"182840001\" then Observation.hasMember for slice \"TPTDiscontinued\" SHALL be present."
Expression: "value.coding.where(system = 'http://snomed.info/sct' and code = '182840001').exists() implies hasMember.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/alternate-tpt-at-follow-up-observation', 'TPTDiscontinued').exists()"
Severity: #error

Invariant: Observation-alternate-tpt-Follow-Up-2
Description: "If Observation.valueCodeableConcept.coding.code is \"182992009\" then Observation.hasMember for slice \"TPTCompleted\" SHALL be present."
Expression: "value.coding.where(system = 'http://snomed.info/sct' and code = '182992009').exists() implies hasMember.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/alternate-tpt-at-follow-up-observation', 'TPTCompleted').exists()"
Severity: #error

Invariant: Observation-Assessed-For-Pain-1
Description: "If Observation.valueCodeableConcept.coding.code is \"true\" then hasMember SHALL be present."
Expression: "value.coding.where(system = 'http://moh.gov.et/fhir/hiv/CodeSystem/yes-no-code-system' and code = 'true').exists() implies hasMember.exists()"
Severity: #error

Invariant: List-Medical-History-1
Description: "The List SHALL have at least one of entry for slice \"PastMedicalHistory\" or \"CurrentMedicalInformation\"."
Expression: "slice('http://moh.gov.et/fhir/hiv/StructureDefinition/medical-history', 'PastMedicalHistory').count() + slice('http://moh.gov.et/fhir/hiv/StructureDefinition/medical-history', 'CurrentMedicalInformation').count() > 0"
Severity: #error

Invariant: List-Medical-History-2
Description: "The List SHALL have at least one of entry for slice \"Cotrimoxazole\", \"Isoniazid\" or \"ARV\"."
Expression: "slice('http://moh.gov.et/fhir/hiv/StructureDefinition/medication-history', 'Cotrimoxazole').count() + slice('http://moh.gov.et/fhir/hiv/StructureDefinition/medication-history', 'Isoniazid').count() + slice('http://moh.gov.et/fhir/hiv/StructureDefinition/medication-history', 'ARV').count() > 0"
Severity: #error