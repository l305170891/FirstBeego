<!DOCTYPE html>

<html>
<head>
    <title>login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="_xsrf" content="{{.xsrf_token}}" />

    <script src="/static/js/jquery-2.1.4.min.js"></script>
    <script src="/static/js/sha1.js"></script>
</head>

<body>
<header>
    <h1 class="logo">管理系统</h1>
</header>

<div class="author">
    <div id="form">

        username:
        <input name="username" type="text" value="admin"/>

        <br/><br/>

        password:
        <input name="password" type="password" value="123456"/>

        <br/><br/>

        <button id="submit">登陆</button>
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#submit").click(function () {
                var username = $("#form").find("input[name=username]").val();
                var password = $("#form").find("input[name=password]").val();

                if(username == "" || password=="" ){
                    alert("账号和密码不能为空");
                    return false;
                }

                var params = {
                    username: username,
                    password: sha1(password)
                };

                console.log(params);

                $.ajax({
                    url: "/login",
                    type: "post",
                    datatype: "json",
                    data: params,
                    success: function (data) {
                        if(data.code == 0){
                            location.href = data.data
                        }else{
                            alert(data.msg);
                        }

                    }
                });

            });
        });
    </script>
</div>


</body>
</html>
