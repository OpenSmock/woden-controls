Extension { #name : #AGPUInterface }

{ #category : #'*WodenControls' }
AGPUInterface >> release [
	self class finalizationRegistry remove: self ifAbsent: [].
	self primitiveRelease.
	handle := nil
]
