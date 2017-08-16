<h1 class="logo">客户关系管理系统({{.username}})<span id="logout" style="text-decoration: underline; cursor: pointer;">退出登录</span></h1>
<script type="text/javascript">
    $("#logout").click(function () {
        if(confirm("是否退出登录？")){
            location.href = "/logout";
        }
    });
</script>
