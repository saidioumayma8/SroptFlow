package Model;

public class User {
    private int id;
    private String nom;
    private String password;
    private String role;

    public User(int id, String nom, String password, String role) {
        this.id = id;
        this.nom = nom;
        this.password = password;
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public String getPassword() {
        return password;
    }

    public String getRole() {
        return role;
    }
}
