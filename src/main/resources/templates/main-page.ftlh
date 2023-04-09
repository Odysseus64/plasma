<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=firefox">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main-Page</title>
</head>
<body>
<div>
    <#list reg as registor>
        <h2>${registor.id}</h2>
        <h2>${registor.name}</h2>
        <h2>${registor.nickName}</h2>
        <h2>${registor.email}</h2>
        <h2>${registor.password}</h2>
    </#list>
</div>
<form>
    <label for="username">Имя пользователя:</label>
    <input type="text" id="username" name="username" required>

    <label for="email">Электронная почта:</label>
    <input type="email" id="email" name="email" required>

    <label for="password">Пароль:</label>
    <input type="password" id="password" name="password" minlength="8" required>

    <label for="confirm-password">Подтверждение пароля:</label>
    <input type="password" id="confirm-password" name="confirm-password" minlength="8" required>

    <button type="submit">Зарегистрироваться</button>
</form>

</body>
</html>
<style>
    form {
        display: flex;
        flex-direction: column;
        max-width: 400px;
        margin: 0 auto;
    }

    label {
        font-size: 1.2rem;
        margin-bottom: 0.5rem;
        color: black;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
        border: 1px solid black;
        padding: 0.5rem;
        font-size: 1rem;
        margin-bottom: 1rem;
        color: black;
        background-color: white;
    }

    input[type="submit"] {
        background-color: black;
        color: white;
        padding: 0.5rem;
        font-size: 1rem;
        border: none;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: white;
        color: black;
    }

</style>