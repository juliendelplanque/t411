as yet unclassified
testCreation
	| catTree |
	catTree := T4CategoriesTree fromJSON: '{"12":{
                "id":"12",
                "pid":"0",
                "name":"video",
                "cats": {
                    "13":{"id":"13","pid":"12","name":"films"},
                    "14":{"id":"14","pid":"12","name":"cartoons"}
                }
            },
"13":{
                "id":"12",
                "pid":"0",
                "name":"video",
                "cats": {
                    "13":{"id":"13","pid":"12","name":"films"},
                    "14":{"id":"14","pid":"12","name":"cartoons"}
                }
            }}'.
	self assert: catTree categories size equals: 2.