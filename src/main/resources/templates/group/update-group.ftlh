<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit</title>
</head>
<body>
<h2>EDIT TEACHER</h2>
<form method="post" action="/group/edit/${pol.id}">
    <input type="hidden" name="id" value="${pol.id}">
    <label>DATE OF START</label>
    <label>
        <input type="text" name="dataStart" value="${pol.dataStart}">
    </label>
    <br>
    <label>DATE OD FINISH</label>
    <label>
        <input type="text" name="dataFinish" value="${pol.dataFinish}">
    </label>
    <br>
    <label>GROUP NAME</label>
    <label>
        <input type="text" name="groupName" value="${pol.groupName}">
    </label>
    <br>
    <input type="submit" value="ENTER">
</form>
</body>
</html>
