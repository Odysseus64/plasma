<!DOCTYPE html>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<h2>Editing</h2>
<form method="post" action="/testing/update/${test.id}">
    <input type="hidden" name="id" value="${test.id}">
    <label>Name</label>
    <input type="text" name="name" value="${test.name}">
    <br>
    <label>Model</label>
    <input type="text" name="model" value="${test.model}">
    <br>
    <label>City</label>
    <input type="text" name="city" value="${test.city}">
    <br>
    <label>Owner</label>
    <input type="text" name="owner" value="${test.owner}">
    <br>
    <label>Price</label>
    <input type="number" name="price" value="${test.price}">
    <br>
    <input type="submit" value="ENTER">
</form>
</body>
</html>

<style>
    table {
        border-collapse: collapse;
        width: 100%;
    }

    th,
    td {
        text-align: left;
        padding: 8px;
    }

    th {
        background-color: #008CBA;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    button {
        background-color: #008CBA;
        border: none;
        color: white;
        padding: 8px 16px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        margin: 4px 2px;
        cursor: pointer;
    }

    input[type="submit"] {
        background-color: #008CBA;
        border: none;
        color: white;
        padding: 8px 16px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        margin: 4px 2px;
        cursor: pointer;
    }

    label {
        display: inline-block;
        width: 80px;
        text-align: right;
        margin-right: 10px;
    }

</style>