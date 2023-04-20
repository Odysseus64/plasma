<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit</title>
</head>
<body>
<h2>EDIT TEACHER</h2>
<form method="post" action="/student/edit/${get.id}">
    <input type="hidden" name="id" value="${get.id}">
    <label>FIRST NAME</label>
    <label>
        <input type="text" name="first_name" value="${get.first_name}">
    </label>
    <br>
    <label>LAST NAME</label>
    <label>
        <input type="text" name="last_name" value="${get.last_name}">
    </label>
    <br>
    <label>EMAIL</label>
    <label>
        <input type="text" name="email" value="${get.email}">
    </label>
    <br>
    <label>PASSWORD</label>
    <label>
        <input type="text" name="password" value="${get.password}">
    </label>
    <br>
    <input type="submit" value="ENTER">
</form>
</body>
</html>
