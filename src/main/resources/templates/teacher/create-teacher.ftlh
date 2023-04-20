<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h2>Create Test</h2>
<form method="post" action="/teacher/save">
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
<a href="/teacher/main">
    <button>MAIN</button>
</a>
</body>
</html>