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

RuleSet: QuestionForExample(id, linkId, text, type, required, repeats)
* item[{id}]
  * linkId = "{linkId}"
  * text = "{text}"
  * type = #{type}
  * repeats = {repeats}
  * required = {required}

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

RuleSet: QuestionResponseItemForExample(id, linkId, dataType, dataValue)
* item[{id}]
  * linkId = "{linkId}"
  * answer.{dataType} = {dataValue}

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