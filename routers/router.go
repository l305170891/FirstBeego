package routers

import (
	"FirstBeego/controllers/index"
	"github.com/astaxie/beego"
	"FirstBeego/controllers/customer"
	"FirstBeego/controllers/report"
	"FirstBeego/controllers/setting"
)

func init() {
	//default
    beego.Router("/", &index.DefaultController{})

	//login logout
	beego.Router("/login", &index.LoginController{})
	beego.Router("/logout", &index.LoginController{}, "*:Logout")

	//home
	beego.Router("/home", &index.HomeController{})

	//customer
	beego.Router("/customer", &customer.CustomerController{})


	//report
	beego.Router("/report", &report.ReportController{})


	//setting
	beego.Router("/setting", &setting.SettingController{})

}
