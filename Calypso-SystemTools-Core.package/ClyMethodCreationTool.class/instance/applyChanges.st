operations
applyChanges
	| newMethod selector selectedClass |
	selectedClass := self selectClassForNewMethodIfNone: [^false].
	
	selector := methodTags 
		ifEmpty: [ selectedClass compile: self pendingText asString notifying: textMorph]
		ifNotEmpty: [
			selectedClass compile: self pendingText asString classified: methodTags anyOne notifying: textMorph].
			
	selector ifNil: [ ^false ].
	
	newMethod := selectedClass >> selector.
	methodTags ifEmpty: [ 
		MethodClassifier classify: newMethod.
		methodTags := newMethod tags ].
	self tagAndPackageEditingMethod: newMethod.
	
	self removeFromBrowser.
	browser selectMethod: newMethod.
	^true