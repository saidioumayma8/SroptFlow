package DAO;

import Model.User;
import Utils.DatabaseConnection;

import java.sql.*;

public class UserDAO {
    private Connection connection;

    public UserDAO() {
        connection = DatabaseConnection.getConnection();
    }

    public User validateUser(String nom, String password) { // Change 'email' to 'nom'
        try {
            String sql = "SELECT * FROM users WHERE nom = ? AND password = ?";
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, nom); // Now using 'nom' correctly
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return new User(rs.getInt("id"), rs.getString("nom"), rs.getString("name"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
