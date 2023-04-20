<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit</title>
</head>
<body>
<h2>EDIT TEACHER</h2>
<form method="post" action="/course/edit/${get.id}">
    <input type="hidden" name="id" value="${get.id}">
    <label>COURSE NAME</label>
    <label>
        <input type="text" name="courName" value="${get.courName}">
    </label>
    <br>
    <label>DURATION</label>
    <label>
        <input type="text" name="duration" value="${get.duration}">
    </label>
    <br>
    <input type="submit" value="ENTER">
</form>
</body>
</html>
