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
<style>
    /* убираем отступы у тегов body и table */
    body, table {
        margin: 0;
        padding: 0;
    }

    /* добавляем стили для заголовка */
    h1 {
        text-align: center;
        margin-bottom: 20px;
    }

    /* добавляем стили для кнопок */
    button {
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    /* добавляем стили для таблицы */
    table {
        border-collapse: collapse;
        width: 100%;
    }

    /* добавляем стили для ячеек таблицы */
    th, td {
        padding: 10px;
        text-align: left;
    }

    /* добавляем стили для ячеек таблицы заголовков */
    th {
        background-color: #007bff;
        color: #fff;
    }

    /* добавляем стили для кнопок Edit и Delete */
    td button {
        padding: 5px 10px;
        background-color: #fff;
        color: #007bff;
        border: 1px solid #007bff;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    /* добавляем стили при наведении на кнопки Edit и Delete */
    td button:hover {
        background-color: #007bff;
        color: #fff;
    }

</style>