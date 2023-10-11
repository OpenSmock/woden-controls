Class {
	#name : #WDCCore,
	#superclass : #Object,
	#category : #'WodenControls-Core'
}

{ #category : #mouseAndKeyboard }
WDCCore class >> generateTransformVectorWithKeyboard: aKeysDictionnary [
	
	
	| transformVectorZ transformVectorS transformVectorQ transformVectorD transformVector |
	
	transformVectorZ := transformVectorS := transformVectorQ := transformVectorD := Vector3 zeros.
	
	aKeysDictionnary at: 'Z' ifPresent: [ :value | value ifTrue: [ transformVectorZ z: -1 ]].
	aKeysDictionnary at: 'S' ifPresent: [ :value | value ifTrue: [ transformVectorZ z: 1 ]].
	aKeysDictionnary at: 'Q' ifPresent: [ :value | value ifTrue: [ transformVectorZ x: -1 ]].
	aKeysDictionnary at: 'D' ifPresent: [ :value | value ifTrue: [ transformVectorZ x: 1 ]].
	
	transformVector := 
		transformVectorZ +
		transformVectorS +
		transformVectorQ + 
		transformVectorD.
		
	^transformVector.
]
