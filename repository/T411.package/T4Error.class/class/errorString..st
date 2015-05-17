error strings
errorString: anInteger
	^Dictionary newFrom: {1101 -> 'User not found'.
								1102 -> 'Account is not confirmed'.
								1103 -> 'Account is disabled'.
								1104 -> 'Account disabled due to hacks and cheats'.
								1105 -> 'Account disabled by administrator'.
								1106 -> 'Authorization limit reached'.
								1107 -> 'Wrong Password'.
								1201 -> 'Token has expired. Please login'.
								1202 -> 'Invalid token'.
								1301 -> 'Torrent not found'.
								1302 -> 'Torrent file not found'.
								1303 -> 'Torrent is banned'.
								1304 -> 'Torrent is hidden'.
								1401 -> 'Bookmark not found'.
								1402 -> 'Duplicate bookmark record'.
								1403 -> 'Can''t save bookmark. Internal server error'.
								1501 -> 'Category not found'}