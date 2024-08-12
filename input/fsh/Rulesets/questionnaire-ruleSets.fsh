RuleSet: Question(linkId, text, type, required, repeats)
* item[+].linkId = "{linkId}"
* item[=].text = "{text}"
* item[=].type = #{type}
* item[=].repeats = {repeats}
* item[=].required = {required}

RuleSet: QuestionResponse(linkId, text, dataType, dataValue)
* item[+]
  * linkId = "{linkId}"
  * text = "{text}"
  * answer[+].{dataType} = {dataValue}

RuleSet: QuestionResponseForReference(linkId, text, dataValue)
* item[+]
  * linkId = "{linkId}"
  * text = "{text}"
  * answer[+].valueReference = Reference({dataValue})