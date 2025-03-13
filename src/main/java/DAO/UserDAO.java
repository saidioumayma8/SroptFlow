package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import static Utils.DatabaseConnection.getConnection;

public class UserDAO {

    public static int Login(String nom, String password) {
        try {
            Connection conn = getConnection();
            String sql = "SELECT * FROM Users WHERE nom = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, nom);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String pass = rs.getString("password");
                if (pass.equals(password)) {
                    return rs.getInt("id");  // Return the user's ID if credentials match
                }
            }
            rs.close();
            stmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        return 0;
    }


    public static String FountTheUserRole(int userId) {
        try {
            Connection conn = getConnection();
            String sql = "SELECT Role FROM users WHERE Id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, userId);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getString("Role");
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
