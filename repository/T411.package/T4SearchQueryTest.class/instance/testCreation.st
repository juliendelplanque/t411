as yet unclassified
testCreation
	| query |
	query := T4SearchQuery queryString: 'avatar'.
	
	self assert: query queryString equals: 'avatar'.
	
	query := T4SearchQuery queryString: 'avatar' categoryId: 42.
	
	self assert: query queryString equals: 'avatar'.
	self assert: query queryParams size equals: 1.
	self assert: (query queryParams at: 'cid') equals: 42.