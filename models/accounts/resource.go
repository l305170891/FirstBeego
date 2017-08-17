package accounts

import (
    "FirstBeego/models/common"
    "github.com/astaxie/beego/orm"
)

type Resource struct {
    common.BaseModel
    Serial       int
    Pid          string
    Name         string
    ResourcePath string `orm:"column(resourcePath)"`
}

func init()  {
    orm.RegisterModel(new(Resource))
}

func (this *Resource) GetResourceByAccountId(accountId string) ([]Resource , int64, error ){
    o := this.GetOrm()

    var resources []Resource
    sql := "select distinct res.* from account_role ar "
    sql += "inner join role r on r.uuid=ar.roleId "
    sql += "inner join role_resource rr on rr.roleId=r.uuid "
    sql += "inner join resource res on res.uuid=rr.resourceId "
    sql += "where r.`enable`=1 "
    sql += "and res.`enable`=1 "
    sql += "and ar.accountId=? "
    num,err := o.Raw(sql, accountId).QueryRows(&resources)

    return resources, num, err
}
