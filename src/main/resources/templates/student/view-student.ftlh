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
<style>
    body {
        font-family: Arial, sans-serif;
        font-size: 16px;
        line-height: 1.5;
    }

    h1 {
        margin-top: 0;
    }

    a button {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px;
        border-radius: 3px;
        cursor: pointer;
        margin-right: 10px;
    }

    a button:hover {
        background-color: #0062cc;
    }

    table {
        border-collapse: collapse;
        margin-top: 20px;
        width: 100%;
    }

    table th, table td {
        padding: 10px;
        border: 1px solid #ccc;
    }

    table th {
        background-color: #f2f2f2;
        text-align: left;
    }

    form input[type="submit"] {
        background-color: #dc3545;
        color: #fff;
        border: none;
        padding: 10px;
        border-radius: 3px;
        cursor: pointer;
    }

    form input[type="submit"]:hover {
        background-color: #c823
    }

</style>