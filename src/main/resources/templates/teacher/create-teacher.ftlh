<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create teacher</title>
</head>
<body>
<h2>Create teacher</h2>
<form method="post" action="/teacher/save">
    <label>First Name</label>
    <label>
        <input type="text" name="first_name" required>
    </label>
    <br>
    <br>
    <label>LAST NAME</label>
    <label>
        <input type="text" name="last_name" required>
    </label>
    <br>
    <br>
    <label>EMAIL</label>
    <label>
        <input type="text" name="email" required>
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
<a href="/teacher/main">
    <button>MAIN</button>
</a>
</body>
</html>
<style>body {
        font-family: Arial, sans-serif;
        font-size: 16px;
        line-height: 1.5;
    }

    h2 {
        margin-top: 0;
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"] {
        padding: 5px;
        border: 1px solid #ccc;
        border-radius: 3px;
        width: 250px;
        box-sizing: border-box;
        margin-bottom: 10px;
    }

    button[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px;
        border-radius: 3px;
        cursor: pointer;
    }

    button[type="submit"]:hover {
        background-color: #0062cc;
    }

    a button {
        background-color: #ccc;
        color: #333;
        border: none;
        padding: 10px;
        border-radius: 3px;
        cursor: pointer;
    }

    a button:hover {
        background-color: #bbb;
    }

</style>