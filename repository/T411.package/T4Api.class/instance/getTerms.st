torrents
getTerms
	"Get list of all terms linked to categories"
	| response json collected result |
	response := ZnClient new
						http;
						host: 'api.t411.io';
						path: '/terms/tree';
						headerAt: 'Authorization' put: token token;
						get.
	json := NeoJSONReader fromString: response contents.
	collected := json keys collect: [ :key | 
		(json at: key) keys collect: [ :subKey | 
			T4TermType fromDict: ((json at: key) at: subKey) id: subKey asInteger categoryId: key asInteger ] ].
	result := LinkedList new.
	collected do: [: x| result addAll: x ].
	^result asArray