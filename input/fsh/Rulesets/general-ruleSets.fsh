RuleSet: Question(id, linkId, text, type, required, repeats, definition)
* item[{id}]
  * ^definition = "{definition}"
  * linkId = "{linkId}"
  * text 1..1
  * text = "{text}"
  * type = #{type}
  * repeats 1..
  * repeats = {repeats}
  * required 1..
  * required = {required}

RuleSet: QuestionForDefinition(linkId, text, type, required, repeats)
* item[+].linkId = "{linkId}"
* item[=].text = "{text}"
* item[=].type = #{type}
* item[=].repeats = {repeats}
* item[=].required = {required}

RuleSet: QuestionForExample(id, linkId)
* item[{id}]
  * linkId = "{linkId}"

RuleSet: QuestionResponseItem(id, linkId, text, type, definition)
* item[{id}]
  * ^definition = "{definition}"
  * linkId = "{linkId}"
  * text 1..1
  * text = "{text}"
  * answer 1..
  * answer
    * value[x] 1..
    * value[x] only {type}

RuleSet: QuestionResponseItemTest(linkId, text, type)
* item[+]
  * linkId = "{linkId}"
  * text = "{text}"
  * answer
    * value[x] only {type}

RuleSet: QuestionResponseItemForExample(id, dataType, dataValue)
* item[{id}]
  * answer[+].{dataType} = {dataValue}

RuleSet: QuestionResponseItemForExampleTest(linkId, text, dataType, dataValue)
* item[+]
  * linkId = "{linkId}"
  * text = "{text}"
  * answer[+].{dataType} = {dataValue}

RuleSet: QuestionResponseItemForReferenceExample(id, dataValue)
* item[{id}]
  * answer[+].valueReference = Reference({dataValue})

RuleSet: QuestionResponseItemForReferenceExampleTest(linkId, text, dataValue)
* item[+]
  * linkId = "{linkId}"
  * text = "{text}"
  * answer[+].valueReference = Reference({dataValue})

RuleSet: Slice(item, definition, discriminatorType, discriminatorPath, rule, description, ordered)
* {item} 
  * ^definition = "{definition}"
  * ^slicing.discriminator[+].type = #{discriminatorType}
  * ^slicing.discriminator[=].path = "{discriminatorPath}"
  * ^slicing.rules = #{rule}
  * ^slicing.description = "{description}"
  * ^slicing.ordered = {ordered}

RuleSet: SliceForResolve(item, definition, rule, description, ordered)
* {item} 
  * ^definition = "{definition}"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "resolve()"
  * ^slicing.rules = #{rule}
  * ^slicing.description = "{description}"
  * ^slicing.ordered = {ordered}

RuleSet: ElementMap(source, target, equivalence)
* element[+]
  * code = #{source}
  * target[+]
    * code = #{target}
    * equivalence = #{equivalence}