torrents
download: anId in: directoryFileLocator
	"Download the torrent file and put it the directory given by the path in parameters.
	 The torrent file is named according to its id."
	self download: anId in: directoryFileLocator named: anId asString