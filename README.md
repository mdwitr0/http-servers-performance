# Http server performance banchmarks

## Тесты чистой реализации rest api

### JS(TS) [bun.sh](https://github.com/oven-sh/bun)
```
Server Software:        
Server Hostname:        localhost
Server Port:            3007

Document Path:          /
Document Length:        24 bytes

Concurrency Level:      100
Time taken for tests:   0.279 seconds
Complete requests:      10000
Failed requests:        0
Total transferred:      1090000 bytes
HTML transferred:       240000 bytes
Requests per second:    35843.19 [#/sec] (mean)
Time per request:       2.790 [ms] (mean)
Time per request:       0.028 [ms] (mean, across all concurrent requests)
Transfer rate:          3815.34 [Kbytes/sec] received
```

### Go [fasthttp](https://github.com/valyala/fasthttp)
```
Server Software:        fasthttp
Server Hostname:        localhost
Server Port:            3008

Document Path:          /
Document Length:        25 bytes

Concurrency Level:      100
Time taken for tests:   0.328 seconds
Complete requests:      10000
Failed requests:        0
Total transferred:      1700000 bytes
HTML transferred:       250000 bytes
Requests per second:    30498.68 [#/sec] (mean)
Time per request:       3.279 [ms] (mean)
Time per request:       0.033 [ms] (mean, across all concurrent requests)
Transfer rate:          5063.26 [Kbytes/sec] received
```

## Тесты фреймворков для rest api
### JS(TS) [nestjs](https://github.com/nestjs/nest)
```
Server Software:        
Server Hostname:        localhost
Server Port:            3006

Document Path:          /
Document Length:        11 bytes

Concurrency Level:      100
Time taken for tests:   0.824 seconds
Complete requests:      10000
Failed requests:        0
Total transferred:      2100000 bytes
HTML transferred:       110000 bytes
Requests per second:    12134.92 [#/sec] (mean)
Time per request:       8.241 [ms] (mean)
Time per request:       0.082 [ms] (mean, across all concurrent requests)
Transfer rate:          2488.61 [Kbytes/sec] received
```

### Go [gin](https://github.com/gin-gonic/gin)
```
Server Software:        
Server Hostname:        localhost
Server Port:            3005

Document Path:          /
Document Length:        24 bytes

Concurrency Level:      100
Time taken for tests:   1.054 seconds
Complete requests:      10000
Failed requests:        0
Total transferred:      1470000 bytes
HTML transferred:       240000 bytes
Requests per second:    9489.02 [#/sec] (mean)
Time per request:       10.538 [ms] (mean)
Time per request:       0.105 [ms] (mean, across all concurrent requests)
Transfer rate:          1362.19 [Kbytes/sec] received
```

### JS(TS) [bunrest](https://github.com/lau1944/bunrest)
Пока не понимаю почему он такой медленный, использует Bun, а работает медленней всех
```
Server Software:        
Server Hostname:        localhost
Server Port:            3009

Document Path:          /
Document Length:        24 bytes

Concurrency Level:      100
Time taken for tests:   9.991 seconds
Complete requests:      100
Failed requests:        0
Total transferred:      10900 bytes
HTML transferred:       2400 bytes
Requests per second:    10.01 [#/sec] (mean)
Time per request:       9991.422 [ms] (mean)
Time per request:       99.914 [ms] (mean, across all concurrent requests)
Transfer rate:          1.07 [Kbytes/sec] received
```