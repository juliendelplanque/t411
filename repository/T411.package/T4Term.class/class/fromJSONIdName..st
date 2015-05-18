instance creation
fromJSONIdName: aString
	| json |
	json := NeoJSONReader fromString: aString.
	^self new
		id: (json at: 'id');
		termName: (json at: 'name');
		yourself