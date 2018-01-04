package main

import (
	"log"
	"net/http"
	"westy/conf"
	"westy/routes"
)

func main() {
	router := conf.NewRouter(routes.AllRoutes())
	log.Fatal(http.ListenAndServe(":8080", router))
}
