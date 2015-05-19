torrents
getCategoriesTree
	| response |
	response := ZnClient new
						http;
						host: self class apiDomain;
						path: 'categories/tree';
						headerAt: 'Authorization' put: token token;
						get.
	^T4CategoriesTree fromJSON: response contents