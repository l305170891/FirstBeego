package init

import (
    "github.com/astaxie/beego"
)

func init() {
    beego.SetLogger("file", `{"filename":"logs/beego.log","daily":true,"maxdays":10}`)
    beego.SetLevel(beego.LevelInformational)
}
