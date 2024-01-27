"
I am the main entrypoint to a prevalent system.

I keep a log of of all changes applied to the system and contain all the 
entities. 

Entities are kept in a dictionry keyed by the entity class. Subclasses may decide
what type of container is suitable for each entity type.

All entity access within events must be done through me. Events also must not 
contain any randomness (like creating UUIDs). In case of a system crash, the log
is replayed and the events must produce the same outcome every time.
This means events must have all information in their instance variables and only use
the time provided by the system.

"
Class {
	#name : #PrSystem,
	#superclass : #Object,
	#instVars : [
		'nextId',
		'mutex',
		'db'
	],
	#category : #'Prevalence-Core'
}

{ #category : #initialization }
PrSystem >> initialize [
	nextId := 0.
	mutex := Mutex new.
	db := PrUninitializedDb new.
]

{ #category : #building }
PrSystem >> logEvent: aPrEvent [ 
	self subclassResponsibility 
]

{ #category : #visiting }
PrSystem >> process: aPrEvent [
	"Process a PrEvent."
	mutex critical: [ 
		aPrEvent id: nextId; ts: DateAndTime now.
		nextId := nextId + 1.
		self logEvent: aPrEvent.
		aPrEvent process: db
	].
]

{ #category : #accessing }
PrSystem >> query: aBlock [
	"Run a query that does not modify the data."
	mutex critical: [ 
	 ^ aBlock value: db 
	]
]
