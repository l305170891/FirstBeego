package customers

import (
    "FirstBeego/models/common"
    "github.com/astaxie/beego/orm"
)

type Customer struct {
    common.BaseModel
    Name    string
    Phone   string
    Address string
    Ext     string
    Gender  int
}

func init() {
    orm.RegisterModel(new(Customer))
}

func (this *Customer) GetCustomerById(uuid string) (Customer, error) {
    o := this.GetOrm()

    var customer Customer
    sql := "select * from customer where uuid=?"
    err := o.Raw(sql, uuid).QueryRow(&customer)

    return customer, err
}

func (this *Customer) Insert(customer Customer) bool {
    o := this.GetOrm()

    if _, err := o.Insert(&customer); err == nil {
        return true
    }

    return false

}

func (this *Customer) Update(uuid string, customer Customer) bool {
    o := this.GetOrm()
    customer.Uuid = uuid

    if _, err := o.Update(&customer); err == nil {
        return true
    }

    return false

}
