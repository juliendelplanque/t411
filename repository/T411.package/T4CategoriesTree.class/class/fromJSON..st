instance creation
fromJSON: aString
	| json |
	json := NeoJSONReader fromString: aString.
	^self new
		categories: (json keys
							collect: [ :key | T4Category fromDict: (json at: key)]);
		yourself