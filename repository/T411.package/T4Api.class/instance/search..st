torrents
search: query
	| client response |
	client := ZnClient new
						http;
						host: self class apiDomain;
						path: '/torrents/search/',query queryString;
						headerAt: 'Authorization' put: token token.
	query queryParams keys
		do: [ :key | client queryAt: key put: (query queryParams at: key) ].
	response := client get.
	^ ((NeoJSONReader fromString: (response contents)) at: 'torrents')
			collect: [ :torrentDict | T4Torrent fromDict: torrentDict ]