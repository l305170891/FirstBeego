package index

import (

    "FirstBeego/controllers"
    "FirstBeego/models/accounts"
)

type LoginController struct {
    controllers.BaseController
}

func (c *LoginController) Get() {
    c.TplName = "index/login.tpl"
}

func (c *LoginController) Post()  {
    accountName:=c.GetString("account")
    password:=c.GetString("password")

    //sha1加密
    mAccount := accounts.Account{}
    account, err := mAccount.GetAccountBy(accountName)
    if err!=nil {
        c.JsonResult(-1, "错误", "")
    }

    //判断密码是否正确
    if accountName == account.Account && password==account.Password{
        c.SetSession("username", account.Username)
        c.SetSession("account", account.Account)
        c.setResource(account.Uuid)

        c.JsonResult(0, "登陆成功", "/home")
    }else{
        c.JsonResult(-1, "账号或密码错误", "")
    }
}

//将资源保存到session
func (c *LoginController) setResource(accountId string)  {

    //获取资源
    mResource := accounts.Resource{}
    resources,mun, err :=mResource.GetResourceByAccountId(accountId)
    if err == nil && mun > 0 {
        c.SetSession("resources", resources)
    }else{
        c.SetSession("resources", []accounts.Resource{})
    }

}

func (c *LoginController) Logout(){
    c.DestroySession()
    c.RedirectLoginPage()
}

