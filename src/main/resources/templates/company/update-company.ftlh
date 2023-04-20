<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit</title>
</head>
<body>
<h2>EDIT COMPANY</h2>
<form method="post" action="/company/edit/${get.id}">
    <input type="hidden" name="id" value="${get.id}">
    <label>COMPANY NAME</label>
    <label>
        <input type="text" name="companyName" value="${get.companyName}">
    </label>
    <br>
    <label>LOCATED COUNTRY</label>
    <label>
        <input type="text" name="locatedCountry" value="${get.locatedCountry}">
    </label>
    <br>
    <input type="submit" value="ENTER">
</form>
</body>
</html>
