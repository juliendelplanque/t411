instance creation
fromDict: aDictionnary
	^self new
		torrentName: (aDictionnary at: 'name');
		category: (aDictionnary at: 'category') asInteger;
		seeders: (aDictionnary at: 'seeders') asInteger;
		leechers: (aDictionnary at: 'leechers') asInteger;
		commentsCount: (aDictionnary at: 'comments') asInteger;
		verified: (aDictionnary at: 'isVerified') asInteger;
		addedDate: (DateAndTime fromString: (aDictionnary at: 'added'));
		size: (aDictionnary at: 'size') asInteger;
		timeCompleted: (aDictionnary at: 'times_completed') asInteger;
		owner: (aDictionnary at: 'owner') asInteger;
		category: (aDictionnary at: 'categoryname');
		categoryImage: (aDictionnary at: 'categoryimage');
		username: (aDictionnary at: 'username');
		privacy: (aDictionnary at: 'privacy');
		yourself