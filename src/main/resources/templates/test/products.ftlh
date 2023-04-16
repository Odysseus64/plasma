<!DOCTYPE html>
<html>
<head>
    <title>Auto Star</title>
</head>
<body>
<h1>Auto Star</h1>
<hr>
<h2>Products from all over the world!</h2>

<form action="/" method="get">
    Search by Name: <input type="text" name="title"><br>
    <input type="submit" value="Search">
</form>

<#list auto as product>
    <div>
        <p><b>${product.name} | </b>${product.price} |
            <a href="/product/${product.id}"><input type="button" value="Details"></a></p>
    </div>
<#else>
    <h3>There are no products :(</h3>
</#list>
<hr>
<h3>Create new Product</h3>
<form action="/product/create" method="post">
    Product name: <input type="text" name="Name" placeholder="Product name"><br><br>
    Model: <input type="text" name="Model" placeholder="Model"><br><br>
    City: <input type="text" name="City" placeholder="City"><br><br>
    Owner: <input type="text" name="Owner" placeholder="Owner"><br><br>
    Price: <input type="number" name="Price" placeholder="Price"><br><br>
    <input type="submit" value="Add product">
</form>
</body>
</html>

<style>
    body {
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

    h2, h3 {
        color: #666;
        font-size: 24px;
        margin-top: 40px;
    }

    form {
        display: inline-block;
        margin-top: 20px;
    }

    label {
        display: inline-block;
        font-weight: bold;
        margin-bottom: 10px;
    }

    input[type="text"], input[type="number"] {
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 5px;
        width: 100%;
        margin-bottom: 20px;
    }

    input[type="submit"], input[type="button"] {
        background-color: #e74c3c;
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
    }

    input[type="submit"]:hover, input[type="button"]:hover {
        background-color: #c0392b;
    }

    .products {
        margin-top: 40px;
    }

    .products p {
        margin: 0;
        padding: 10px;
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .products p a {
        text-decoration: none;
        color: #fff;
    }

</style>