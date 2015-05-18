instance creation
withName: aName value: aValue
	^self new
		termName: aName;
		value: aValue;
		yourself