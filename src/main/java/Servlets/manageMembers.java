package Servlets;

import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/manageMembers")
public class ManageMembersServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roleFilter = request.getParameter("roleFilter");
        List<User> users;

        if ("member".equals(roleFilter)) {
            users = userService.getUsersByRole("member");
        } else if ("entraineur".equals(roleFilter)) {
            users = userService.getUsersByRole("entraineur");
        } else {
            users = userService.getAllUsers(); // No filter, show all
        }

        request.setAttribute("filteredUsers", users);
        request.getRequestDispatcher("/manageMembers.jsp").forward(request, response);
    }
}

