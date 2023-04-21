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
<style>
    /* Global Styles */
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        color: #333;
        margin: 0;
        padding: 0;
    }

    /* Layout Styles */
    .container {
        max-width: 960px;
        margin: 0 auto;
        padding: 20px;
    }

    h1, h2, h3, h4, h5, h6 {
        margin-top: 0;
    }

    table {
        border-collapse: collapse;
        width: 100%;
        margin-top: 20px;
    }

    th, td {
        border: 1px solid #ccc;
        padding: 10px;
    }

    th {
        background-color: #f0f0f0;
        font-weight: bold;
    }

    form {
        margin-top: 20px;
    }

    label {
        display: block;
        margin-bottom: 10px;
    }

    input[type="text"], button[type="submit"] {
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }

    button {
        background-color: #008CBA;
        color: #fff;
        cursor: pointer;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        margin-top: 10px;
    }

    button:hover {
        background-color: #006A8E;
    }

    /* Specific Styles for Each HTML Page */
    /* Styles for index.html */
    #index {
        text-align: center;
    }

    #index h1 {
        font-size: 48px;
        margin-top: 100px;
    }

    #index p {
        font-size: 24px;
        margin-top: 20px;
    }

    /* Styles for edit.html */
    #edit {
        text-align: center;
    }

    #edit h2 {
        font-size: 32px;
        margin-top: 50px;
    }

    /* Styles for main.html */
    #main {
        text-align: center;
    }

    #main h1 {
        font-size: 48px;
        margin-top: 100px;
    }

    #main table {
        margin-top: 50px;
    }

    #main button {
        margin-top: 20px;
    }

    /* Styles for save.html */
    #save {
        text-align: center;
    }

    #save h2 {
        font-size: 32px;
        margin-top: 50px;
    }

</style>