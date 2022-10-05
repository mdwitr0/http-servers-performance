run-ts-bun:
	cd ./ts-bun && bun serve

ab-ts-bun:
	ab -n 10000 -c 100 http://localhost:3007/


run-go-fasthttp:
	cd ./go-fasthttp && go run main.go

ab-go-fasthttp:
	ab -n 10000 -c 100 http://localhost:3008/


run-js-node:
	cd ./js-node && bun serve

ab-js-node:
	ab -n 10000 -c 100 http://localhost:3010/

run-go-gin:
	cd ./go-gin && go run main.go

ab-go-gin:
	ab -n 10000 -c 100 http://localhost:3005/



run-go-ts-nest:
	cd ./ts-nest && npm run build && npm run start:prod

ab-go-ts-nest:
	ab -n 10000 -c 100 http://localhost:3006/


run-ts-bunrest:
	cd ./ts-bunrest && bun serve

ab-ts-bunrest:
	ab -n 100 -c 100 http://localhost:3009/
