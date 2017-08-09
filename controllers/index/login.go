package index

import (
    "github.com/astaxie/beego"
    "FirstBeego/models/common"
)

type LoginController struct {
    beego.Controller
}

func (c *LoginController) Get() {
    c.Data["xsrf_token"] = c.XSRFToken()
    c.TplName = "index/login.tpl"
}

func (c *LoginController) Post()  {
    username:=c.GetString("username")
    password:=c.GetString("password")
    ret:=common.AjaxReturn{}

    if username == "admin" && password=="123456"{
        c.SetSession("username", username)

        ret.Code = 0
        ret.Data = "/home"
        ret.Msg ="登陆成功"

    }else{
        ret.Code = -1
        ret.Msg ="账号或密码错误"
    }

    c.Data["json"] = &ret
    c.ServeJSON()

}

