package index

import (
    "FirstBeego/controllers"
)

type DefaultController struct {
    controllers.BaseController
}

func (c *DefaultController) Get() {

    if c.CheckLogin(){
        c.RedirectLoginPage()
    }else{
        c.RedirectDefaultPage()
    }
}
