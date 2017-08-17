<ul>
    <li><a href="/home">首页</a></li>
    {{range .resources}}
    <li><a href="{{.ResourcePath}}">{{.Name}}</a></li>
    {{end}}
</ul>