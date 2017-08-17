package setting

import (
    "FirstBeego/controllers"
)

type SettingController struct {
    controllers.BaseController
}

func (c *SettingController) Get() {
    c.Show("setting/setting.tpl")
}


