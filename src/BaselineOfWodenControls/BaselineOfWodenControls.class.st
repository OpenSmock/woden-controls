Class {
	#name : #BaselineOfWodenControls,
	#superclass : #BaselineOf,
	#category : #BaselineOfWodenControls
}

{ #category : #baselines }
BaselineOfWodenControls >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec postLoadDoIt: #'postload:package:'.

			"Dependencies"
			self dependencies: spec.

			"Packages"
			spec
				package: 'WodenControls'
		]
]

{ #category : #baselines }
BaselineOfHeloVis >> dependencies: spec [

	spec
		baseline: 'WodenCoreExamples' with: [ spec repository: 'github://desromech/woden-core-examples' ].

]

{ #category : #baselines }
BaselineOfWodenControls >> postload: loader package: packageSpec [

	UIManager default proceed: 'WodenControls is loaded'.
]

{ #category : #baselines }
BaselineOfWodenControls >> projectClass [
	^ MetacelloCypressBaselineProject
]
