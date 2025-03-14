package Servlets;

import DAO.MembreDAO;
import Model.Membre;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/addMember")
public class AddMemberServlet extends HttpServlet {
    private MembreDAO membreDAO = new MembreDAO(); // DAO Instance

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1️⃣ Get data from form
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String dateNaissanceStr = request.getParameter("date_naissance");
        String sportPratique = request.getParameter("sport_pratique");

        // 2️⃣ Validate data
        if (name == null || password == null || dateNaissanceStr == null || name.trim().isEmpty()) {
            response.sendRedirect("addMember.jsp?error=missing_fields");
            return;
        }

        try {
            // 3️⃣ Convert date string to Date object
            Date dateNaissance = new SimpleDateFormat("yyyy-MM-dd").parse(dateNaissanceStr);

            // 4️⃣ Create Membre object
            Membre membre = new Membre(name, password, dateNaissance, sportPratique);

            // 5️⃣ Call DAO to insert into DB
            boolean success = membreDAO.addMembre(membre);

            // 6️⃣ Redirect based on success
            if (success) {
                response.sendRedirect("manageMembers.jsp?success=true");
            } else {
                response.sendRedirect("addMember.jsp?error=insert_failed");
            }
        } catch (ParseException e) {
            response.sendRedirect("addMember.jsp?error=invalid_date");
        }
    }
}

