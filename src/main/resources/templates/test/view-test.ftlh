<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<head>
    <title>View Test</title>
</head>
<body>
<h1>Test Information</h1>
<p>Product name: ${prom.name}</p>
<p>Model: ${prom.model}</p>
<p>City: ${prom.city}</p>
<p>Owner: ${prom.owner}</p>
<p>Price: ${prom.price}</p>
<a href="/testing/">Back to list</a>
<br>
<a href="/testing/update/${prom.id}">Update</a>
<br>
<form method="post" action="/testing/delete/${prom.id}">
    <input type="submit" value="Delete">
</form>
</body>
</html>
