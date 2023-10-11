Extension { #name : #WDAbstractRenderingSceneStateOSWindow }

{ #category : #'*WodenControls' }
WDAbstractRenderingSceneStateOSWindow >> renderingProcessPriority [
	^ Processor userSchedulingPriority
]
