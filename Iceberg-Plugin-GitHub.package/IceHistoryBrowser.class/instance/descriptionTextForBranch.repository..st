private accessing
descriptionTextForBranch: aBranch repository: repo
	| text |
	
	self flag: #todo. "This is a duplication of IceRepositoryModel>>descriptionTextForBranch:. 
	This can be solved by using an IceBranchModel instead the branch directly"
	text := aBranch name asText.
	aBranch isHead ifTrue: [ text allBold ].
	^ text