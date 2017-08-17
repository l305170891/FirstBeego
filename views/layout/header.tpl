<div>
    <div class="left"><h1>客户关系管理系统</h1></div>
    <div class="left">({{.username}})</div>
    <div class="left" id="logout" style="text-decoration: underline; cursor: pointer;">退出登录</div>
    <div class="left">|</div>
    <div class="left" id="changePwd" style="text-decoration: underline; cursor: pointer;">修改密码</div>
    <div class="clear"></div>
</div>
<script type="text/javascript">
    $("#logout").click(function () {
        if(confirm("是否退出登录？")){
            location.href = "/logout";
        }
    });
    $("#logout").click(function () {
        location.href = "/changePwd";
    });

</script>
