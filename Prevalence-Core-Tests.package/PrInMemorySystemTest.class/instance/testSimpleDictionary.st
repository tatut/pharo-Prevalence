tests
testSimpleDictionary
	pr process: (PrTestInitializeDb new data: {#meaningOfLife -> 41} asDictionary).
	pr process: (PrTestIncrementKey new key: #meaningOfLife).
	self assert: (pr query: [ :d | d at: #meaningOfLife ]) equals: 42
 
	