package main

import (
	"encoding/json"
	"fmt"
	"log"

	"github.com/valyala/fasthttp"
)

var (
	port               = "3008"
	strContentType     = []byte("Content-Type")
	strApplicationJSON = []byte("application/json")
	httpClient         *fasthttp.Client
)

func requestHandler(ctx *fasthttp.RequestCtx) {
	if string(ctx.Method()) == "GET" {
		ctx.Response.Header.SetCanonical(strContentType, strApplicationJSON)
		ctx.Response.SetStatusCode(200)

		response := map[string]string{"result": fmt.Sprintf("hello world")}
		if err := json.NewEncoder(ctx).Encode(response); err != nil {
			log.Fatal(err)
		}
	}
}

func main() {
	fmt.Printf("HTTP interface listen port: %s\n", port)
	h := requestHandler
	h = fasthttp.CompressHandler(h)
	httpClient = &fasthttp.Client{
		MaxConnsPerHost: 2048,
	}
	if err := fasthttp.ListenAndServe(":"+port, h); err != nil {
		log.Fatalf("Error in ListenAndServe: %s", err)
	}
}
