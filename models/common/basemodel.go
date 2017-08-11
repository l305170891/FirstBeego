package common

type BaseModel struct {
    Uuid string `orm:"pk"`
    CreateDate int
    UpdateDate int
    Enable int
}


