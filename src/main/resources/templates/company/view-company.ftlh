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
<style>
    /* Style for Company Module */

    h1 {
        font-size: 36px;
        text-align: center;
        margin-bottom: 30px;
    }

    button {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #0062cc;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        margin-bottom: 30px;
    }

    th, td {
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #007bff;
        color: #fff;
    }

    td {
        border-bottom: 1px solid #ddd;
    }

    tbody tr:hover {
        background-color: #f5f5f5;
    }

    a {
        text-decoration: none;
    }

    a button {
        margin: 5px;
    }

    form input[type="submit"] {
        background-color: #dc3545;
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    form input[type="submit"]:hover {
        background-color: #c82333;
    }

    form label {
        display: block;
        margin-bottom: 5px;
    }

    form input[type="text"] {
        padding: 8px;
        font-size: 16px;
        border-radius: 5px;
        border: 1px solid #ccc;
        width: 100%;
        margin-bottom: 10px;
        box-sizing: border-box;
    }

    form input[type="text"]:focus {
        border-color: #007bff;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

</style>