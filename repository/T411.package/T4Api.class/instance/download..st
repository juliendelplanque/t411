torrents
download: anId
	| response |
	response := ZnClient new
						http;
						host: 'api.t411.io';
						path: '/torrents/download/',anId asString;
						headerAt: 'Authorization' put: token token;
						get.