{{template "layout/base.tpl" .}}

{{define "title"}}
客户列表
{{end}}

{{define "body"}}
<div>
    <a href="/customer">客户列表</a>
    <span> | </span>
    <a href="/addCustomer">添加客户</a>
</div>

<div id="customerList" style="width: 800px">
    <table width="60%" border="1">
        <tr>
            <th>姓名</th>
            <th>电话</th>
            <th>录入时间</th>
            <th>归属</th>
            <th>操作</th>
        </tr>
        <tr>
            <td>张三</td>
            <td>18612345678</td>
            <td>2017-07-14 12:32</td>
            <td>小王</td>
            <td><span>修改</span> | <span>删除</span></td>
        </tr>

    </table>

    <div><span>首页</span><span>尾页</span></div>
</div>


{{end}}