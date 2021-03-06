<!DOCTYPE html>

<html>
<head>
    <title>登陆</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <script src="/static/js/jquery-2.1.4.min.js"></script>
    <script src="/static/js/sha1.js"></script>
</head>

<body>
<header>
    <h1 class="logo">客户关系管理系统</h1>
</header>

<div class="author">
    <div id="form">

        username:
        <input name="account" type="text" value="admin"/>

        <br/><br/>

        password:
        <input name="password" type="password" value="123456"/>

        <br/><br/>

        <button id="submit">登录</button>
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#submit").click(function () {
                var account = $("#form").find("input[name=account]").val();
                var password = $("#form").find("input[name=password]").val();

                if(account == "" || password=="" ){
                    alert("账号和密码不能为空");
                    return false;
                }

                var params = {
                    account: account,
                    password: sha1(password)
                };

                console.log(params);

                $.ajax({
                    url: "/login",
                    type: "post",
                    datatype: "json",
                    data: params,
                    success: function (data) {
                        if(data.Code == 0){
                            location.href = data.Data
                        }else{
                            alert(data.Msg);
                        }

                    }
                });

            });
        });
    </script>
</div>


</body>
</html>
