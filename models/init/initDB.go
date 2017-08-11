package init

import (
    "github.com/astaxie/beego"
    "github.com/astaxie/beego/orm"
    _ "github.com/go-sql-driver/mysql"
)


func init() {
    beego.Info("init orm start...")

    dbType := beego.AppConfig.String("db_type")
    dsn := generateDSN()
    orm.RegisterDataBase("default", dbType, dsn)

    //如果是dev环境，打开sql调试
    if beego.AppConfig.String("runmode") == "dev" {
        orm.Debug = true
    }

    beego.Info("init orm end.")
}

func generateDSN() string {
    dbHost := beego.AppConfig.String("db_host")
    dbPort := beego.AppConfig.String("db_port")
    dbUser := beego.AppConfig.String("db_user")
    dbPassword := beego.AppConfig.String("db_pass")
    dbName := beego.AppConfig.String("db_name")

    //beego.Debug(dbHost, dbPort, dbUser, dbPassword, dbName, dbType)
    // root:@tcp(127.0.0.1:3306)/test?charset=utf8
    dsn := dbUser + ":" + dbPassword + "@tcp(" + dbHost + ":" + dbPort + ")/" + dbName + "?charset=utf8"
    return dsn
}
