package customer

import (
    "FirstBeego/controllers"
    "FirstBeego/models/customers"
    "time"
)

type CustomerController struct {
    controllers.BaseController
}

func (c *CustomerController) Get() {
    c.Show("customer/list.tpl")
}

func (c *CustomerController) AddCustomer() {
    c.Show("customer/add.tpl")
}

func (c *CustomerController) AjaxAddCustomer() {
    phone := c.GetString("phone")
    addr := c.GetString("addr")
    ext := c.GetString("ext")
    name := c.GetString("name")

    var customer customers.Customer
    customer.Uuid = customer.GetUuid()
    customer.CreateDate = time.Now().Unix()
    customer.Name = name
    customer.Phone = phone
    customer.Address = addr
    customer.Ext = ext
    customer.Enable = 1

    flag := customer.Insert(customer)

    if flag {
        c.JsonResult(0, "成功", "")
    }else{
        c.JsonResult(-1, "失败", "")
    }

}
