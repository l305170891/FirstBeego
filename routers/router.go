package routers

import (
	"FirstBeego/controllers/index"
	"github.com/astaxie/beego"
)

func init() {
	//default
    beego.Router("/", &index.DefaultController{})

	//login
	beego.Router("/login", &index.LoginController{})

	//home
	beego.Router("/home", &index.HomeController{})
}
