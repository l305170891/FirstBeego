package routers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context"
)

func init() {
	var FilterUser = func(ctx *context.Context) {
		account := ctx.Input.Session("account")
		//login页面和error 页面不需要过滤
		if account==nil && ctx.Request.RequestURI != "/login" {
			ctx.Redirect(302, "/login")
		}
	}

	beego.InsertFilter("/*",beego.BeforeRouter,FilterUser)
}
