accessing
query: aBlock
	"Run a query that does not modify the data."
	mutex critical: [ 
	 ^ aBlock value: db 
	]