as yet unclassified
testCreation
	| torrent |
	torrent := T4Torrent fromDict: (NeoJSONReader fromString: '{"id":123123,
                    "name":"Avatar",
                    "category":"321",
                    "seeders":"11",
                    "leechers":"2",
                    "comments":"8",
                    "isVerified":"1",
                    "added":"2013-01-15 16:14:14",
                    "size":"2670809119",
                    "times_completed":"1256",
                    "owner":"7589510",
                    "categoryname":"Animation",
                    "categoryimage":"t411-animation.png",
                    "username":"MegaUsername",
                    "privacy":"normal"
	}').
	self assert: torrent id equals: 123123.
	self assert: torrent torrentName equals: 'Avatar'.
	self assert: torrent categoryId equals: 321.
	self assert: torrent seeders equals: 11.
	self assert: torrent leechers equals: 2.
	self assert: torrent commentsCount equals: 8.
	self assert: torrent isVerified equals: 1.
	self assert: torrent addedDate equals: (DateAndTime fromString: '2013-01-15 16:14:14').
	self assert: torrent torrentSize equals: 2670809119.
	self assert: torrent timeCompleted equals: 1256.
	self assert: torrent ownerId equals: 7589510.
	self assert: torrent category equals: 'Animation'.
	self assert: torrent categoryImage equals: 't411-animation.png'.
	self assert: torrent username equals: 'MegaUsername'.
	self assert: torrent privacy equals: 'normal'