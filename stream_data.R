library(IBrokers)

### run the following in 3 separate R processes

## pull futures
con1 <- twsConnect(1)

future <- twsFuture(symbol = "CL", exch = "NYMEX", expiry = "201912")
reqMktData(con1, future, file='future.dat')


## pull call option
con2 <- twsConnect(2)

call <- twsFOP(symbol='CL',exch='NYMEX',expiry='20191115', right = 'C', strike = '53', multiplier = '1000') # LOZ9 C5300
reqMktData(con2, call, file='call.dat')


## pull put option
con3 <- twsConnect(3)

put <- twsFOP(symbol='CL',exch='NYMEX',expiry='20191115', right = 'P', strike = '53', multiplier = '1000') # LOZ9 P5300
reqMktData(con3, put, file='put.dat')
