Bun.serve({
    fetch(req) {
        return Response.json({result: "Hello world"});
    },
});