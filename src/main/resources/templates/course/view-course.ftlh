<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Course module</title>
    <meta charset="UTF-8"/>
</head>
<body>
<h1>Course</h1>

<a href="/course/save">
    <button>NEW</button>
</a>
<a href="/company/main">
    <button>COMPANY MAIN</button>
</a>

<table border="1px">
    <thead>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>DURATION</th>
        <th>STUDENT</th>
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
            <a href="/student/main">
                <button>STUDENT</button>
            </a>
        </td>
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
<style>
    table {
        border-collapse: collapse;
        margin: 20px 0;
        width: 100%;
    }

    th,
    td {
        border: 1px solid black;
        padding: 10px;
    }

    th {
        background-color: #eee;
    }

    button {
        padding: 5px 10px;
        background-color: #4CAF50;
        border: none;
        color: white;
        cursor: pointer;
        border-radius: 5px;
    }

    a {
        text-decoration: none;
        color: black;
    }

    a:hover {
        color: #4CAF50;
    }

    form {
        margin: 20px 0;
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"] {
        padding: 5px;
        border-radius: 5px;
        border: 1px solid #ccc;
        width: 100%;
        margin-bottom: 10px;
    }

    button[type="submit"] {
        background-color: #4CAF50;
        color: white;
    }

    button[type="submit"]:hover {
        background-color: #3e8e41;
    }

</style>