<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h2>Create student</h2>
<form method="post" action="/student/save">
    <label>First Name</label>
    <label>
        <input type="text" name="first_name" required>
    </label>
    <br>
    <br>
    <label>LAST NAME</label>
    <label>
        <input type="text" name="last_name" required>
    </label>
    <br>
    <br>
    <label>EMAIL</label>
    <label>
        <input type="text" name="email" required>
    </label>
    <br>
    <br>
    <label>PASSWORD</label>
    <label>
        <input type="text" name="password" required>
    </label>
    <br>
    <br>
    <button type="submit">SUBMIT</button>
</form>
<a href="/student/main">
    <button>MAIN</button>
</a>
</body>
</html>