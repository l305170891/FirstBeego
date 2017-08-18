{{template "layout/base.tpl" .}}

{{define "title"}}
修改密码
{{end}}

{{define "body"}}
<div id="form">

    <table>
        <tr>
            <td>original password:</td>
            <td><input name="originalPassword" type="password" value=""/></td>
        </tr>

        <tr>
            <td>new password:</td>
            <td><input name="newPassword" type="password" value=""/></td>
        </tr>

        <tr>
            <td>confirm new password:</td>
            <td><input name="confirmNewPassword" type="password" value=""/></td>
        </tr>

        <tr>
            <td colspan="2">
                <button id="submit">修改</button>
            </td>
        </tr>

    </table>

    <script src="/static/js/sha1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#submit").click(function () {

                var originalPassword = $("#form").find("input[name=originalPassword]").val();
                var newPassword = $("#form").find("input[name=newPassword]").val();
                var confirmNewPassword = $("#form").find("input[name=confirmNewPassword]").val();

                if (originalPassword == "" || newPassword == "" || confirmNewPassword == "") {
                    alert("密码不能为空");
                    return false;
                }

                if(newPassword != confirmNewPassword){
                    alert("新密码和确认密码不相同");
                    return false;
                }


                var params = {
                    newPassword: sha1(newPassword),
                    originalPassword: sha1(originalPassword)
                };

                console.log(params);

                $.ajax({
                    url: "/postChangePwd",
                    type: "post",
                    datatype: "json",
                    data: params,
                    success: function (data) {
                        alert(data.Msg);
                        if(data.Code == 0){
                            location.reload();
                        }
                    }
                });

            });
        });
    </script>
</div>
{{end}}