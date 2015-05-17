torrents
getCategoriesTree
	| response |
	response := ZnClient new
						http;
						host: 'api.t411.io';
						path: 'categories/tree';
						headerAt: 'Authorization' put: token token;
						get.
	^T4CategoriesTree fromJSON: response contents