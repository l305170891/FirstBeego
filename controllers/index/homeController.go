package index

import (
    "FirstBeego/controllers"
    "FirstBeego/models/accounts"
)

type HomeController struct {
    controllers.BaseController
}

func (c *HomeController) Get() {
    c.Show("index/home.tpl")
}

func (c *HomeController) ChangePwd() {
    c.Show("index/changePwd.tpl")
}

func (c *HomeController) PostChangePwd() {
    originalPassword := c.GetString("originalPassword")
    newPassword := c.GetString("newPassword")
    accountName :=c.GetSession("account").(string)

    mAccount := accounts.Account{}
    account, err := mAccount.GetAccountBy(accountName)
    if err!=nil {
        c.JsonResult(-1, "错误", "")
        return
    }

    if originalPassword != account.Password{
        c.JsonResult(-1, "原始密码错误", "")
        return
    }

    succ := mAccount.UpdatePwd(account.Uuid , newPassword)

    if succ {
        c.JsonResult(0, "修改成功", "")
        return
    }else{
        c.JsonResult(-1, "修改失败", "")
        return
    }
}
