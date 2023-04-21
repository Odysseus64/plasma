<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit</title>
</head>
<body>
<h2>EDIT Course</h2>
<form method="post" action="/course/edit/${get.id}">
    <input type="hidden" name="id" value="${get.id}">
    <label>COURSE NAME</label>
    <label>
        <input type="text" name="courName" value="${get.courName}">
    </label>
    <br>
    <label>DURATION</label>
    <label>
        <input type="text" name="duration" value="${get.duration}">
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
        margin-top: 20px;
    }

    form {
        margin-top: 20px;
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        font-size: 16px;
        margin-bottom: 20px;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #3e8e41;
    }

    button {
        background-color: #008CBA;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    button:hover {
        background-color: #006f8e;
    }

    table {
        border-collapse: collapse;
        width: 100%;
        margin-top: 20px;
    }

    th, td {
        text-align: left;
        padding: 8px;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

</style>