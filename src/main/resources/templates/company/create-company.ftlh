<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h2>SAVE COMPANY</h2>
<form method="post" action="/company/save">
    <label>COMPANY NAME</label>
    <label>
        <input type="text" name="companyName" required>
    </label>
    <br>
    <br>
    <label>LOCATED COUNTRY</label>
    <label>
        <input type="text" name="locatedCountry" required>
    </label>
    <br>
    <br>
    <button type="submit">SUBMIT</button>
</form>
<a href="/company/main">
    <button>MAIN</button>
</a>
</body>
</html>