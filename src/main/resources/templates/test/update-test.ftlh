<!DOCTYPE html>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<h2>Editing</h2>
<form method="post" action="/testing/edit/${test.id}">
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
