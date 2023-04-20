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
