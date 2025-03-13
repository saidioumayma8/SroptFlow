package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import DAO.UserDAO;
import Model.User;

import java.io.IOException;
import java.util.List;

@WebServlet("/manageMembers")
public class ManageMembersServlet extends HttpServlet {

    private UserDAO userDAO = new UserDAO();  // Create an instance of UserDAO

    // Handle GET request to show filtered users
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roleFilter = request.getParameter("roleFilter"); // Role filter (all, member, or entraineur)

        List<User> users;
        if ("member".equals(roleFilter)) {
            users = userDAO.getUsersByRole("member");
        } else if ("entraineur".equals(roleFilter)) {
            users = userDAO.getUsersByRole("entraineur");
        } else {
            users = userDAO.getUsersByRole("all"); // Get all users if no filter is applied
        }

        // Pass the users to the JSP
        request.setAttribute("filteredUsers", users);
        request.getRequestDispatcher("/manageMembers.jsp").forward(request, response);
    }

    // Handle POST request to add a new user
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");  // Get password from the form
        String role = request.getParameter("role");

        User newUser = new User(name, password, role);

        boolean success = userDAO.addUser(newUser);

        if (success) {
            response.sendRedirect("manageMembers");  // Redirect back to the manage members page
        } else {
            request.setAttribute("error", "Failed to add user");
            request.getRequestDispatcher("/manageMembers.jsp").forward(request, response);
        }
    }

    // Handle DELETE request to delete a user
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("id"));

        boolean success = userDAO.deleteUser(userId);

        if (success) {
            response.sendRedirect("manageMembers");  // Redirect back to the manage members page
        } else {
            request.setAttribute("error", "Failed to delete user");
            request.getRequestDispatcher("/manageMembers.jsp").forward(request, response);
        }
    }
}

