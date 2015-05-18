instance creation
fromJSON: aString
	| json |
	json := NeoJSONReader fromString: aString.
	^self new
		id: (json at: 'id') asInteger;
		torrentName: (json at: 'name');
		rewriteName: (json at: 'rewritename');
		categoryId: (json at: 'category') asInteger;
		category: (json at: 'categoryname');
		categoryImage: (json at: 'categoryimage');
		username: (json at: 'username');
		ownerId: (json at: 'owner') asInteger;
		description: (json at: 'description');
		privacy: (json at: 'privacy');
		terms: ((json at: 'terms') keys collect: [ :key |
			T4Term withName: key  value: ((json at: 'terms') at: key) ]);
		yourself