execution
execute

	| selectors |
	selectors := messages collect: [ :each | each selector].
	
	browser spawnQueryBrowserOn: (ClyMessageImplementors of: selectors)