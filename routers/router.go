package routers

import (
	"FirstBeego/controllers/index"
	"github.com/astaxie/beego"
)

func init() {
	//default
    beego.Router("/", &index.DefaultController{})

	//login logout
	beego.Router("/login", &index.LoginController{})
	beego.Router("/logout", &index.LoginController{}, "*:Logout")

	//home
	beego.Router("/home", &index.HomeController{})
}
