"
A PrevaylerTest is a test class for testing the behavior of Prevayler
"
Class {
	#name : #PrInMemorySystemTest,
	#superclass : #TestCase,
	#instVars : [
		'pr'
	],
	#category : #'Prevalence-Core-Tests'
}

{ #category : #running }
PrInMemorySystemTest >> setUp [
	super setUp.
	pr := PrInMemorySystem new.
	
]

{ #category : #tests }
PrInMemorySystemTest >> testCreateNewPrevayler [ 
	
]

{ #category : #tests }
PrInMemorySystemTest >> testSimpleDictionary [
	pr process: (PrTestInitializeDb new data: {#meaningOfLife -> 41} asDictionary).
	pr process: (PrTestIncrementKey new key: #meaningOfLife).
	self assert: (pr query: [ :d | d at: #meaningOfLife ]) equals: 42
 
	
]
