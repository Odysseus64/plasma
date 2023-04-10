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
        <p><b>${product.name} | </b>${product.price} | <a href="/product/${product.id}"><input type="button"
                                                                                               value="Details"></a></p>
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
    1 Photo: <input type="file" name="file1" placeholder="Photo"><br><br>
    2 Photo: <input type="file" name="file2" placeholder="Photo"><br><br>
    3 Photo: <input type="file" name="file3" placeholder="Photo"><br><br>
    <input type="submit" value="Add product">
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

    h3 {
        font-size: 20px;
        color: #333;
        margin-top: 30px;
    }

    body {
        font-family: Arial, sans-serif;
        font-size: 16px;
        line-height: 1.5;
        color: #333;
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

    input[type=text], input[type=number] {
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        width: 100%;
        margin-bottom: 15px;
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

    .product {
        margin-bottom: 30px;
        padding: 10px;
        border-radius: 5px;
        background-color: #fff;
        border: 1px solid #ccc;
    }

    .product p {
        margin: 0;
    }

    .product a {
        text-decoration: none;
        color: #f44336;
    }

    .product a:hover {
        color: #e53935;
    }

</style>