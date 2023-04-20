<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Group module</title>
    <meta charset="UTF-8"/>
</head>
<body>
<h1>Group</h1>
<a href="/group/save">
    <button>NEW</button>
</a>
<a href="/company/main">
    <button>COMPANY MAIN</button>
</a>
<table border="1px">
    <thead>
    <tr>
        <th>ID</th>
        <th>GROUP NAME</th>
        <th>DATE OF START</th>
        <th>DATE OF FINISH</th>
        <th>TEACHER</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <#list group as circle>
    <tr>
        <td>${circle.id}</td>
        <td>${circle.groupName}</td>
        <td>${circle.dataStart}</td>
        <td>${circle.dataFinish}</td>
        <td>
            <a href="/teacher/main">
                <button>TEACHER</button>
            </a>
        </td>
        <td>
            <a href="/group/edit/${circle.id}">
                <button>EDIT</button>
            </a>
        </td>
        <td>
            <form method="post" action="/group/delete/${circle.id}">
                <input type="submit" value="DELETE">
            </form>
        </td>
    </tr>
    </tbody>
    </#list>
</table>
</body>
</html>
