<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Student module</title>
    <meta charset="UTF-8"/>
</head>
<body>
<h1>Student</h1>
<a href="/student/save">
    <button>NEW</button>
</a>
<a href="/company/main">
    <button>COMPANY MAIN</button>
</a>
<table border="1px">
    <thead>
    <tr>
        <th>ID</th>
        <th>FIRST NAME</th>
        <th>LAST NAME</th>
        <th>EMAIL</th>
        <th>PASSWORD</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <#list student as circle>
    <tr>
        <td>${circle.id}</td>
        <td>${circle.first_name}</td>
        <td>${circle.last_name}</td>
        <td>${circle.email}</td>
        <td>${circle.password}</td>
        <td>
            <a href="/student/edit/${circle.id}">
                <button>EDIT</button>
            </a>
        </td>
        <td>
            <form method="post" action="/student/delete/${circle.id}">
                <input type="submit" value="DELETE">
            </form>
        </td>
    </tr>
    </tbody>
    </#list>
</table>
</body>
</html>
