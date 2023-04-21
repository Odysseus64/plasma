<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit</title>
</head>
<body>
<h2>EDIT Group</h2>
<form method="post" action="/group/edit/${pol.id}">
    <input type="hidden" name="id" value="${pol.id}">
    <label>DATE OF START</label>
    <label>
        <input type="text" name="dataStart" value="${pol.dataStart}">
    </label>
    <br>
    <label>DATE OD FINISH</label>
    <label>
        <input type="text" name="dataFinish" value="${pol.dataFinish}">
    </label>
    <br>
    <label>GROUP NAME</label>
    <label>
        <input type="text" name="groupName" value="${pol.groupName}">
    </label>
    <br>
    <input type="submit" value="ENTER">
</form>
</body>
</html>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }

    h2 {
        color: #333;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
        width: 400px;
        margin: 0 auto;
    }

    label {
        display: block;
        margin-bottom: 10px;
    }

    input[type="text"] {
        padding: 5px;
        width: 100%;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;
        margin-bottom: 20px;
    }

    input[type="submit"] {
        background-color: #333;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 3px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #555;
    }

</style>