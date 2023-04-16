<!DOCTYPE html>
<html>
<head>
    <title>Create Test</title>
</head>
<body>
<h2>Create Test</h2>
<form method="post" action="/testing/create">
    <label>Name</label>
    <input type="text" name="name" required><br><br>
    <label>Model</label>
    <input type="text" name="model" required><br><br>
    <label>City</label>
    <input type="text" name="city" required><br><br>
    <label>Owner</label>
    <input type="text" name="owner" required><br><br>
    <label>Price</label>
    <input type="number" name="price" required><br><br>
    <button type="submit">Submit</button>
</form>
<a href="/testing/get/all"><button>View</button></a>
</body>
</html>

<style>
    /* стилизация заголовка */
    h2 {
        color: #4CAF50;
        font-size: 30px;
        text-align: center;
        margin-bottom: 30px;
    }

    /* стилизация меток */
    label {
        font-size: 20px;
        margin-right: 10px;
    }

    /* стилизация полей ввода */
    input[type=text], input[type=number] {
        width: 50%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: 2px solid #ccc;
        border-radius: 4px;
    }

    /* стилизация кнопки */
    button[type=submit] {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    button[type=submit]:hover {
        background-color: #45a049;
    }

    /* стилизация ссылки */
    a {
        text-decoration: none;
        color: #4CAF50;
    }

    /* стилизация кнопки "View" */
    button[type=button] {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    button[type=button]:hover {
        background-color: #45a049;
    }

</style>