package report

import (
    "FirstBeego/controllers"
)

type ReportController struct {
    controllers.BaseController
}

func (c *ReportController) Get() {
    c.Show("report/report.tpl")
}


