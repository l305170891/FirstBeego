package index

import (
    "FirstBeego/controllers"
)

type DefaultController struct {
    controllers.BaseController
}

func (c *DefaultController) Get() {

    login := c.CheckLogin()

    if login{
        c.RedirectLoginPage()
    }else{
        c.RedirectDefaultPage()
    }
}
