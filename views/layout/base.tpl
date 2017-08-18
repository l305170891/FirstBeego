<!DOCTYPE html>

<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>crm -{{template "title" .}}</title>

    <link rel="stylesheet" type="text/css" href="/static/css/index.css" />

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
