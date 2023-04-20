<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h2>Create course</h2>
<form method="post" action="/course/save">
    <label>COURSE NAME</label>
    <label>
        <input type="text" name="courName" required>
    </label>
    <br>
    <br>
    <label>DURATION</label>
    <label>
        <input type="text" name="duration" required>
    </label>
    <br>
    <br>
    <button type="submit">SUBMIT</button>
</form>
<a href="/course/main">
    <button>MAIN</button>
</a>
</body>
</html>