as yet unclassified
testCreationWithNameValue
	|term|
	term := T4Term withName: 'a term' value: 'a value'.
	
	self assert: term termName equals: 'a term'.
	self assert: term termValue equals: 'a value'