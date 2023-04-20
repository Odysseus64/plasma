<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>View</title>
    <meta charset="UTF-8"/>
</head>
<body>
<h1>TEST</h1>
<a href="/testing/create">
    <button>NEW</button>
</a>
<table border="1px">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Owner</th>
        <th>City</th>
        <th>Price</th>
        <th>Model</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <#list prom as pro>
    <tr>
        <td>${pro.id}</td>
        <td>${pro.name}</td>
        <td>${pro.owner}</td>
        <td>${pro.city}</td>
        <td>${pro.price}</td>
        <td>${pro.model}</td>
        <td><a href="/testing/edit/${pro.id}">
                <button>EDIT</button>
            </a></td>
        <td>
            <form method="post" action="/testing/delete/${pro.id}">
                <input type="submit" value="DELETE">
            </form>
        </td>
    </tr>
    </tbody>
    </#list>
</table>
</body>
</html>
