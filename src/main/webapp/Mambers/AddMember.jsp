<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Member</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1.2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
<!-- Navbar -->
<nav class="bg-blue-600 text-white p-4 shadow-md">
    <div class="max-w-7xl mx-auto flex justify-between items-center">
        <a href="#" class="text-xl font-bold">Admin Dashboard</a>
        <ul class="flex space-x-6">
            <li><a href="/Mambers/manageMembers.jsp" class="hover:bg-blue-500 px-4 py-2 rounded transition duration-300">Manage Members</a></li>
            <li><a href="/Mambers/addMember.jsp" class="hover:bg-blue-500 px-4 py-2 rounded transition duration-300">Add Member</a></li>
            <li><a href="/logout.jsp" class="hover:bg-red-500 px-4 py-2 rounded transition duration-300">Logout</a></li>
        </ul>
    </div>
</nav>

<!-- Content -->
<div class="container mx-auto p-8">
    <h1 class="text-3xl font-bold mb-6">Add New Member</h1>

    <form action="<%= request.getContextPath() %>/addMember" method="POST" class="bg-white shadow-md rounded-lg p-6">
        <div class="mb-4">
            <label for="name" class="block text-gray-700">Name</label>
            <input type="text" name="name" id="name" class="mt-2 w-full px-4 py-2 border border-gray-300 rounded-lg" required>
        </div>

        <div class="mb-4">
            <label for="password" class="block text-gray-700">Password</label>
            <input type="password" name="password" id="password" class="mt-2 w-full px-4 py-2 border border-gray-300 rounded-lg" required>
        </div>

        <div class="mb-4">
            <label for="date_naissance" class="block text-gray-700">Date of Birth</label>
            <input type="date" name="date_naissance" id="date_naissance" class="mt-2 w-full px-4 py-2 border border-gray-300 rounded-lg" required>
        </div>

        <div class="mb-4">
            <label for="sport_pratique" class="block text-gray-700">Sport Practiced</label>
            <input type="text" name="sport_pratique" id="sport_pratique" class="mt-2 w-full px-4 py-2 border border-gray-300 rounded-lg">
        </div>

        <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded-lg">Add Member</button>
    </form>


</div>
</body>
</html>
