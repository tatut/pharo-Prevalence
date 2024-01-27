accessing
start
	self assert: [ logDir exists & logDir isDirectory ].
	"load from Fuel snapshot 
	 and load them:   self becomeForward: loadedSnapshot
	replay logs here? ofr image based persistence, check
	logDir files"
	logWriter := (logDir / 'pr_', nextId asString, '.log') writeStream