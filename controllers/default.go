package controllers

import (
    "github.com/astaxie/beego"
)

type MainController struct {
    beego.Controller
}

func (c *MainController) Get() {
    c.Data["Website"] = "beego.me"
    c.Data["Email"] = "astaxie@gmail.com"
    c.TplName = "index.tpl"
}

// @router / [get]
func (c *MainController) Index()  {
    c.Data["Website"] = "beego.me"
    c.Data["Email"] = "luojian@qq.com"
    c.TplName = "index.tpl"
}
