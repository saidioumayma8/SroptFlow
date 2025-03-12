<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Seance</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<form id="seanceForm" action="createSeanceServlet" method="POST">
    <label for="title">Seance Title:</label>
    <input type="text" id="title" name="title" required><br><br>

    <label for="date">Seance Date:</label>
    <input type="date" id="date" name="date" required><br><br>

    <label for="description">Description:</label><br>
    <textarea id="description" name="description" rows="4" required></textarea><br><br>

    <button type="submit">Create Seance</button>
</form>
</body>
</html>
