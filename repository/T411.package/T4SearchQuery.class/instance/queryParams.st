as yet unclassified
queryParams
	"Returns a dictionnary that contains all options initialized."
	| dict |
	dict := Dictionary new.
	categoryId isNotNil ifTrue: [ dict at: 'cid' put: categoryId ].
	limit isNotNil ifTrue: [ dict at: 'limit' put: limit ].
	offset isNotNil ifTrue: [ dict at: 'offset' put: offset ].
	
	^dict