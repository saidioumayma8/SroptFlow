<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Members</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1.2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
<!-- Navbar -->
<nav class="bg-blue-600 text-white p-4 shadow-md">
    <div class="max-w-7xl mx-auto flex justify-between items-center">
        <a href="#" class="text-xl font-bold">Admin Dashboard</a>
        <ul class="flex space-x-6">
            <li><a href="/Mambers/manageMembers.jsp" class="hover:bg-blue-500 px-4 py-2 rounded transition duration-300">Manage Members</a></li>
            <li><a href="../Mambers/AddMember.jsp" class="hover:bg-blue-500 px-4 py-2 rounded transition duration-300">Add Member</a></li>
            <li><a href="/logout.jsp" class="hover:bg-red-500 px-4 py-2 rounded transition duration-300">Logout</a></li>
        </ul>
    </div>
</nav>

<!-- Content -->
<div class="container mx-auto p-8">
    <h1 class="text-3xl font-bold mb-6">Manage Members</h1>

    <!-- Member Table -->
    <table class="min-w-full bg-white border border-gray-300 rounded-lg shadow-md">
        <thead>
        <tr>
            <th class="py-2 px-4 text-left border-b">Name</th>
            <th class="py-2 px-4 text-left border-b">Email</th>
            <th class="py-2 px-4 text-left border-b">Role</th>
            <th class="py-2 px-4 text-center border-b">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${filteredUsers}">
            <tr>
                <td class="py-2 px-4 border-b">${user.name}</td>
                <td class="py-2 px-4 border-b">${user.email}</td>
                <td class="py-2 px-4 border-b">${user.role}</td>
                <td class="py-2 px-4 border-b text-center">
                    <a href="editMemberOrTrainer.jsp?id=${user.id}" class="text-blue-500 hover:text-blue-700">Edit</a>
                    <form action="deleteMemberOrTrainer.jsp" method="POST" class="inline-block ml-2">
                        <input type="hidden" name="id" value="${user.id}">
                        <button type="submit" class="text-red-500 hover:text-red-700">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
