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

Invariant: Cervical-Cancer-Screening-1
Description: "If Observation.valueCodeableConcept is \"1148678002\" then Observation.hasMember for slices \"ScreeningType\", \"ScreeningMethod\" and \"ScreeningResult\" SHALL be present."
Expression: "value.coding.where(system = 'http://snomed.info/sct' and code = '1148678002').exists() implies hasMember.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/cervical-cancer-screening-observation', 'ScreeningType').exists() and hasMember.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/cervical-cancer-screening-observation', 'ScreeningMethod').exists() and hasMember.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/cervical-cancer-screening-observation', 'ScreeningResult').exists()"
Severity: #error

Invariant: Cervical-Cancer-Screening-Result-1
Description: "The Observation.valueCodeableConcept.extension SHALL have at least one of \"VIA\" or \"HPV\"."
Expression: "extension.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/cervical-cancer-screening-result-observation', 'VIA').count() + extension.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/cervical-cancer-screening-result-observation', 'HPV').count() > 0"
Severity: #error

Invariant: Cervical-Cancer-Screening-Result-2
Description: "If Observation.valueCodeableConcept.extension.coding.code for slice \"VIA\" is NOT \"via-negative\" and NOT \"LA6577-6\" for slice \"HPV\" then Observation.basedOn SHALL be present."
Expression: "value.extension.value.coding.where(system = 'http://moh.gov.et/fhir/hiv/CodeSystem/via-screening-result-code-system' and code = 'via-negative').exists().not() and value.extension.value.coding.where(system = 'http://loinc.org' and code = 'LA6577-6').exists().not() implies basedOn.exists()"
Severity: #error

Invariant: Extension-DSD-1
Description: "If the value for extension \"CategoryChangedOnAssessmentDate\" is true then the extension for \"CategoryChangeReason\" SHALL be present."
Expression: "extension.exists(url = 'http://moh.gov.et/fhir/hiv/StructureDefinition/dsd-assessment-category-changed-on-assessment-date' and value.coding.where(code = 'true')) implies extension.exists(url = 'http://moh.gov.et/fhir/hiv/StructureDefinition/dsd-assessment-category-change-reason')"
Severity: #error

Invariant: Observation-ARV-Regimen-Change-Reason-1
Description: "If Observation.valueCodeableConcept.coding.code is \"24467-3\" then Observation.interpretation for slice \"ImmunologicFailure\" or slice \"ClinicalFailure\" SHALL be present."
Expression: "value.coding.where(system = 'http://loinc.org' and code = '24467-3').exists() implies interpretation.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/arv-regimen-change-reason-observation', 'ImmunologicFailure').exists() or interpretation.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/arv-regimen-change-reason-observation', 'ClinicalFailure').exists()"
Severity: #error

Invariant: Observation-ARV-Regimen-Change-Reason-2
Description: "If Observation.valueCodeableConcept.coding.code is \"20447-9\" then Observation.interpretation for slice \"VirologicFailure\" SHALL be present."
Expression: "value.coding.where(system = 'http://loinc.org' and code = '20447-9').exists() implies interpretation.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/arv-regimen-change-reason-observation', 'VirologicFailure').exists()"
Severity: #error

Invariant: Observation-ARV-Adherence-1
Description: "If Observation.valueCodeableConcept.coding.code is NOT \"LA8967-7\" then Observation.hasMember SHALL be present."
Expression: "value.coding.where(system = 'http://loinc.org' and code = 'LA8967-7').exists().not() implies hasMember.exists()"
Severity: #error

Invariant: Observation-ARV-Regimen-Change-Type-1
Description: "The Observation.valueCodeableConcept.coding SHALL have at least one of \"SwitchType\" or \"SubstitutionType\"."
Expression: "value.coding.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/arv-change-category-type-observation', 'SwitchType').count() + value.coding.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/arv-change-category-type-observation', 'SubstitutionType').count() > 0"
Severity: #error

Invariant: Observation-HIV-Status-Disclosure-At-Enrollment-1
Description: "If Observation.valueCodeableConcept.coding.code is \"true\" then extension for \"PatientRelationship\" SHALL be present."
Expression: "value.coding.where(system = 'http://moh.gov.et/fhir/hiv/CodeSystem/yes-no-code-system' and code = 'true').exists() implies extension.exists(url = 'http://moh.gov.et/fhir/hiv/StructureDefinition/patient-relationship')"
Severity: #error

Invariant: Observation-Viral-Load-Indication-1
Description: "If Observation.code is \"LA9035-2\" then Observation.valueCodeableConcept.coding for slice \"Routine\" SHALL be present."
Expression: "code.coding.where(system = 'http://loinc.org' and code = 'LA9035-2').exists() implies value.coding.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/viral-load-indication-observation', 'Routine').exists()"
Severity: #error

Invariant: Observation-Viral-Load-Indication-2
Description: "If Observation.code is \"LA26675-1\" then Observation.valueCodeableConcept.coding for slice \"Targeted\" SHALL be present."
Expression: "code.coding.where(system = 'http://loinc.org' and code = 'LA26675-1').exists() implies value.coding.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/viral-load-indication-observation', 'Targeted').exists()"
Severity: #error

Invariant: Observation-Viral-Load-Indication-3
Description: "The Observation SHALL have at least one of Observation.valueCodeableConcept.coding for slice \"Routine\" or \"Targeted\"."
Expression: "value.coding.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/viral-load-indication-observation', 'Routine').count() + value.coding.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/viral-load-indication-observation', 'Targeted').count() > 0"
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

Invariant: Observation-TB-Treatment-Status-1
Description: "If Observation.valueCodeableConcept.coding.code is \"TBRx-discontinued\" then Observation.hasMember for slice \"ActiveTBDiscontinued\" SHALL be present."
Expression: "value.coding.where(system = 'http://moh.gov.et/fhir/hiv/CodeSystem/tb-treatment-status-code-system' and code = 'TBRx-discontinued').exists() implies hasMember.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/tb-treatment-status-observation', 'ActiveTBDiscontinued').exists()"
Severity: #error

Invariant: Observation-TB-Treatment-Status-2
Description: "If Observation.valueCodeableConcept.coding.code is \"TBRx-completed\" then Observation.hasMember for slice \"ActiveTBCompleted\" SHALL be present."
Expression: "value.coding.where(system = 'http://moh.gov.et/fhir/hiv/CodeSystem/tb-treatment-status-code-system' and code = 'TBRx-completed').exists() implies hasMember.slice('http://moh.gov.et/fhir/hiv/StructureDefinition/tb-treatment-status-observation', 'ActiveTBCompleted').exists()"
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