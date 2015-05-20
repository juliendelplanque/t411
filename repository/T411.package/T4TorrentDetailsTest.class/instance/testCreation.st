as yet unclassified
testCreation
	| torrentDetails |
	torrentDetails := T4TorrentDetails fromJSON: self exampleJSON.
	
	self assert: torrentDetails categoryId equals: 637.
	self assert: torrentDetails category equals: 'Animation Série'.
	self assert: torrentDetails categoryImage equals: 'video-animation-series'.
	self assert: torrentDetails id equals: 5143373.
	self assert: torrentDetails ownerId equals: 7067272.
	self assert: torrentDetails privacy equals: 'normal'.
	self assert: torrentDetails rewriteName equals: 'the-legend-of-korra-s03e09-vostfr-720p-avatar-realms'.
	self assert: torrentDetails terms size equals: 8.
	self assert: torrentDetails torrentName equals: 'The Legend Of Korra S03E09 [VOSTFR 720p] Avatar Realms'.
	self assert: torrentDetails userName equals: 'Sonyeri219'