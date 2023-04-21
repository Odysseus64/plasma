<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit</title>
</head>
<body>
<h2>EDIT TEACHER</h2>
<form method="post" action="/teacher/edit/${get.id}">
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
    body {
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

</style>