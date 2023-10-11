"
I contain examples for the ""ControlsForWoden"" package.
"
Class {
	#name : #WDCExamples,
	#superclass : #Object,
	#category : #'WodenControls-Examples'
}

{ #category : #examples }
WDCExamples class >> exampleCubeAndLightActor [
	| cubeMesh cubeActor lightSourceActor world currentTime |
	world := WDGFWorld new.

	cubeMesh := WDMeshBuilder new
		addCubeWithWidth: 1.0 height: 1.0 depth: 1.0;
		mesh.

	cubeActor := WDGFActor new.
	cubeActor addComponent: (WDGFActorMeshSceneComponent with: cubeMesh).
	world spawnActor: cubeActor.
	
	currentTime := 0.
	cubeActor
		wantsToTick: true;
		onTickDo: [ :delta |
			cubeActor position: (Vector3 x: 0 y: 0 z: 0).
			currentTime := currentTime + delta
		].

	lightSourceActor := WDGFActor new.
	lightSourceActor addComponent: (WDGFActorLightSourceSceneComponent with: (WDPointLightSource new
			color: (Vector3 x: 0.8 y: 0.8 z: 0.2);
			intensity: 5.0;
			influenceRadius: 4.0;
			yourself)).
	lightSourceActor position: (Vector3 x: 0 y: 1.5 z: 2).
	world spawnActor: lightSourceActor.
	world spawnActor: WDCCameraActorTemplates mouseAndKeyboardCameraActor.

	world playInOSWindow
]

{ #category : #'see class side' }
WDCExamples >> seeClassSide [
]
