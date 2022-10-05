run-ts-bun:
	cd ./ts-bun && bun serve

ab-ts-bun:
	ab -n 10000 -c 100 http://localhost:3007/


run-go-fasthttp:
	cd ./go-fasthttp && go run main.go

ab-go-fasthttp:
	ab -n 10000 -c 100 http://localhost:3008/


run-go-gin:
	cd ./go-gin && go run main.go

ab-go-gin:
	ab -n 10000 -c 100 http://localhost:3005/



run-go-ts-nest:
	cd ./ts-nest && npm run build && npm run start:prod

ab-go-ts-nest:
	ab -n 10000 -c 100 http://localhost:3006/
