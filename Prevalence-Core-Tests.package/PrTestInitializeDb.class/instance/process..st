accessing
process: db 
	self assert: db class = PrUninitializedDb
		description: 'Can only initialize an uninitialized db.'.
	db becomeForward: data copy
	