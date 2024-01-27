# pharo-Prevalence
Another object prevalence system for Pharo.

I implement an object prevalence system that stores objects in memory and logs transactions to file.

Data is changed by calling `process:` with an event (any `PrEvent` subclass) and queried by calling
`query:` with a block.

All changes and queries are handled serially with a mutex. All changes are persisted to disk before 
being applied.

Load:
```
```smalltalk
 Metacello new
   repository: 'github://tatut/pharo-Prevalence/src';
   baseline: 'Prevalence';
   load.
```

