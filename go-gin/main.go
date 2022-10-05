package main

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"net/http"
)

const port = "3005"

func getHelloHandle(c *gin.Context) {
	response := map[string]string{"result": fmt.Sprintf("Hello world")}

	c.JSON(http.StatusOK, response)
}

func main() {
	r := gin.Default()
	r.GET("", getHelloHandle)
	err := r.Run(":" + port)
	if err != nil {
		return
	}
}
