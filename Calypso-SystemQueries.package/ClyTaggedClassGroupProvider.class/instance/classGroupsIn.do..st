building groups
classGroupsIn: aPackageScope do: aBlock
	| classGroups group |
	classGroups := Dictionary new.	
	aPackageScope packagesDo: [ :each |
		each tagsForClasses do: [ :eachTag |	
			classGroups at: eachTag ifAbsentPut: [
				group := ClyTaggedClassGroup 
					withClassesFrom: aPackageScope taggedBy: eachTag.
				aBlock value: group.
				group].				
	]]