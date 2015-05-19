users
retrieveProfile: id
	| response |
	response := ZnClient new
						http;
						host: self class apiDomain;
						path: 'users/profile/',id asString;
						headerAt: 'Authorization' put: token token;
						get.
	^ T4User fromJSON: response contents