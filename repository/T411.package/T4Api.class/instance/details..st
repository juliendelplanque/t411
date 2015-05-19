torrents
details: anId
	| response |
	response := ZnClient new
					http;
					host: self class apiDomain;
					path: '/torrents/details/',anId asString;
					headerAt: 'Authorization' put: token token;
					get.
	^ T4TorrentDetails fromJSON: response contents