Class {
	#name : #BaselineOfWollokVM,
	#superclass : #BaselineOf,
	#category : #BaselineOfWollokVM
}

{ #category : #baselines }
BaselineOfWollokVM >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			
			spec
				baseline: 'SmaCC' 
				with: [
					spec
						loads: 'Runtime';
						repository: 'github://j-brant/Smacc:7aafca9' ].
			
			spec
				package: 'Wollok-Parser' with: [ spec requires: 'SmaCC' ]]
]