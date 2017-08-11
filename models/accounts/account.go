package accounts

import (
    "FirstBeego/models/common"
    "github.com/astaxie/beego/orm"
)

type Account struct {
    common.BaseModel
    Username      string
    Account       string
    Password      string
    Salt          string
    Gender        int
    GroupId       string
    EmployeeCode  string
    Phone         string
    AvatarUrl     string
    Theme         int
    LastLoginDate int
    LastLoginIp   string
}

func init()  {
    orm.RegisterModel(new(Account))
}

func (this *Account) GetAccountBy(act string) (Account , error ){
    o := this.GetOrm()

    var account Account
    sql := "select * from account where account=?"
    err := o.Raw(sql, act).QueryRow(&account)

    return account, err
}
