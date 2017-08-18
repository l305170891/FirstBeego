<div>
    <div class="left"><h1>客户关系管理系统</h1></div>
    <div class="right" style="display: inline-flex; width: 240px; padding-top: 30px;">
        <div style="color: coral">({{.username}})</div>
        <div id="changePwd" style="text-decoration: underline; cursor: pointer;">修改密码</div>
        <div> | </div>
        <div id="logout" style="text-decoration: underline; cursor: pointer;">退出登录</div>
    </div>

    <div class="clear"></div>
</div>
<script type="text/javascript">
    $("#logout").click(function () {
        if(confirm("是否退出登录？")){
            location.href = "/logout";
        }
    });
    $("#changePwd").click(function () {
        location.href = "/changePwd";
    });

</script>
