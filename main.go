package main

import (
	_ "FirstBeego/routers"
	_ "FirstBeego/models/init"
	"github.com/astaxie/beego"
)

func main() {
	beego.Run()
}

