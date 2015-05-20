tests-query parameters
testQueryParams
	|query|
	query := T4SearchQuery queryString: 'avatar'.
	self assert: query queryParams isEmpty.
	
	query categoryId: 42.
	self assert: query queryParams size equals: 1.
	self assert: (query queryParams at: 'cid') equals: 42.
	
	query limit: 5.
	self assert: query queryParams size equals: 2.
	self assert: (query queryParams at: 'limit') equals: 5.
	
	query offset: 10.
	self assert: query queryParams size equals: 3.
	self assert: (query queryParams at: 'offset') equals: 10.