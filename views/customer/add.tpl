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


    <button id="submit">录入</button>
</div>

{{end}}