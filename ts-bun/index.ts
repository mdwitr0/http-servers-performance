const PORT = 3007;

Bun.serve({
    fetch(req) {
        return Response.json({result: "Hello world"});
    },
    port: PORT,
});