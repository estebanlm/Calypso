tests
testFillingWithOneInstVarAndTwoClassVarsOfSameClass

	queryResult fillWith: { 
		ClyInstanceVariable named: #instVar definedIn: ClyClass2FromP1.
		ClyClassVariable named: #ClassVar2 definedIn: ClyClass2FromP1.
		ClyClassVariable named: #ClassVar1 definedIn: ClyClass2FromP1}.
	
	self assertItems: {ClyInheritedMethodGroup. 0. ClyMethodGroup. 0.
		ClyVarDefinitionMethodGroup. 0. ClyVariableMethodGroup. 1 }.
	self assertVars: #(#instVar)