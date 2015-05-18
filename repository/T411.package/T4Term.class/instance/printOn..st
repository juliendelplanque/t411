printing
printOn: aStream
	aStream
		<< self className;
		<< $(;
		<< self termName;
		<< $)