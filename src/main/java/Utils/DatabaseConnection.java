package Utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
    private static Connection connection;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3305/sportflow", "root", "admin");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return connection;
    }
}
