run-ts-bun:
	cd ./ts-bun && bun serve

test-ts-bun:
	wrk -t10 -c400 -d30s  http://localhost:3007/


run-go-fasthttp:
	cd ./go-fasthttp && go run main.go

test-go-fasthttp:
	wrk -t10 -c400 -d30s http://localhost:3008/


run-js-node:
	cd ./js-node && nvm use 18 && npm run serve

test-js-node:
	wrk -t10 -c400 -d30s http://localhost:3010/


run-go-gin:
	cd ./go-gin && go run main.go

test-go-gin:
	wrk -t10 -c400 -d30s http://localhost:3005/


run-go-ts-nest:
	cd ./ts-nest && npm run build && npm run start:prod

test-go-ts-nest:
	wrk -t10 -c400 -d30s http://localhost:3006/


run-ts-bunrest:
	cd ./ts-bunrest && bun serve

test-ts-bunrest:
	wrk -t10 -c400 -d30s http://localhost:3009/
