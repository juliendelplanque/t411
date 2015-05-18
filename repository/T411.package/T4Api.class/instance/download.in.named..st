torrents
download: anId in: directoryFileLocator named: fileName
	"Download the torrent file and put it the directory given by the path in parameters."
	| byteArray |
	byteArray := self download: anId.
	(directoryFileLocator / fileName,'torrent') writeStream nextPutAll: byteArray; close