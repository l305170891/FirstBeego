package index

import (
    "github.com/astaxie/beego"
)

type HomeController struct {
    beego.Controller
}

func (c *HomeController) Get() {
    c.Data["xsrfdata"]=c.XSRFFormHTML()
    c.TplName = "index/home.tpl"
}


