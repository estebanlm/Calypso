testing
isFromScopeWithClassKindOf: aClass

	scope classesDo: [ :each | 
		(each == aClass or: [each inheritsFrom: aClass])
			ifTrue: [^true]].
	
	^false

