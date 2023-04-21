<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit</title>
</head>
<body>
<h2>EDIT student</h2>
<form method="post" action="/student/edit/${get.id}">
    <input type="hidden" name="id" value="${get.id}">
    <label>FIRST NAME</label>
    <label>
        <input type="text" name="first_name" value="${get.first_name}">
    </label>
    <br>
    <label>LAST NAME</label>
    <label>
        <input type="text" name="last_name" value="${get.last_name}">
    </label>
    <br>
    <label>EMAIL</label>
    <label>
        <input type="text" name="email" value="${get.email}">
    </label>
    <br>
    <label>PASSWORD</label>
    <label>
        <input type="text" name="password" value="${get.password}">
    </label>
    <br>
    <input type="submit" value="ENTER">
</form>
</body>
</html>

<style>
    /* Общие стили для всей страницы */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    /* Стили для заголовка */
    h2 {
        font-size: 24px;
        margin-bottom: 20px;
    }

    /* Стили для формы */
    form {
        display: flex;
        flex-direction: column;
        max-width: 400px;
        margin: 0 auto;
    }

    /* Стили для меток */
    label {
        margin-bottom: 5px;
    }

    /* Стили для полей ввода */
    input[type="text"] {
        padding: 10px;
        font-size: 16px;
        border-radius: 5px;
        border: 1px solid #ccc;
        margin-bottom: 10px;
    }

    /* Стили для кнопки */
    input[type="submit"] {
        background-color: #008CBA;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    /* Стили для кнопки при наведении */
    input[type="submit"]:hover {
        background-color: #0077B3;
    }

</style>