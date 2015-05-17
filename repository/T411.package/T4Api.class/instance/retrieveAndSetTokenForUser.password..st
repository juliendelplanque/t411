token
retrieveAndSetTokenForUser: username password: password
	self setToken: (self retrieveTokenForUser: username password: password).
	^ token
	