as yet unclassified
fromDict: aDictionnary id: id categoryId: catId
	^self new
		id: id;
		categoryId: catId;
		termType: (aDictionnary at: 'type');
		mode: (aDictionnary at: 'mode');
		terms: ((aDictionnary at: 'terms') keys
						collect: [ :key |
							T4Term withId: key name: ((aDictionnary at: 'terms') at: key) ]);
		yourself