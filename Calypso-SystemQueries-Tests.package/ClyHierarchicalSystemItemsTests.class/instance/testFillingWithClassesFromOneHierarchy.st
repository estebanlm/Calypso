tests
testFillingWithClassesFromOneHierarchy

	queryResult fillWith: { ClySubclassN1OfClass1FromP1. ClySubclassLOfSubclassMFromP3. ClyClass1FromP1. ClySubclassN2OfClass1FromP1 }.

	self assertItems: {
		ClyClass1FromP1. 0. ClySubclassLOfSubclassMFromP3. 1. 
		ClySubclassN1OfClass1FromP1. 1. ClySubclassN2OfClass1FromP1. 1 }