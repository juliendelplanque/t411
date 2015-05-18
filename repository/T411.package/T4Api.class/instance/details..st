torrents
details: anId
	| response |
	response := ZnClient new
					http;
					host: 'api.t411.io';
					path: '/torrents/details/',anId asString;
					headerAt: 'Authorization' put: token token;
					get.
	^ T4TorrentDetails fromJSON: response contents