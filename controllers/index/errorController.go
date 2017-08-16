package index

import (
	"FirstBeego/controllers"
)

type ErrorController struct {
	controllers.BaseController
}

func (c *ErrorController) Error404() {
	c.Data["content"] = "page not found"
	c.TplName = "error/404.tpl"
}

