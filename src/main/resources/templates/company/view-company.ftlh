<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Company module</title>
    <meta charset="UTF-8"/>
</head>
<body>
<h1>Company</h1>

<a href="/company/save">
    <button>NEW</button>
</a>
<table border="1px">
    <thead>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LOCATED COUNTRY</th>
        <th>GROUP</th>
        <th>COURSE</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <#list main as circle>
    <tr>
        <td>${circle.id}</td>
        <td>${circle.companyName}</td>
        <td>${circle.locatedCountry}</td>
        <td>
            <a href="/group/main">
                <button>GROUP</button>
            </a>
        </td>
        <td>
            <a href="/course/main">
                <button>COURSE</button>
            </a>
        </td>
        <td>
            <a href="/company/edit/${circle.id}">
                <button>EDIT</button>
            </a>
        </td>
        <td>
            <form method="post" action="/company/delete/${circle.id}">
                <input type="submit" value="DELETE">
            </form>
        </td>
    </tr>
    </tbody>
    </#list>
</table>
</body>
</html>
