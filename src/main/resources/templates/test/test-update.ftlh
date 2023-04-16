<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<head>
    <title>Update</title>
</head>
<body>
    <form method="post" action="/update/${student.id}">
        Product name: <input type="text" name="Name" placeholder="Product name"><br><br>
        Model: <input type="text" name="Model" placeholder="Model"><br><br>
        City: <input type="text" name="City" placeholder="City"><br><br>
        Owner: <input type="text" name="Owner" placeholder="Owner"><br><br>
        Price: <input type="number" name="Price" placeholder="Price"><br><br>
        <input type="submit" value="Update">
    </form>
</body>