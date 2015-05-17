torrents
search: query
	| client response |
	client := ZnClient new
						http;
						host: 'api.t411.io';
						path: '/torrents/search/',query queryString;
						headerAt: 'Authorization' put: '1701697:136:bb94f288d45070749a684b7a9c839f60'.
	query queryParams keys
		do: [ :key | client queryAt: key put: (query queryParams at: key) ].
	response := client get.
	^ ((NeoJSONReader fromString: (response contents)) at: 'torrents')
			collect: [ :torrentDict | T4Torrent fromDict: torrentDict ]