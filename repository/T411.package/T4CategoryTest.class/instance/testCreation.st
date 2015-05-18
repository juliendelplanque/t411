as yet unclassified
testCreation
	| cat |
	cat := T4Category fromDict: (NeoJSONReader fromString: '{
                "id":"12",
                "pid":"0",
                "name":"video",
                "cats": {
                    "13":{"id":"13","pid":"12","name":"films"},
                    "14":{"id":"14","pid":"12","name":"cartoons"}
                }
            }').
	self assert: cat id equals: 12.
	self assert: cat pid equals: 0.
	self assert: cat categoryName equals: 'video'.
	self assert: cat subCategories size equals: 2