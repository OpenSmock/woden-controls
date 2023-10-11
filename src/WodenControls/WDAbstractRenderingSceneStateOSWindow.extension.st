Extension { #name : #WDAbstractRenderingSceneStateOSWindow }

{ #category : #'*WodenControls' }
WDAbstractRenderingSceneStateOSWindow >> displayExtent [
	| width height |
	
	swapChain ifNotNil: [ 
		width := swapChain getWidth.
		height := swapChain getHeight.
	].

	(height isNil or:[height = 0]) ifTrue:[
		width := extent x.
		height := extent y. 
	].

	^ width @ height
]

{ #category : #'*WodenControls' }
WDAbstractRenderingSceneStateOSWindow >> renderingProcessPriority [
	^ Processor userSchedulingPriority
]
