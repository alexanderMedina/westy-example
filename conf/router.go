package conf

import (
	"westy/routes"

	"github.com/julienschmidt/httprouter"
)

//NewRouter : Reads from the routes slice to translate the values to httprouter.Handle
func NewRouter(routes.Routes) *httprouter.Router {

	router := httprouter.New()
	for _, route := range routes.AllRoutes() {
		var handle httprouter.Handle
		handle = route.HandlerFunc
		handle = Logger(handle)

		router.Handle(route.Method, route.Path, handle)
	}

	return router
}
