package controllers

import (
	"github.com/astaxie/beego"
	"FirstBeego/models/common"
)

const (
	SUCCESS = "success"
)

type BaseController struct {
	beego.Controller
	ControllerName string          // 控制器名
	ActionName     string          // 动作名
}

/*
登陆鉴权等操作，
测试开发的时候可以注释这个方法，方便测试
*/
func (this *BaseController) Prepare() {

	//获取请求方法名称
	controllerName, actionName := this.GetControllerAndAction()
	this.ControllerName = controllerName
	this.ActionName = actionName

	//data
	this.Data["username"] = this.GetSession("username")
	this.Data["account"] = this.GetSession("account")

	beego.Informational(this.Ctx.Request.RemoteAddr, this.Ctx.Request.RequestURI, this.Ctx.Request.Form)

}

/*
指定页面，并且返回公共参数
*/
func (this *BaseController) Show(url string) {
	this.Data["resources"] = this.GetSession("resources")
	this.TplName = url
}

/**
把需要返回的结构序列化成json 输出
*/
func (this *BaseController) JsonResult(code int, msg string, data interface{}) {

	response:=common.CrmResponse{}
	response.Code = code
	response.Msg = msg
	response.Data = data

	this.Data["json"] = &response
	this.ServeJSON()
}


func (this *BaseController) CheckLogin() bool {

	login := false
	username := this.GetSession("username")
	//如果 username != nil 说明已经登录
	if username !=nil {
		login = true
	}

	if login{
		return true
	}else{
		return false
	}
}

func (this *BaseController) RedirectLoginPage(){
	this.Redirect("/login", 302)
}

func (this *BaseController) RedirectDefaultPage(){
	this.Redirect("/home", 302)
}

