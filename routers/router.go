package routers

import (
	"FirstBeego/controllers"
	"github.com/astaxie/beego"
)

func init() {
    //beego.Router("/", &controllers.MainController{}, "get:Index")
	beego.Include( &controllers.MainController{})
}
