<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Teacher module</title>
    <meta charset="UTF-8"/>
</head>
<body>
<h1>Teacher</h1>
<a href="/course/save">
    <button>NEW</button>
</a>
<table border="1px">
    <thead>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>DURATION</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <#list main as circle>
    <tr>
        <td>${circle.id}</td>
        <td>${circle.courName}</td>
        <td>${circle.duration}</td>
        <td>
            <a href="/course/edit/${circle.id}">
                <button>EDIT</button>
            </a>
        </td>
        <td>
            <form method="post" action="/course/delete/${circle.id}">
                <input type="submit" value="DELETE">
            </form>
        </td>
    </tr>
    </tbody>
    </#list>
</table>
</body>
</html>
