package common

import "github.com/astaxie/beego/orm"

type BaseModel struct {
    Uuid string `orm:"pk"`
    CreateDate int
    UpdateDate int
    Enable int
}

func (this *BaseModel) GetOrm() orm.Ormer{
    return orm.NewOrm()
}


