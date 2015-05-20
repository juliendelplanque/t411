as yet unclassified
testCreation
	| termType |
	termType := T4TermType fromDict: (NeoJSONReader fromString: '{
                    "type":"Application - Genre",
                    "mode":"single",
                    "terms":{
                        "123":"Antivirus",
                        "345":"Torrent clients"
                    }}') id: 11 categoryId: 12.

	self assert: termType id equals: 11.
	self assert: termType categoryId equals: 12.
	self assert: termType termType equals: 'Application - Genre'.
	self assert: termType mode equals: 'single'.
	self assert: termType terms size equals: 2