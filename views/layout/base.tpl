<!DOCTYPE html>

<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>{{template "title" .}}</title>
    <link src="/static/css/index.css" />
    <style type="text/css">
        #header{
            border-bottom: 1px solid #333;
        }
        #menu{
            float: left;
            width: 200px;
            min-height: 400px;

        }
        #menu ul li{
            list-style: none;
            line-height: 50px;
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
    {{template "layout/header.tpl" .}}
</header>

<div >
    <div id="menu">
        {{template "layout/menu.tpl" .}}
    </div>

    <div id="main">
        {{template "body" .}}
    </div>

    <div style="clear: both"></div>
</div>

<div id="footer">
    {{template "layout/footer.tpl" .}}
</div>

</body>
</html>
