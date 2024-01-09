package com.example.demo1.Servlet;

import com.example.demo1.JavaClasses.Client;
import com.example.demo1.JavaClasses.Fournisseur;
import com.example.demo1.JavaClasses.Produit;
import com.example.demo1.JavaClasses.Receipt;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ReceiptServlet", value = "/ReceiptServlet")
public class ReceiptServlet extends HttpServlet {
    private Receipt receipt;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Affectation des Variables
        request.setAttribute("receipt",receipt);

        // redériger Vers la JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("ReceiptPage.jsp");
        dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupérer les données
        // Données du fournisseur
        String nomFr = request.getParameter("nomFr");
        String prenomFr = request.getParameter("prenomFr");
        String telFr = request.getParameter("telFr");
        String adresseFr = request.getParameter("adresseFr");
        String emailFr = request.getParameter("emailFr");

        // Données client
        String nomCl = request.getParameter("nomCl");
        String prenomCl = request.getParameter("prenomCl");
        String telCl = request.getParameter("telCl");
        String adresseCl = request.getParameter("adresseCl");
        String emailCl = request.getParameter("emailCl");
        String adresse_Fact_Cl = request.getParameter("adresse_fact_cl");

        // Données de la commande
        String [] codePr = request.getParameterValues("codePr");
        String [] nomPr = request.getParameterValues("nomPr");
        String [] quantitePr = request.getParameterValues("quantitePr");
        String [] prixPr = request.getParameterValues("prixPr");

        // Création des objets
        Fournisseur fournisseur =new Fournisseur(nomFr,prenomFr,adresseFr,emailFr,telFr);
        Client client = new Client(nomCl,prenomCl,adresseCl,emailCl,telCl,adresse_Fact_Cl);
        List<Produit> produitList =  new ArrayList<>();
        if (codePr !=null) {
            for (int i = 0; i < codePr.length; i++) {
                int quantite = Integer.parseInt(quantitePr[i]);
                double prix = Double.parseDouble(prixPr[i]);

                Produit produit = new Produit(codePr[i], nomPr[i], quantite, prix);
                produitList.add(produit);
            }
            receipt = new Receipt(fournisseur,client,produitList);
            response.sendRedirect("ReceiptServlet");
        }
        else {
            System.out.println("Commande est vide");
        }

    }
}
