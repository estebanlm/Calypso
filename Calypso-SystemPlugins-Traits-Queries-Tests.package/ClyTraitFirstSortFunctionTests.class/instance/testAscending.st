tests
testAscending
	
	function := ClyTraitFirstSortFunction ascend.
	
	self assert: (function value: ClyTraitRoot1 value: ClyTraitRoot2 ).
	self deny: (function value: ClyTraitRoot2 value: ClyTraitRoot1 ).
	self deny: (function value: ClyClass1FromP1 value: ClyTraitRoot1).
	self assert: (function value: ClyTraitRoot1 value: ClyClass1FromP1 ).
	self assert: (function value: ClyTraitRoot1 value: ClyTraitRoot1 ).
	self assert: (function value: ClyClass1FromP1 value: ClyClass1FromP1 )