as yet unclassified
testCreation
	| subCat |
	subCat := T4SubCategory fromDict: (NeoJSONReader fromString: '{"id":"13","pid":"12","name":"films"}').
	self assert: subCat id equals: 13.
	self assert: subCat pid equals: 12.
	self assert: subCat categoryName equals: 'films'.