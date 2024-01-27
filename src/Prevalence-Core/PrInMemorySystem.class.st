"
I am a prevayler system for in-memory only! Any events you process with me will be lost once I am garbage collected.

Mainly for testing purposes.
"
Class {
	#name : #PrInMemorySystem,
	#superclass : #PrSystem,
	#category : #'Prevalence-Core'
}

{ #category : #building }
PrInMemorySystem >> logEvent: event [ 
 "Do nothing. In-memory events are not logged."
]
