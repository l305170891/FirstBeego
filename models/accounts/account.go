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
