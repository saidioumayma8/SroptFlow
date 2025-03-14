package Model;

import java.util.Date;

public class Membre extends User {
    private Date datenaissance;
    private String sport_pratique;

    // Constructor
    public Membre(String nom, String password, Date datenaissance, String sport_pratique) {
        super(nom, password, "Member"); // User constructor with fixed role "Member"
        this.datenaissance = datenaissance;
        this.sport_pratique = sport_pratique;
    }

    // Getters
    public Date getDatenaissance() {
        return datenaissance;
    }

    public String getSportPratique() {
        return sport_pratique;
    }

    // Setters
    public void setDatenaissance(Date datenaissance) {
        this.datenaissance = datenaissance;
    }

    public void setSportPratique(String sport_pratique) {
        this.sport_pratique = sport_pratique;
    }

}
