as yet unclassified
fromJSON: aString
	| json |
	json := NeoJSONReader fromString: aString.
	^ self new
			username: (json at: 'username');
			gender: (json at: 'gender');
			age: (json at: 'age') asInteger;
			avatar: (json at: 'avatar');
			downloaded: (json at: 'downloaded') asInteger;
			uploaded: (json at: 'uploaded') asInteger;
			yourself