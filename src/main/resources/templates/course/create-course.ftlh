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
<style>
    /* Style for form labels */
    label {
        display: block;
        margin-bottom: 10px;
    }

    /* Style for form input fields */
    input[type="text"] {
        width: 200px;
        padding: 5px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    /* Style for form submit button */
    button[type="submit"] {
        padding: 5px 10px;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    /* Style for back to main button */
    button[type="button"] {
        padding: 5px 10px;
        background-color: #ccc;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    /* Style for form container */
    form {
        margin-bottom: 20px;
    }

    /* Style for heading */
    h2 {
        margin-bottom: 10px;
    }

</style>