<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h2>Create student</h2>
<form method="post" action="/student/save">
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
<a href="/student/main">
    <button>MAIN</button>
</a>
</body>
</html>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }

    h2 {
        margin-top: 0;
        margin-bottom: 20px;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
        width: 400px;
        margin: 0 auto;
    }

    label {
        display: block;
        margin-bottom: 10px;
    }

    input[type="text"], button {
        padding: 10px;
        font-size: 16px;
        border-radius: 5px;
        border: none;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        width: 100%;
        margin-bottom: 20px;
    }

    button[type="submit"] {
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
    }

    button[type="submit"]:hover {
        background-color: #3e8e41;
    }

    a button {
        background-color: #ccc;
        color: #000;
        margin-top: 20px;
        display: inline-block;
        padding: 10px;
        border-radius: 5px;
        text-decoration: none;
    }

    a button:hover {
        background-color: #b3b3b3;
    }

</style>