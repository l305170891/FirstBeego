package controllers

import (
	"github.com/astaxie/beego"
	"FirstBeego/models/accounts"
)

const (
	SUCCESS = "success"
)

type BaseController struct {
	beego.Controller
	account *accounts.Account
	controllerName string          // 控制器名
	actionName     string          // 动作名
}

/*
登陆鉴权等操作，
测试开发的时候可以注释这个方法，方便测试
*/
func (this *BaseController) Prepare() {

	//获取请求方法名称
	controllerName, actionName := this.GetControllerAndAction()
	this.controllerName = controllerName
	this.actionName = actionName

}

/**
重定向
*/
func (this *BaseController) redirect(url string) {
	this.Redirect(url, 302)
	this.StopRun()
}

/*
指定页面，并且返回公共参数
*/
func (this *BaseController) show(url string) {
	this.Data["staticUrl"] = beego.AppConfig.String("staticUrl")
	this.TplName = url
}

/**
把需要返回的结构序列化成json 输出
*/
func (this *BaseController) jsonResult(result interface{}) {
	this.Data["json"] = result
	this.ServeJSON()
	this.StopRun()
}
