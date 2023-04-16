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
    <table>
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
            <td><a href="/testing/update/${pro.id}">
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

<style>
    table {
        border-collapse: collapse;
        width: 100%;
    }

    th, td {
        text-align: left;
        padding: 8px;
    }

    th {
        background-color: #f2f2f2;
        color: #333;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    td button, button {
        padding: 8px;
        border: none;
        background-color: #4CAF50;
        color: #fff;
        cursor: pointer;
    }

    td button:hover {
        background-color: #3e8e41;
    }

    td button:focus {
        outline: none;
    }

    td form {
        display: inline-block;
    }

    td form input[type="submit"] {
        padding: 8px;
        border: none;
        background-color: #f44336;
        color: #fff;
        cursor: pointer;
    }

    td form input[type="submit"]:hover {
        background-color: #cc0000;
    }

    td form input[type="submit"]:focus {
        outline: none;
    }

</style>