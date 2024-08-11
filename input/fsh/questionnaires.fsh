Instance: PregnancyStatusAndFPMQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire - Pregnancy Status and Family Planning Method (FPM)"
Description: "A questionaire that provides the questions to for pregnancy status and FPM."
* status = #active
* subjectType = #Observation

* insert QuestionForDefinition(1.1, Is Pregnant, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * answerValueSet.extension[+].valueCanonical = Canonical(PregnancyStatusProprietaryToLOINC)
  * answerValueSet.extension[=].url = "http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap"
  * code = $LNC#11449-6

* insert QuestionForDefinition(1.2, Wants to be pregnant, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * answerValueSet.extension[+].valueCanonical = Canonical(PregnancyFuturePlansProprietaryToLOINC)
  * answerValueSet.extension[=].url = "http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap"
  * code = $LNC#86645-9

* insert QuestionForDefinition(1.3, Is breastfeeding, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * answerValueSet.extension[+].valueCanonical = Canonical(BreastfeedingStatusProprietaryToLOINC)
  * answerValueSet.extension[=].url = "http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap"
  * code = $LNC#63895-7

* insert QuestionForDefinition(1.4, Last Menstrual date, date, false, false)
* item[=]
  * code = $LNC#LP187193-0

* insert QuestionForDefinition(1.5, Estimated Delivery Date, date, false, false)
* item[=]
  * code = $LNC#11779-6

* insert QuestionForDefinition(1.6, Family Planning Method, choice, false, true)
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

* insert QuestionForDefinition(1.1, Is the client newly enrolled, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#67723-7

* insert QuestionForDefinition(1.2, Does the client have a high viral load, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $SCT#315124004

* insert QuestionForDefinition(1.3, Does the client have an ART status of Restart, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#63936-9

* insert QuestionForDefinition(1.4, Is the client with a new partner, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#85656-7

* insert QuestionForDefinition(1.5, Is the client with a partner not yet disclosed, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#47249-8

* insert QuestionForDefinition(1.6, Is the client with a partner who has not been tested yet for HIV, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $SCT#171121004

* insert QuestionForDefinition(1.7, Is the client in care with STI, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $SCT#8098009

* insert QuestionForDefinition(1.8, Does the client have a child under 15yrs of age who is not tested, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $SCT#171121004

* insert QuestionForDefinition(1.9, Is the client Known Positive, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#55277-8

* insert QuestionForDefinition(1.10, Is the client eligible for partner and FBICT, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $PartnerAndFBICTCodeSystem#Partner-FBICT-Eligibiity

* insert QuestionForDefinition(1.11, Is the index case offered with partner and FBICT services, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $PartnerAndFBICTCodeSystem#Partner-FBICT-Offered

* insert QuestionForDefinition(1.12, Has the client accepted the offer for partner and FBICT, choice, false, false)
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

* insert QuestionForDefinition(1.1, Did the index case agree to be interviewed, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#LA14870-2

* insert QuestionForDefinition(1.2, Reason for not being interviewed, choice, false, false)
* item[=]
  * answerValueSet = Canonical(ReasonIndexCaseNotInterviewedValueSet)
  * code = $LNC#LP95022-7

* insert QuestionForDefinition(1.3, Other Reason for not being interviewed, string, true, false)
* item[=]
  * enableWhen.question = "1.2"
  * enableWhen.operator = #=
  * enableWhen.answerCoding = $LNC#LA46-8

* insert QuestionForDefinition(1.4, When did the index case receive the interview, date, true, false)
* item[=]
  * code = $LNC#91714-6
  * enableWhen.question = "1.1"
  * enableWhen.operator = #=
  * enableWhen.answerCoding = $YesNoCodeSystem#true

* insert QuestionForDefinition(1.5, Was the index case interviewed for partner services, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $PartnerAndFBICTCodeSystem#Partner-Services

* insert QuestionForDefinition(1.6, When was the index case interviewed for partner services, date, true, false)
* item[=]
  * code = $LNC#91714-6
  * enableWhen.question = "1.5"
  * enableWhen.operator = #=
  * enableWhen.answerCoding = $YesNoCodeSystem#true

* insert QuestionForDefinition(1.7, Number of sexual partners in past 12 months, integer, false, false)
* item[=]
  * code = $LNC#85736-7

* insert QuestionForDefinition(1.8, Number of sexual partners in past 24 months, integer, false, false)
* item[=]
  * code = $SCT#228458001

* insert QuestionForDefinition(1.9, Is the index client willing to identify the sex partners, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $SCT#228465009

* insert QuestionForDefinition(1.10, Reason for not being able to identify the sex partners, string, true, false)
* item[=]
  * code = $SCT#225465005
  * enableWhen.question = "1.9"
  * enableWhen.operator = #=
  * enableWhen.answerCoding = $YesNoCodeSystem#false

* insert QuestionForDefinition(1.11, What is the next visit date, date, false, false)
* item[=]
  * code = $LNC#57070-5

Instance: FamilyIndexCaseContactsQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire - Family Index Case Contacts"
Description: "A questionaire that assesses the HIV and health status for index case contacts."
* status = #active
* subjectType = #Observation

* insert QuestionForDefinition(1.1, Currently living with the index case, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code[+] = $SCT#408821002

* insert QuestionForDefinition(1.2, Health status of the client, reference, false, false)
* item[=]
  * code[+] = $LNC#11323-3