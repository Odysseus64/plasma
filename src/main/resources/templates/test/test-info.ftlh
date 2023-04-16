<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Test List</title>
    <meta charset="UTF-8"/>
</head>
<body>
<h1>Test List</h1>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Owner</th>
        <th>City</th>
        <th>Price</th>
        <th>Model</th>
        <th>Delete</th>
        <th>Update</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>${prom.id}</td>
        <td>${prom.name}</td>
        <td>${prom.owner}</td>
        <td>${prom.city}</td>
        <td>${prom.price}</td>
        <td>${prom.model}</td>
        <td>
            <form action="/delete/${prom.id}" method="post">
                <input type="submit" value="DELETE">
            </form>
        </td>
        <td>
            <form action="/update/${prom.id}" method="post">
                <a>
                    <input type="submit" value="UPDATE">
                </a>
            </form>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>

<style>
    table {
        border-collapse: collapse;
        width: 100%;
        font-family: Arial, sans-serif;
        font-size: 14px;
    }

    th, td {
        text-align: left;
        padding: 8px;
        border: 1px solid #ddd;
    }

    th {
        background-color: #F2F2F2;
        font-weight: bold;
    }

    h1 {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
    }
</style>