package index

import (
    "github.com/astaxie/beego"
)

type DefaultController struct {
    beego.Controller
}

func (c *DefaultController) Get() {

    login := false
    username := c.GetSession("username")
    //如果 username != nil 说明已经登录
    if username !=nil {
        login = true
    }

    if login{
        c.Redirect("/home", 302)
    }else{
        c.Redirect("/login", 302)
    }
}
