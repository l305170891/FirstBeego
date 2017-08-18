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
    GroupId       string `orm:"column(groupId)"`
    EmployeeCode  string `orm:"column(employeeCode)"`
    Phone         string
    AvatarUrl     string `orm:"column(avatarUrl)"`
    Theme         int
    LastLoginDate int    `orm:"column(lastLoginDate)"`
    LastLoginIp   string `orm:"column(lastLoginIp)"`
}

func init() {
    orm.RegisterModel(new(Account))
}

func (this *Account) GetAccountBy(act string) (Account, error) {
    o := this.GetOrm()

    var account Account
    sql := "select * from account where account=?"
    err := o.Raw(sql, act).QueryRow(&account)

    return account, err
}

func (this *Account) UpdatePwd(uuid string, password string) bool {
    o := this.GetOrm()
    var account Account
    account.Uuid = uuid

    if o.Read(&account) == nil {
        account.Password = password
        if _, err := o.Update(&account); err == nil {
            return true
        }
    }

    return false

}
