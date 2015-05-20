instance creation
withName: aName value: aValue
	^self new
		termName: aName;
		termValue: aValue;
		yourself