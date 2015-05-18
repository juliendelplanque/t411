printing
printOn: aStream
	aStream
		<< self className;
		<< $(;
		<< self categoryName;
		<< $)