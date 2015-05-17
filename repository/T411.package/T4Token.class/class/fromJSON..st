instance creation
fromJSON: aString
	| dict |
	dict := NeoJSONReader fromString: aString.
	^ [ self new
		uid: (dict at: 'uid');
		token: (dict at: 'token');
		yourself ] on: KeyNotFound do: [ (T4Error fromErrorCode: (dict at: 'code')) signal ]