tests
testAscending

	function := ClySortByNameFunction ascend.
	
	self deny: (function value: Object value: Array ).
	self assert: (function value: Array value: Object ).
	self assert: (function value: Object value: Object )