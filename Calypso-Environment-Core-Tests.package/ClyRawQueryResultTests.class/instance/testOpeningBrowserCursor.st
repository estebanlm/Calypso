tests
testOpeningBrowserCursor

	| cursor resultAdapter |
	queryResult environmentScope: (ClyEnvironmentScope of: #()).	
	cursor := queryResult openBrowserCursor.

	self assert: cursor class equals: ClyBrowserItemCursor.
	resultAdapter := cursor queryResult.
	self assert: resultAdapter class equals: ClyQueryResultBrowserAdapter.
	self assert: resultAdapter actualResult equals: queryResult