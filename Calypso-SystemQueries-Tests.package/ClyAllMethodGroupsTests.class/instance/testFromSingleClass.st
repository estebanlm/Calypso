tests
testFromSingleClass

	self queryFromScope: ClyInstanceSideScope of: ClyClass1FromP1.
	
	self assert: (resultItems collect: #class as: Set) equals: { ClyInheritedMethodGroup. ClyTaggedMethodGroup} asSet.
	self 
		assert: (resultItems select:[:each | each class = ClyTaggedMethodGroup] thenCollect: #tag) asSet
		equals: ClyClass1FromP1 tagsForMethods asSet