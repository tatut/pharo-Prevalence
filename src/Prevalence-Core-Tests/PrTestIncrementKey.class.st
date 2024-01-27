Class {
	#name : #PrTestIncrementKey,
	#superclass : #PrEvent,
	#instVars : [
		'key'
	],
	#category : #'Prevalence-Core-Tests'
}

{ #category : #accessing }
PrTestIncrementKey >> key: aKey [
  key := aKey
]

{ #category : #accessing }
PrTestIncrementKey >> process: d [ 
  d at: key update: [ :v | v + 1 ] 
]
