as yet unclassified
testCreation
	| user |
	user := T4User fromJSON: '{
            "username":"Username",
            "gender":"Male",
            "age":"0",
            "avatar":"\/\/images\/avatar\/123\/456123_Username.gif?34551",
            "downloaded":"10814091744",
            "uploaded":"75162042368"
        }'.

	self assert: user username equals: 'Username'.
	self assert: user gender equals: 'Male'.
	self assert: user age equals: 0.
	self assert: user avatar equals: '//images/avatar/123/456123_Username.gif?34551'.
	self assert: user downloaded equals: 10814091744.
	self assert: user uploaded equals: 75162042368