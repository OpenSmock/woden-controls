"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestWodenControls,
	#superclass : #PackageManifest,
	#category : #'WodenControls-Manifest'
}

{ #category : #'code-critics' }
ManifestWodenControls class >> ruleLongMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGPackageDefinition #(#'HeloVis-ControlsForWoden')) #'2023-04-20T10:21:37.4+02:00') )
]
