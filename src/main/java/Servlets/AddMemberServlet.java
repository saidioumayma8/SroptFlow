package Servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

@WebServlet("/addMember")
public class AddMemberServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form data
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        // Set up database connection
        String dbURL = "jdbc:mysql://localhost:3306/your_database";
        String dbUser = "your_username";
        String dbPassword = "your_password";

        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            // Connect to the database
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Create SQL query to insert the new member
            String sql = "INSERT INTO users (name, password, role) VALUES (?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, password);
            stmt.setString(3, role);

            // Execute the query
            int result = stmt.executeUpdate();

            // Redirect to the manage members page
            if (result > 0) {
                // Member added successfully, redirect to the manage members page
                response.sendRedirect("manageMembers.jsp");
            } else {
                // Failed to add member, redirect to the manage members page with an error message
                request.setAttribute("errorMessage", "Failed to add member.");
                request.getRequestDispatcher("manageMembers.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("manageMembers.jsp");
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

