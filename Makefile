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


run-ts-nest:
	cd ./ts-nest && npm run build && npm run start:prod

test-ts-nest:
	wrk -t10 -c400 -d30s http://localhost:3006/

run-ts-nest-fastify:
	cd ./ts-nest-fastify && npm run build && npm run start:prod

test-ts-nest-fastify:
	wrk -t10 -c400 -d30s http://localhost:3017/

run-ts-bunrest:
	cd ./ts-bunrest && bun serve

test-ts-bunrest:
	wrk -t10 -c400 -d30s http://localhost:3009/

run-rs-rocket:
	cd ./rs-rocket && cargo run

test-rs-rocket:
	wrk -t10 -c400 -d30s  http://127.0.0.1:3012/

run-rs-actix:
	cd ./rs-actix && cargo run

test-rs-actix:
	wrk -t10 -c400 -d30s  http://127.0.0.1:3013/

run-rs-hyper:
	cd ./rs-hyper && cargo run

test-rs-hyper:
	wrk -t10 -c400 -d30s  http://127.0.0.1:3014/

run-clj-luminus:
	cd ./clj-luminus && lein run

test-clj-luminus:
	wrk -t10 -c400 -d30s  http://127.0.0.1:3015/

run-py-flask:
	cd ./py-flask && flask run

test-py-flask:
	wrk -t10 -c400 -d30s  http://localhost:5000/

run-kt-ktor:
	cd ./kt-ktor && gradle run

test-kt-ktor:
	wrk -t10 -c400 -d30s  http://localhost:3016/

run-cs-dotnet-core:
	dotnet ./cs-dotnet-core/WebApplication1/bin/Debug/net6.0/WebApplication1.dll

test-cs-dotnet-core:
	wrk -t10 -c400 -d30s  https://localhost:7289/Hello