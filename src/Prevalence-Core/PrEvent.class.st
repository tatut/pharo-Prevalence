"
I am the baseclass for events that modify the state of a prevalent system.

I contain a sequential id number and the current date and time (ts).
"
Class {
	#name : #PrEvent,
	#superclass : #Object,
	#instVars : [
		'id',
		'ts'
	],
	#category : #'Prevalence-Core'
}

{ #category : #accessing }
PrEvent >> id [

	^ id
]

{ #category : #accessing }
PrEvent >> id: anObject [

	id := anObject
]

{ #category : #accessing }
PrEvent >> process: aPrevayler [ 
   "Process this event on the given prevalent system."
	self subclassResponsibility 
]

{ #category : #accessing }
PrEvent >> ts [

	^ ts
]

{ #category : #accessing }
PrEvent >> ts: anObject [

	ts := anObject
]
