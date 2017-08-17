package customer

import (
    "FirstBeego/controllers"
)

type CustomerController struct {
    controllers.BaseController
}

func (c *CustomerController) Get() {
    c.Show("customer/list.tpl")
}


