package main

import (
	"net/http"
	"github.com/gin-gonic/gin"
)

func main() {
	server := gin.Default()
	server.GET("/hello", func(c *gin.Context) {
		c.String(http.StatusOK, "hello world")
	})
	server.Run(":8080")
}

