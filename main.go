package main

import (
	_ "FirstBeego/routers"
	_ "FirstBeego/models/init"
	"github.com/astaxie/beego"
	"FirstBeego/controllers/index"
)

func main() {
	beego.ErrorController(&index.ErrorController{})
	beego.Run()
}

