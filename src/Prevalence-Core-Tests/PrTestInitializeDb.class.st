Class {
	#name : #PrTestInitializeDb,
	#superclass : #PrEvent,
	#instVars : [
		'data'
	],
	#category : #'Prevalence-Core-Tests'
}

{ #category : #accessing }
PrTestInitializeDb >> data: newData [ 
 data := newData
]

{ #category : #accessing }
PrTestInitializeDb >> process: db [ 
	self assert: db class = PrUninitializedDb
		description: 'Can only initialize an uninitialized db.'.
	db becomeForward: data copy
	
]
