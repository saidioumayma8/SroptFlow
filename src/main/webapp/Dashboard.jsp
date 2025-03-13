<%@ page import="Model.User" %>
<%@ page session="true" %>

<%
    User user = (User) session.getAttribute("user"); // Retrieve the User object from session
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.16/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">

<div class="min-h-screen flex flex-col">
    <!-- Navbar -->
    <nav class="bg-blue-600 text-white p-4">
        <div class="flex justify-between items-center">
            <h1 class="text-2xl font-bold">SportFlow Dashboard</h1>
            <div>
                <a href="LogoutServlet" class="text-white hover:text-gray-200">Logout</a>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="flex-grow p-6">
        <div class="container mx-auto">
            <!-- Welcome Section -->
            <div class="bg-white p-6 rounded-lg shadow-md mb-6">
                <h2 class="text-3xl font-semibold text-gray-800 mb-4">Welcome, <%= user.getNom() %>!</h2>
                <p class="text-gray-600">You are logged in as <span class="font-semibold"><%= user.getRole() %></span>.</p>
            </div>

            <!-- Dashboard Cards -->
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
                <!-- Members Section -->
                <div class="bg-white p-6 rounded-lg shadow-md hover:bg-blue-100">
                    <h3 class="text-xl font-semibold text-gray-800 mb-4">Manage Members</h3>
                    <p class="text-gray-600 mb-4">View and manage members in the system.</p>
                    <a href="members.jsp" class="text-blue-600 hover:underline">View Members</a>
                </div>

                <!-- Trainers Section -->
                <div class="bg-white p-6 rounded-lg shadow-md hover:bg-blue-100">
                    <h3 class="text-xl font-semibold text-gray-800 mb-4">Manage Trainers</h3>
                    <p class="text-gray-600 mb-4">View and manage trainers in the system.</p>
                    <a href="trainers.jsp" class="text-blue-600 hover:underline">View Trainers</a>
                </div>

                <!-- Settings Section -->
                <div class="bg-white p-6 rounded-lg shadow-md hover:bg-blue-100">
                    <h3 class="text-xl font-semibold text-gray-800 mb-4">System Settings</h3>
                    <p class="text-gray-600 mb-4">Manage system settings and configurations.</p>
                    <a href="settings.jsp" class="text-blue-600 hover:underline">Go to Settings</a>
                </div>
            </div>
        </div>
    </div>

</div>

</body>
</html>
