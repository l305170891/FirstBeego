package account

import "FirstBeego/models/common"

type Account struct {
    common.BaseModel
    Username string
    Password string
}


