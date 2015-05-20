as yet unclassified
testCreation
	| token |
	token := T4Token fromJSON: '{"uid": 1234, "token":"fghjkoiuytrfcbnkffghjkyfjgfh"}'.
	
	self assert: token uid equals: 1234.
	self assert: token token equals: 'fghjkoiuytrfcbnkffghjkyfjgfh'