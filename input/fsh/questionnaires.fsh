Instance: PregnancyStatusAndFPMQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire - Pregnancy Status and Family Planning Method (FPM)"
Description: "A questionaire that provides the questions to for pregnancy status and FPM."
* status = #active
* subjectType = #Observation

* insert Question(1.1, Is Pregnant, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * answerValueSet.extension[+].valueCanonical = Canonical(PregnancyStatusProprietaryToLOINC)
  * answerValueSet.extension[=].url = "http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap"
  * code = $LNC#11449-6

* insert Question(1.2, Wants to be pregnant, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * answerValueSet.extension[+].valueCanonical = Canonical(PregnancyFuturePlansProprietaryToLOINC)
  * answerValueSet.extension[=].url = "http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap"
  * code = $LNC#86645-9

* insert Question(1.3, Is breastfeeding, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * answerValueSet.extension[+].valueCanonical = Canonical(BreastfeedingStatusProprietaryToLOINC)
  * answerValueSet.extension[=].url = "http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap"
  * code = $LNC#63895-7

* insert Question(1.4, Last Menstrual date, date, false, false)
* item[=]
  * code = $LNC#LP187193-0

* insert Question(1.5, Estimated Delivery Date, date, false, false)
* item[=]
  * code = $LNC#11779-6

* insert Question(1.6, Family Planning Method, choice, false, true)
* item[=]
  * answerValueSet = Canonical(FamilyPlanningMethodValueSet)
  * code = $LNC#8659-5

Instance: IndexCaseScreeningQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire - Index Case Screening"
Description: "A questionaire that provides eligibility criteria for the index case screening."
* status = #active
* subjectType = #Observation

* insert Question(1.1, Is the client newly enrolled, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#67723-7

* insert Question(1.2, Does the client have a high viral load, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $SCT#315124004

* insert Question(1.3, Does the client have an ART status of Restart, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#63936-9

* insert Question(1.4, Is the client with a new partner, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#85656-7

* insert Question(1.5, Is the client with a partner not yet disclosed, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#47249-8

* insert Question(1.6, Is the client with a partner who has not been tested yet for HIV, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $SCT#171121004

* insert Question(1.7, Is the client in care with STI, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $SCT#8098009

* insert Question(1.8, Does the client have a child under 15yrs of age who is not tested, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $SCT#171121004

* insert Question(1.9, Is the client Known Positive, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#55277-8

* insert Question(1.10, Is the client eligible for partner and FBICT, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $PartnerAndFBICTCodeSystem#Partner-FBICT-Eligibiity

* insert Question(1.11, Is the index case offered with partner and FBICT services, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $PartnerAndFBICTCodeSystem#Partner-FBICT-Offered

* insert Question(1.12, Has the client accepted the offer for partner and FBICT, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $PartnerAndFBICTCodeSystem#Partner-FBICT-Accepted

Instance: IndexCaseAssessmentQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire - Index Case Assessment"
Description: "A questionaire that assesses the index case during interviews."
* status = #active
* subjectType = #Observation

* insert Question(1.1, Did the index case agree to be interviewed, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#LA14870-2

* insert Question(1.2, Reason for not being interviewed, choice, false, false)
* item[=]
  * answerValueSet = Canonical(ReasonIndexCaseNotInterviewedValueSet)
  * code = $LNC#LP95022-7

* insert Question(1.3, Other Reason for not being interviewed, string, true, false)
* item[=]
  * enableWhen.question = "1.2"
  * enableWhen.operator = #=
  * enableWhen.answerCoding = $LNC#LA46-8
  * code = $SCT#410666004

* insert Question(1.4, When did the index case receive the interview, date, true, false)
* item[=]
  * code = $LNC#91714-6
  * enableWhen.question = "1.1"
  * enableWhen.operator = #=
  * enableWhen.answerCoding = $YesNoCodeSystem#true

* insert Question(1.5, Was the index case interviewed for partner services, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $PartnerAndFBICTCodeSystem#Partner-Services

* insert Question(1.6, When was the index case interviewed for partner services, date, true, false)
* item[=]
  * code = $LNC#91714-6
  * enableWhen.question = "1.5"
  * enableWhen.operator = #=
  * enableWhen.answerCoding = $YesNoCodeSystem#true

* insert Question(1.7, Number of sexual partners in past 12 months, integer, false, false)
* item[=]
  * code = $LNC#85736-7

* insert Question(1.8, Number of sexual partners in past 24 months, integer, false, false)
* item[=]
  * code = $SCT#228458001

* insert Question(1.9, Is the index client willing to identify the sex partners, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $SCT#228465009

* insert Question(1.10, Reason for not being able to identify the sex partners, string, true, false)
* item[=]
  * code = $SCT#225465005
  * enableWhen.question = "1.9"
  * enableWhen.operator = #=
  * enableWhen.answerCoding = $YesNoCodeSystem#false

* insert Question(1.11, What is the next visit date, date, false, false)
* item[=]
  * code = $LNC#57070-5

Instance: FamilyIndexCaseContactsQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire - Family Index Case Contacts"
Description: "A questionaire that assesses the HIV and health status for index case contacts."
* status = #active
* subjectType = #Observation

* insert Question(1.1, Currently living with the index case, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code[+] = $SCT#408821002

* insert Question(1.2, What is the contact's current health status, reference, false, false)
* item[=]
  * code[+] = $LNC#11323-3

* insert Question(2, Previous HIV Testing Services, group, false, false)
* item[=]
  * insert Question(2.1, Has the contact been previsouly tested for HIV, choice, false, false)
  * item[=]
    * code[+] = $SCT#171121004
    * answerValueSet = Canonical(YesNoValueSet)

  * insert Question(2.2, Date of previous HIV test, date, true, false)
  * item[=]
    * code = $LNC#67723-7
    * enableWhen.question = "2.1"
    * enableWhen.operator = #=
    * enableWhen.answerCoding = $YesNoCodeSystem#true

  * insert Question(2.3, Previous HIV test result, quantity, true, false)
  * item[=]
    * code = $SCT#315124004
    * enableWhen.question = "2.2"
    * enableWhen.operator = #exists
    * enableWhen.answerBoolean = true

* insert Question(3, Current HIV Testing Services, group, false, false)
* item[=]
  * insert Question(3.1, Will the contact be counseled for HIV today, choice, false, false)
  * item[=]
    * code[+] = $SCT#313077009
    * answerValueSet = Canonical(YesNoValueSet)

  * insert Question(3.2, Will the contact be tested for HIV, choice, false, false)
  * item[=]
    * code[+] = $SCT#171121004
    * answerValueSet = Canonical(YesNoValueSet)

  * insert Question(3.3, Date of HIV test, date, true, false)
  * item[=]
    * code = $LNC#67723-7
    * enableWhen.question = "3.2"
    * enableWhen.operator = #=
    * enableWhen.answerCoding = $YesNoCodeSystem#true

  * insert Question(3.4, HIV test result, quantity, true, false)
  * item[=]
    * code = $SCT#315124004
    * enableWhen.question = "3.3"
    * enableWhen.operator = #exists
    * enableWhen.answerBoolean = true

  * insert Question(3.5, Reason for not being tested for HIV, string, true, false)
  * item[=]
    * code = $SCT#445032002
    * enableWhen.question = "3.2"
    * enableWhen.operator = #=
    * enableWhen.answerCoding = $YesNoCodeSystem#false

* insert Question(4, HIV Program, group, false, false)
* item[=]
  * insert Question(4.1, Is the contact linked to HIV care, choice, false, false)
  * item[=]
    * code[+] = $LNC#LP95599-4
    * answerValueSet = Canonical(YesNoValueSet)

  * insert Question(4.2, Contact identifiers, reference, true, false)
  * item[=]
    * code[+] = $LNC#94648-3
    * enableWhen.question = "4.1"
    * enableWhen.operator = #=
    * enableWhen.answerCoding = $YesNoCodeSystem#true

Instance: IndexCaseSexPartnerQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire - Sex Partner Information"
Description: "A questionaire that captures information for index case sex partners."
* status = #active
* subjectType = #Observation

* insert Question(1.1, Date of last exposure, date, false, false)
* item[=]
  * code = $LNC#94652-5

* insert Question(1.2, Period of exposure if the exact date of exposure is not known, choice, false, false)
* item[=]
  * answerValueSet = Canonical(PeriodOfHIVExposureValueSet)
  * code[+] = $LNC#LP6260-6

* insert Question(1.3, Priority category, integer, false, false)
* item[=]
  * code[+] = $LNC#LA9036-0

* insert Question(2, Intimate Partner Violence Assessment, group, false, false)
* item[=]
  * insert Question(2.1, Violence Assessment Completed, choice, false, false)
  * item[=]
    * answerValueSet = Canonical(YesNoValueSet)
    * code[+] = $LNC#LA30873-6

  * insert QuestionWithoutText(2.2, choice, false, false)
  * item[=]
    * text = "Have you been kicked, hit, slapped, or otherwise physically hurt by your partner"
    * answerValueSet = Canonical(YesNoValueSet)
    * code[+] = $LNC#76503-2

  * insert Question(2.3, Has you partner ever threatened to hurt you, choice, false, false)
  * item[=]
    * answerValueSet = Canonical(YesNoValueSet)
    * code[+] = $LNC#66900-2

  * insert Question(2.4, Has you partner ever forced or coerced you to engage in unwanted sexual activity, choice, false, false)
  * item[=]
    * answerValueSet = Canonical(YesNoValueSet)
    * code[+] = $LNC#66905-1

* insert Question(3, HIV Status, group, false, false)
* item[=]
  * insert Question(3.1, What is the plan for notifying the partner regarding the index case's HIV status, choice, false, false)
  * item[=]
    * answerValueSet = Canonical(PartnerNotificationPlanValueSet)
    * code[+] = $SCT#223454002

  * insert Question(3.2, Was the partner notified?, choice, false, false)
  * item[=]
    * answerValueSet = Canonical(YesNoValueSet)
    * code[+] = $SCT#310368009

  * insert Question(3.3, Reason for not being notified, choice, true, false)
  * item[=]
    * answerValueSet = Canonical(ReasonPartnerNotNotifiedValueSet)
    * code = $SCT#410666004
    * enableWhen.question = "3.2"
    * enableWhen.operator = #=
    * enableWhen.answerCoding = $YesNoCodeSystem#false
    
  * insert Question(3.4, Other Reason for not being notified, string, true, false)
  * item[=]
    * enableWhen.question = "3.3"
    * enableWhen.operator = #=
    * enableWhen.answerCoding = $LNC#LA46-8
    * code = $IndexCasePartnerQuestionnaireCodeSystem#Other-Reason-Partner-Not-Notified

  * insert Question(3.5, Date notification offered, date, false, false)
  * item[=]
    * code = $IndexCasePartnerQuestionnaireCodeSystem#Date-Notification-Offered

  * insert Question(3.6, Date partner contacted, date, false, false)
  * item[=]
    * code = $IndexCasePartnerQuestionnaireCodeSystem#Date-Partner-Contacted

  * insert Question(3.7, Reason partner not contacted, choice, true, false)
  * item[=]
    * code = $IndexCasePartnerQuestionnaireCodeSystem#Reason-Partner-Not-Contacted
    * answerValueSet = Canonical(ReasonPartnerNotContactedValueSet)
    * enableWhen.question = "3.6"
    * enableWhen.operator = #exists
    * enableWhen.answerBoolean = false

  * insert Question(3.8, Other Reason partner not contacted, string, true, false)
  * item[=]
    * enableWhen.question = "3.7"
    * enableWhen.operator = #=
    * enableWhen.answerCoding = $LNC#LA46-8
    * code = $IndexCasePartnerQuestionnaireCodeSystem#Other-Reason-Partner-Not-Contacted

* insert Question(4, Previous HIV Testing Services, group, false, false)
* item[=]
  * insert Question(4.1, Has the partner been previsouly tested for HIV, choice, false, false)
  * item[=]
    * code[+] = $SCT#171121004
    * answerValueSet = Canonical(YesNoValueSet)

  * insert Question(4.2, Date of previous HIV test, date, true, false)
  * item[=]
    * code = $LNC#67723-7
    * enableWhen.question = "4.1"
    * enableWhen.operator = #=
    * enableWhen.answerCoding = $YesNoCodeSystem#true

  * insert Question(4.3, Previous HIV test result, quantity, true, false)
  * item[=]
    * code = $SCT#315124004
    * enableWhen.question = "4.2"
    * enableWhen.operator = #exists
    * enableWhen.answerBoolean = true

* insert Question(5, Current HIV Testing Services, group, false, false)
* item[=]
  * insert Question(5.1, Will the partner be tested for HIV, choice, false, false)
  * item[=]
    * code[+] = $SCT#171121004
    * answerValueSet = Canonical(YesNoValueSet)

  * insert Question(5.2, Date of HIV test, date, true, false)
  * item[=]
    * code = $LNC#67723-7
    * enableWhen.question = "5.1"
    * enableWhen.operator = #=
    * enableWhen.answerCoding = $YesNoCodeSystem#true

  * insert Question(5.3, HIV test result, quantity, true, false)
  * item[=]
    * code = $SCT#315124004
    * enableWhen.question = "5.2"
    * enableWhen.operator = #exists
    * enableWhen.answerBoolean = true

* insert Question(6, Partner Services, group, false, false)
* item[=]
  * insert Question(6.1, Is the newly diagnosed partner linked to partner services, choice, false, false)
  * item[=]
    * code[+] = $IndexCasePartnerQuestionnaireCodeSystem#Linked-to-Partner-Services
    * answerValueSet = Canonical(YesNoValueSet)

  * insert Question(6.2, Reason why the newly diagnosed partner is not linked to partner services, choice, true, false)
  * item[=]
    * code[+] = $IndexCasePartnerQuestionnaireCodeSystem#Reason-Not-Linked-to-Partner-Services
    * answerValueSet = Canonical(ReasonNotLinkedToPartnerServicesValueSet)
    * enableWhen.question = "6.1"
    * enableWhen.operator = #=
    * enableWhen.answerCoding = $YesNoCodeSystem#false

  * insert Question(6.3, Other Reason for not being notified, string, true, false)
  * item[=]
    * enableWhen.question = "6.2"
    * enableWhen.operator = #=
    * enableWhen.answerCoding = $LNC#LA46-8
    * code = $IndexCasePartnerQuestionnaireCodeSystem#Other-Reason-Not-Linked-to-Partner-Services

* insert Question(7, HIV Program, group, false, false)
* item[=]
  * insert Question(7.1, Has the partner started ART, choice, false, false)
  * item[=]
    * answerValueSet = Canonical(YesNoValueSet)
    * code[+] = $LNC#63936-9

  * insert Question(7.2, Partner identifiers, reference, false, false)
  * item[=]
    * code[+] = $LNC#94648-3

* insert Question(8.1, Case closure status, choice, false, false)
* item[=]
  * answerValueSet = Canonical(PartnerCaseClosureStatusValueSet)
  * code[+] = $IndexCasePartnerQuestionnaireCodeSystem#Partner-Case-Closure-Status

* insert Question(8.2, Other Reason for case closure, string, true, false)
* item[=]
  * enableWhen.question = "8.1"
  * enableWhen.operator = #=
  * enableWhen.answerCoding = $LNC#LA46-8
  * code = $IndexCasePartnerQuestionnaireCodeSystem#Other-Reason-Partner-Case-Closure