error strings
errorStrings
	^ErrorStrings ifNil: [ ErrorStrings := Dictionary newFrom: {
								101 -> 'User not found'.
								102 -> 'Account is not confirmed'.
								103 -> 'Account is disabled'.
								104 -> 'Account disabled due to hacks and cheats'.
								105 -> 'Account disabled by administrator'.
								106 -> 'Authorization limit reached'.
								107 -> 'Wrong Password'.
								201 -> 'Token has expired. Please login'.
								202 -> 'Invalid token'.
								301 -> 'Torrent not found'.
								302 -> 'Torrent file not found'.
								303 -> 'Torrent is banned'.
								304 -> 'Torrent is hidden'.
								401 -> 'Bookmark not found'.
								402 -> 'Duplicate bookmark record'.
								403 -> 'Can''t save bookmark. Internal server error'.
								501 -> 'Category not found'} ]