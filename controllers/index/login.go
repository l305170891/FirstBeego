package index

import (
    "github.com/astaxie/beego"
    "FirstBeego/models/common"
    "crypto/sha1"
    "encoding/hex"
)

type LoginController struct {
    beego.Controller
}

func (c *LoginController) Get() {
    c.TplName = "index/login.tpl"
}

func (c *LoginController) Post()  {
    username:=c.GetString("username")
    password:=c.GetString("password")
    ret:=common.AjaxReturn{}


    //sha1加密
    r := sha1.Sum([]byte("123456"))
    pwd := hex.EncodeToString(r[:])


    if username == "admin" && password==pwd{
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

