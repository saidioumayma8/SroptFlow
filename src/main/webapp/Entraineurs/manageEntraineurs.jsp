<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Manage Trainers</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
<!-- Navbar -->
<nav class="bg-gray-800">
    <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
        <a href="index.jsp" class="flex items-center">
            <img src="logo.png" class="h-8 mr-3" alt="Logo" />
            <span class="self-center text-2xl font-semibold text-white">Admin Panel</span>
        </a>
        <div class="flex items-center md:order-2">
            <button data-collapse-toggle="navbar-search" type="button" class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="navbar-search" aria-expanded="false">
                <span class="sr-only">Open main menu</span>
                <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15"/>
                </svg>
            </button>
        </div>
        <div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-search">
            <ul class="flex flex-col p-4 md:p-0 mt-4 font-medium border border-gray-100 rounded-lg bg-gray-50 md:space-x-8 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
                <!-- Admin Panel Links -->
                <li>
                    <a href="dashboard.jsp" class="block py-2 px-3 text-gray-900 rounded-sm hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700">Dashboard</a>
                </li>
                <li>
                    <a href="adminProfile.jsp" class="block py-2 px-3 text-gray-900 rounded-sm hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white dark:hover:bg-gray-700">Profile</a>
                </li>
                <li>
                    <a href="logout.jsp" class="block py-2 px-3 text-gray-900 rounded-sm hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white dark:hover:bg-gray-700">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<!-- Page Content -->
<div class="container mx-auto p-6">
    <h1 class="text-3xl font-semibold text-center text-gray-800 mb-6">Manage Trainers</h1>

    <a href="addEntraineur.jsp" class="text-white bg-blue-600 px-4 py-2 rounded-md hover:bg-blue-700">Add New Trainer</a>

    <div class="overflow-x-auto mt-6 bg-white p-4 rounded-lg shadow-md">
        <table class="min-w-full table-auto">
            <thead class="bg-gray-200">
            <tr>
                <th class="px-4 py-2 text-left text-gray-700">ID</th>
                <th class="px-4 py-2 text-left text-gray-700">Name</th>
                <th class="px-4 py-2 text-left text-gray-700">Actions</th>
            </tr>
            </thead>
            <tbody>
            <!-- Loop through trainers and display them here -->
            <tr class="border-b">
                <td class="px-4 py-2">1</td>
                <td class="px-4 py-2">Jane Smith</td>
                <td class="px-4 py-2">
                    <a href="editEntraineur.jsp?id=1" class="text-blue-600 hover:text-blue-800">Edit</a> |
                    <a href="deleteEntraineur.jsp?id=1" class="text-red-600 hover:text-red-800">Delete</a>
                </td>
            </tr>
            <!-- Repeat for other trainers -->
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
