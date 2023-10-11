"
I contain templates of camera actors for Woden.
"
Class {
	#name : #WDCCameraActorTemplates,
	#superclass : #Object,
	#category : #'WodenControls-Templates'
}

{ #category : #mouseAndKeyboard }
WDCCameraActorTemplates class >> mouseAndKeyboardCameraActor [

	| actor cameraAngles cameraOrientationFunction keys transformVector |
	actor := WDGFActor new
		addComponent: (WDGFActorSceneComponent new
			position: (Vector3 z: 3);
			addChildSceneComponent: (WDGFCameraComponent new isActive: true; yourself);
			yourself);
		addComponent: WDGFInputListenerComponent new;
		yourself.

	cameraAngles := Vector3 zeros.
	cameraOrientationFunction := [ (Quaternion yRotation: cameraAngles y) * (Quaternion xRotation: cameraAngles x) ].
	keys := Dictionary new.
	transformVector := Vector3 new.
	
	actor
		onMouseMoveEventDo: [ :event |
			| delta |
			delta := event delta.

			event buttons leftButton ifTrue: [ 
				cameraAngles := cameraAngles + (Vector3 x: delta y negated degreesToRadians y: delta x negated degreesToRadians z: 0.0).
				actor orientation: cameraOrientationFunction value.
			].

			event buttons rightButton ifTrue: [ 
				actor position: actor position + (actor orientation transformVector3: (Vector3 x: delta x negated y: delta y z: 0.0) * 0.001).
			].
		];
	
		onKeyDownEventDo: [ :event | | assoc keyName |
			keyName := event symbol name.
			assoc := keyName->true.
			
			"We check the necessity to put:"
			keys 
				at: keyName 
				ifPresent: [ :i | 
					i ifFalse: [ 
						keys at: keyName put: true.].]
				ifAbsent: [ 
					keys at: keyName put: true.].
		];
	
		onKeyUpEventDo: [ :event | | keyName |
			keyName := event symbol name.
			
			keys at: keyName put: false.
		].
	
	actor
		wantsToTick: true;
		onTickDo: [ :delta |
			transformVector:= WDCCore generateTransformVectorWithKeyboard: keys.
			actor position: actor position + (actor orientation transformVector3: transformVector * 0.01)
		].
		
	^actor
]

{ #category : #mouseAndKeyboard }
WDCCameraActorTemplates class >> mouseAndKeyboardCameraActorForDemo [

	| actor cameraAngles cameraOrientationFunction keys transformVector |
	actor := WDGFActor new
		addComponent: (WDGFActorSceneComponent new
			position: (Vector3 x: -4.6891722116842365 y: 7.070174675992387 z: 7.007962061708952);
			orientation: (Quaternion x: -0.2319594877976842 y: -0.27557887516301277 z: -0.06870953057016405 w: 0.930338691011694);
			addChildSceneComponent: (WDGFCameraComponent new isActive: true; yourself);
			yourself);
		addComponent: WDGFInputListenerComponent new;
		yourself.

	cameraAngles := Vector3 zeros.
	cameraOrientationFunction := [ (Quaternion yRotation: cameraAngles y) * (Quaternion xRotation: cameraAngles x) ].
	keys := Dictionary new.
	transformVector := Vector3 new.
	
	actor
		onMouseMoveEventDo: [ :event |
			| delta |
			delta := event delta.

			event buttons leftButton ifTrue: [ 
				cameraAngles := cameraAngles + (Vector3 x: delta y negated degreesToRadians y: delta x negated degreesToRadians z: 0.0).
				actor orientation: cameraOrientationFunction value.
			].

			event buttons rightButton ifTrue: [ 
				actor position: actor position + (actor orientation transformVector3: (Vector3 x: delta x negated y: delta y z: 0.0) * 0.001).
			].
		];
	
		onKeyDownEventDo: [ :event | | assoc keyName |
			keyName := event symbol name.
			assoc := keyName->true.
			
			"We check the necessity to put:"
			keys 
				at: keyName 
				ifPresent: [ :i | 
					i ifFalse: [ 
						keys at: keyName put: true.].]
				ifAbsent: [ 
					keys at: keyName put: true.].
		];
	
		onKeyUpEventDo: [ :event | | keyName |
			keyName := event symbol name.
			
			keys at: keyName put: false.
		].
	
	actor
		wantsToTick: true;
		onTickDo: [ :delta |
			transformVector:= WDCCore generateTransformVectorWithKeyboard: keys.
			actor position: actor position + (actor orientation transformVector3: transformVector * 0.01)
		].
		
	^actor
]

{ #category : #mouseAndKeyboard }
WDCCameraActorTemplates class >> mouseAndKeyboardCameraActorForDemoInVR [
	| actor cameraAngles cameraOrientationFunction keys transformVector |
	
	actor := WDGFActor new
		addComponent: (WDGFActorSceneComponent new
			position: (Vector3 x: 0 y: 3 z: 0);
			orientation: (Quaternion x: 0 y: 0 z: 0 w: 0);
			addChildSceneComponent: (WDGFCameraComponent new isActive: true; yourself);
			yourself);
		addComponent: WDGFInputListenerComponent new;
		yourself.

	cameraAngles := Vector3 zeros.
	cameraOrientationFunction := [ (Quaternion yRotation: cameraAngles y) * (Quaternion xRotation: cameraAngles x) ].
	keys := Dictionary new.
	transformVector := Vector3 new.
	
	actor
		onMouseMoveEventDo: [ :event |
			| delta |
			delta := event delta.

			event buttons leftButton ifTrue: [ 
				cameraAngles := cameraAngles + (Vector3 x: delta y negated degreesToRadians y: delta x negated degreesToRadians z: 0.0).
				actor orientation: cameraOrientationFunction value.
			].

			event buttons rightButton ifTrue: [ 
				actor position: actor position + (actor orientation transformVector3: (Vector3 x: delta x negated y: delta y z: 0.0) * 0.001).
			].
		];
	
		onKeyDownEventDo: [ :event | | assoc keyName |
			keyName := event symbol name.
			assoc := keyName->true.
			
			"We check the necessity to put:"
			keys 
				at: keyName 
				ifPresent: [ :i | 
					i ifFalse: [ 
						keys at: keyName put: true.].]
				ifAbsent: [ 
					keys at: keyName put: true.].
		];
	
		onKeyUpEventDo: [ :event | | keyName |
			keyName := event symbol name.
			
			keys at: keyName put: false.
		].
	
	actor
		wantsToTick: true;
		onTickDo: [ :delta |
			transformVector:= WDCCore generateTransformVectorWithKeyboard: keys.
			actor position: actor position + (actor orientation transformVector3: transformVector * 0.01)
		].
		
	^actor
]

{ #category : #'see class side' }
WDCCameraActorTemplates >> seeClassSide [
]
