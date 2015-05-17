instance creation
fromDict: aDictionnary
	^[ self new
		id: (aDictionnary at: 'id') asInteger;
		pid: (aDictionnary at: 'pid') asInteger;
		categoryName: (aDictionnary at: 'name');
		subCategories: ((aDictionnary at: 'cats') keys
								collect: [ :key |
									T4SubCategory fromDict: ((aDictionnary at: 'cats') at: key) ]);
		yourself ] on: KeyNotFound do: [ :ex | "Manage special of category with no subcategory. Yes, this is strange."
			^ self fromDictWithoutSubCategories: ((aDictionnary at: 'cats') at: ((aDictionnary at: 'cats') keys at: 1)) ]