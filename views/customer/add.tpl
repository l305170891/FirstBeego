{{template "layout/base.tpl" .}}

{{define "title"}}
添加客户
{{end}}

{{define "body"}}
<div>
    <a href="/customer">客户列表</a>
    <span> | </span>
    <a href="/addCustomer">添加客户</a>
</div>

<div id="form">

    姓名：
    <input name="name" type="text" value=""/>

    <br/><br/>

    电话：
    <input name="phone" type="text" value=""/>
    <br/><br/>

    地址：
    <input name="addr" type="text" value=""/>

    <br/><br/>

    备注：
    <textarea name="ext"></textarea>
    <br/><br/>

    <button id="submit">录入</button>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#submit").click(function () {
            var name = $("#form").find("input[name=name]").val();
            var phone = $("#form").find("input[name=phone]").val();
            var addr = $("#form").find("input[name=addr]").val();
            var ext = $("#form").find("textarea[name=ext]").text();

            if (name == "" || phone == "") {
                alert("姓名和电话不能为空");
                return false;
            }

            var params = {
                name: name,
                phone: phone,
                addr: addr,
                ext: ext,
            };

            console.log(params);

            $.ajax({
                url: "/ajaxAddCustomer",
                type: "post",
                datatype: "json",
                data: params,
                success: function (data) {
                    alert(data.Msg);
                    if (data.Code == 0) {
                        location.reload()
                    }
                }
            });

        });
    });
</script>

{{end}}