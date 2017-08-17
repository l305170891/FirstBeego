package common

import (
    "github.com/astaxie/beego/orm"
    "time"
)

type BaseModel struct {
    Uuid string `orm:"pk"`
    CreateDate int `orm:"column(createDate)"`
    UpdateDate int `orm:"column(updateDate)"`
    Enable int
}

func (this *BaseModel) GetOrm() orm.Ormer{
    return orm.NewOrm()
}

func (this *BaseModel) GetUuid() string{
    o := this.GetOrm()

    var base BaseModel
    sql := "select uuid() as uuid "
    err := o.Raw(sql).QueryRow(&base)

    if err != nil {
        return time.Now().String()
    }

    return base.Uuid
}


