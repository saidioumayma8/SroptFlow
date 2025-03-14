package DAO;

import Model.Membre;
import Utils.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MembreDAO {

    public boolean addMembre(Membre membre) {
        String userQuery = "INSERT INTO users (name, password, role) VALUES (?, ?, ?)";
        String membreQuery = "INSERT INTO membres (id, date_naissance, sport_pratique) VALUES (?, ?, ?)";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement stmt1 = connection.prepareStatement(userQuery, Statement.RETURN_GENERATED_KEYS);
             PreparedStatement stmt2 = connection.prepareStatement(membreQuery)) {


            stmt1.setString(1, membre.getNom());
            stmt1.setString(2, membre.getPassword());
            stmt1.setString(3, "Member");

            int affectedRows = stmt1.executeUpdate();
            if (affectedRows == 0) return false;

            ResultSet generatedKeys = stmt1.getGeneratedKeys();
            int userId;
            if (generatedKeys.next()) {
                userId = generatedKeys.getInt(1);
            } else {
                return false;
            }

            stmt2.setInt(1, userId);
            stmt2.setDate(2, new java.sql.Date(membre.getDatenaissance().getTime()));
            stmt2.setString(3, membre.getSportPratique());

            return stmt2.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}

