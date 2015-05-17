token
retrieveTokenForUser: username password: password
	| applicationForm contents |
	applicationForm := ZnApplicationFormUrlEncodedEntity new
								at: 'username' put: username;
								at: 'password' put: password;
								contentType: ZnMimeType applicationFormUrlEncoded .

	contents := (ZnEasy post: 'http://api.t411.io/auth' data: applicationForm) contents.
	^T4Token fromJSON: contents