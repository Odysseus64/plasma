<!DOCTYPE html><html>
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
<style>
    h1 {
        font-size: 36px;
        color: #333;
        text-align: center;
        margin-top: 20px;
    }

    h2 {
        font-size: 24px;
        color: #666;
        margin-top: 30px;
    }

    body {
        font-family: Arial, sans-serif;
        font-size: 16px;
        line-height: 1.5;
        color: #666;
        background-color: #f9f9f9;
        padding: 20px;
    }

    hr {
        border: none;
        border-top: 1px solid #ccc;
        margin: 30px 0;
    }

    b {
        font-weight: bold;
        color: #333;
    }

    form {
        display: inline-block;
        margin-top: 30px;
    }

    input[type=submit] {
        background-color: #f44336;
        border: none;
        color: #fff;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
    }

    input[type=submit]:hover {
        background-color: #e53935;
    }

</style>