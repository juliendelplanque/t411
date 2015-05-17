instance creation
fromDict: aDictionnary
	^self new
		id: (aDictionnary at: 'id') asInteger;
		pid: (aDictionnary at: 'pid') asInteger;
		categoryName: (aDictionnary at: 'name');
		yourself