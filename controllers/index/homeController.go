package index

import (
    "FirstBeego/controllers"
)

type HomeController struct {
    controllers.BaseController
}

func (c *HomeController) Get() {
    c.Show("index/home.tpl")
}


