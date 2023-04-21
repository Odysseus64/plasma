<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit</title>
</head>
<body>
<h2>EDIT COMPANY</h2>
<form method="post" action="/company/edit/${get.id}">
    <input type="hidden" name="id" value="${get.id}">
    <label>COMPANY NAME</label>
    <label>
        <input type="text" name="companyName" value="${get.companyName}">
    </label>
    <br>
    <label>LOCATED COUNTRY</label>
    <label>
        <input type="text" name="locatedCountry" value="${get.locatedCountry}">
    </label>
    <br>
    <input type="submit" value="ENTER">
</form>
</body>
</html>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    h2 {
        margin-top: 20px;
        margin-bottom: 10px;
    }

    form {
        margin-top: 20px;
    }

    label {
        display: block;
        margin-bottom: 10px;
    }

    input[type="text"] {
        padding: 5px;
        border: 1px solid #ccc;
        border-radius: 3px;
        font-size: 14px;
        width: 200px;
        max-width: 100%;
    }

    input[type="submit"],
    button {
        background-color: #4CAF50;
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 3px;
        margin-top: 10px;
    }

    button {
        background-color: #2196F3;
    }

    a {
        text-decoration: none;
        color: #000;
    }

    table {
        border-collapse: collapse;
        width: 100%;
        margin-top: 20px;
    }

    th,
    td {
        text-align: left;
        padding: 8px;
    }

    th {
        background-color: #4CAF50;
        color: #fff;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    input[type="submit"]:hover,
    button:hover {
        background-color: #3e8e41;
    }

    input[type="text"]:focus {
        outline: none;
        border-color: #4CAF50;
    }

</style>