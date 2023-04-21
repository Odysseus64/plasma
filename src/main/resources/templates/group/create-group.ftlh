<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h2>Create group</h2>
<form method="post" action="/group/save">
    <label>First Name</label>
    <label>
        <input type="text" name="dataStart" required>
    </label>
    <br>
    <br>
    <label>LAST NAME</label>
    <label>
        <input type="text" name="dataFinish" required>
    </label>
    <br>
    <br>
    <label>EMAIL</label>
    <label>
        <input type="text" name="groupName" required>
    </label>
    <br>
    <br>
    <label>PASSWORD</label>
    <label>
        <input type="text" name="password" required>
    </label>
    <br>
    <br>
    <button type="submit">SUBMIT</button>
</form>
<a href="/group/main">
    <button>MAIN</button>
</a>
</body>
</html>
<style>
    /* Убираем отступы */
    body {
        margin: 0;
        padding: 0;
    }

    /* Стили для заголовка */
    h2 {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
    }

    /* Стили для формы */
    form {
        display: flex;
        flex-direction: column;
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
    }

    input[type="text"],
    input[type="password"] {
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        margin-bottom: 20px;
    }

    button[type="submit"],
    button {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }

    button[type="submit"]:hover,
    button:hover {
        background-color: #0056b3;
    }

    a {
        text-decoration: none;
        color: #007bff;
        display: inline-block;
        margin-right: 10px;
    }

    a:hover {
        text-decoration: underline;
    }

</style>