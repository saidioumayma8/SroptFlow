<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ include file="navbar.jsp" %> <!-- Assuming you have a navbar included -->

<div class="max-w-screen-xl mx-auto p-4">
    <!-- Title -->
    <h2 class="text-2xl font-semibold text-gray-800 mb-6">Manage Members and Trainers</h2>

    <!-- Role Filter -->
    <div class="mb-4">
        <label for="roleFilter" class="block text-gray-700">Filter by Role</label>
        <select id="roleFilter" name="roleFilter" class="block w-full p-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-500">
            <option value="all">All</option>
            <option value="member">Members</option>
            <option value="entraineur">Trainers</option>
        </select>
    </div>

    <!-- Add Member/Trainer Form -->
    <div class="mb-6">
        <h3 class="text-xl font-semibold text-gray-800 mb-4">Add New Member or Trainer</h3>
        <form action="addMemberOrTrainer.jsp" method="POST" class="space-y-4">
            <div>
                <label for="name" class="block text-gray-700">Name</label>
                <input type="text" id="name" name="name" required class="block w-full p-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-500">
            </div>
            <div>
                <label for="email" class="block text-gray-700">Email</label>
                <input type="email" id="email" name="email" required class="block w-full p-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-500">
            </div>
            <div>
                <label for="role" class="block text-gray-700">Role</label>
                <select id="role" name="role" required class="block w-full p-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-500">
                    <option value="member">Member</option>
                    <option value="entraineur">Trainer</option>
                </select>
            </div>
            <div>
                <button type="submit" class="bg-blue-500 text-white p-2 rounded-md hover:bg-blue-600">Add</button>
            </div>
        </form>
    </div>

    <!-- Members and Trainers Table -->
    <div class="overflow-x-auto">
        <table class="min-w-full bg-white border border-gray-300 rounded-md">
            <thead class="bg-gray-100">
            <tr>
                <th class="py-2 px-4 text-left">Name</th>
                <th class="py-2 px-4 text-left">Email</th>
                <th class="py-2 px-4 text-left">Role</th>
                <th class="py-2 px-4 text-center">Actions</th>
            </tr>
            </thead>
            <tbody>
            <!-- Filtered member data based on role -->
            <c:forEach var="user" items="${filteredUsers}">
                <tr>
                    <td class="py-2 px-4"><%= user.getName() %></td>
                    <td class="py-2 px-4"><%= user.getEmail() %></td>
                    <td class="py-2 px-4"><%= user.getRole() %></td>
                    <td class="py-2 px-4 text-center">
                        <a href="editMemberOrTrainer.jsp?id=<%= user.getId() %>" class="text-blue-500 hover:text-blue-700">Edit</a>
                        <form action="deleteMemberOrTrainer.jsp" method="POST" class="inline-block ml-2">
                            <input type="hidden" name="id" value="<%= user.getId() %>">
                            <button type="submit" class="text-red-500 hover:text-red-700">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
