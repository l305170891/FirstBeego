package routers

import (
	"FirstBeego/controllers"
	"FirstBeego/controllers/index"
	"github.com/astaxie/beego"
)

func init() {
	//test
    beego.Router("/", &controllers.MainController{}, "get:Index")

	//login
	beego.Router("/login", &index.LoginController{})

	//home
	beego.Router("/home", &index.HomeController{})
}
