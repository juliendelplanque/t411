token
retrieveTokenForUser: username password: password
	| applicationForm contents |
	applicationForm := ZnApplicationFormUrlEncodedEntity new
								at: 'username' put: username;
								at: 'password' put: password;
								contentType: ZnMimeType applicationFormUrlEncoded .

	contents := (ZnEasy post: 'http://',self class apiDomain,'/auth' data: applicationForm) contents.
	^T4Token fromJSON: contents