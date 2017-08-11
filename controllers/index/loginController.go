package index

import (
    "crypto/sha1"
    "encoding/hex"
    "FirstBeego/controllers"
)

type LoginController struct {
    controllers.BaseController
}

func (c *LoginController) Get() {
    c.TplName = "index/login.tpl"
}

func (c *LoginController) Post()  {
    username:=c.GetString("username")
    password:=c.GetString("password")

    //sha1加密

    r := sha1.Sum([]byte("123456"))
    pwd := hex.EncodeToString(r[:])


    if username == "admin" && password==pwd{
        c.SetSession("username", username)
        c.JsonResult(0, "登陆成功", "/home")
    }else{
        c.JsonResult(-1, "账号或密码错误", "/login")
    }
}

func (c *LoginController) Logout(){
    c.DestroySession()
    c.RedirectLoginPage()
}

