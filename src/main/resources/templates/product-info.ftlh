<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<head>
    <title>Auto Star</title>
</head>
<body>
<h1>Auto Star</h1>
<hr>
<h2>More detailed</h2>
<b>Name: </b>${prom.name}<br>
<b>Model: </b>${prom.model}<br>
<b>City: </b>${prom.city}<br>
<b>Owner: </b>${prom.owner}<br>
<b>Price: </b>${prom.price}<br>
<hr>
<form action="/product/delete/${prom.id}" method="post">
    <input type="submit" value="DELETE">
</form>
</body>
</html>
<style>body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
    }

    h1 {
        color: #333;
        font-size: 36px;
        text-align: center;
    }

    hr {
        border: 0;
        border-top: 1px solid #ccc;
        margin: 20px 0;
    }

    h2 {
        color: #666;
        font-size: 24px;
    }

    b {
        font-weight: bold;
    }

    form {
        display: inline-block;
        margin-top: 20px;
    }

    input[type="submit"] {
        background-color: #e74c3c;
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #c0392b;
    }
</style>