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
			"Dependencies"
			self dependencies: spec.

			"Packages"
			spec
				package: 'WodenControls'
		]
]

{ #category : #baselines }
BaselineOfWodenControls >> dependencies: spec [

	spec
		baseline: 'WodenCoreExamples' with: [ spec repository: 'github://desromech/woden-core-examples' ].

]