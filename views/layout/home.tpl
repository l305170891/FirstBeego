<!DOCTYPE html>

<html>
<head>
    <title>home</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style type="text/css">
        #header{}
        #menu{
            float: left;
            width: 200px;
            min-height: 400px;

        }
        #menu ul li{
            list-style: none;
            line-height: 30px;
            cursor: pointer;
            text-align: center;
        }
        #menu ul li:hover{
            background-color: #ddd;
        }

        #main{
            float: left;
            min-height: 400px;
            border-left: 1px solid #333;
        }
        #footer{
            height: 100px;
            text-align: center;
        }
    </style>
    <script src="/static/js/jquery-2.1.4.min.js"></script>
</head>

<body>

<header id="header">
    <h1 class="logo">客户关系管理系统</h1>
</header>

<div >
    <div id="menu">
        <ul>
            <li>首页</li>
            <li>客户</li>
            <li>报表</li>
            <li>设置</li>
        </ul>

    </div>

    <div id="main">
        内容
    </div>

    <div style="clear: both"></div>
</div>

<div id="footer"> go-crm copyright by sss</div>
</body>
</html>
