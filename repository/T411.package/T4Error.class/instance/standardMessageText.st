accessing
standardMessageText
	^ String streamContents: [ :stream |
		stream << (self class errorStrings at: self errorCode) ].