torrents
download: anId
	"Download the torrent and return a byte array representing the torrent file."
	| response |
	response := ZnClient new
						http;
						host: self class apiDomain;
						path: '/torrents/download/',anId asString;
						headerAt: 'Authorization' put: token token;
						get.
	^response contents