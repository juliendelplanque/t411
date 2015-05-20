as yet unclassified
testCreationWithIdValue
	|term|
	term := T4Term withId: 42 name: 'a term'.
	
	self assert: term id equals: 42.
	self assert: term termName equals: 'a term'