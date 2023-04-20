<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h2>Create group</h2>
<form method="post" action="/group/save">
    <label>First Name</label>
    <label>
        <input type="text" name="dataStart" required>
    </label>
    <br>
    <br>
    <label>LAST NAME</label>
    <label>
        <input type="text" name="dataFinish" required>
    </label>
    <br>
    <br>
    <label>EMAIL</label>
    <label>
        <input type="text" name="groupName" required>
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
<a href="/group/main">
    <button>MAIN</button>
</a>
</body>
</html>