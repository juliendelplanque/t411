as yet unclassified
retrieveProfile: id
	| response |
	response := ZnClient new
						http;
						host: 'api.t411.io';
						path: 'users/profile/',id asString;
						headerAt: 'Authorization' put: token token;
						get.
	^ T4User fromJSON: response contents