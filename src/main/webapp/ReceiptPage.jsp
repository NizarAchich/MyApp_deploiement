<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-01-08
  Time: 09:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.demo1.JavaClasses.Receipt" %>
<%@ page import="com.example.demo1.JavaClasses.Produit" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Recipt</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
</head>
<% Receipt receipt = (Receipt) request.getAttribute("receipt");
    List<Produit> produitList = receipt.getProduitList();%>
<body class="container">
<div class="row my-5">
    <p id="greeting" class="fw-semibold">Bonjour , ${receipt.client.prenom} ${receipt.client.nom}</p>
    <p>Vous trouverez ci-joint le Recu de votre Commande</p>
</div>
<div class="row">
    <h2 class="text-center">Recu</h2>
    <hr>
</div>
<div class="row d-flex flex-row justify-content-between">
    <div class="col-2 d-flex flex-column">
        <div class="row"><span class="fs-6 fw-semibold">Prénom: ${receipt.fournisseur.prenom}</span></div>
        <div class="row"><span class="fs-6 fw-semibold">Nom: ${receipt.fournisseur.nom}</span></div>
        <div class="row"><span class="fs-6 fw-semibold">Tél: ${receipt.fournisseur.tel}</span></div>
        <div class="row"><span class="fs-6 fw-semibold">Email: <a href="mailto:"+${receipt.fournisseur.email}>${receipt.fournisseur.email}</a> </span></div>
        <div class="row"><span class="fs-6 fw-semibold">Adresse: ${receipt.fournisseur.adresse}</span></div>
    </div>
    <div class="col-2 d-flex flex-column">
        <div class="row"><span class="fs-6 fw-semibold">Prénom: ${receipt.client.prenom}</span></div>
        <div class="row"><span class="fs-6 fw-semibold">Nom: ${receipt.client.nom}</span></div>
        <div class="row"><span class="fs-6 fw-semibold">Tél: ${receipt.client.tel}</span></div>
        <div class="row"><span class="fs-6 fw-semibold">Email: <a href="mailto:" + ${receipt.client.email}>${receipt.client.email}</a></span></div>
        <div class="row"><span class="fs-6 fw-semibold">Adresse: ${receipt.client.adresseDeLivraison}</span></div>
    </div>
</div>
<br>
<div class="row">
    <table class="table table-sm table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Produit</th>
            <th>Quantité</th>
            <th class="text-end w-50">Prix</th>
        </tr>
        </thead>
        <tbody class="table-group-divider">

        <%
            for (Produit produit : produitList) {
        %>
        <tr>
            <td><%=produit.getCode()%></td>
            <td><%=produit.getNom()%></td>
            <td><%=produit.getQuantite()%></td>
            <td class="text-end w-50"><%=produit.getPrix()%></td>
        </tr>
        <%
            }
        %>

        </tbody>
        <tfoot class="table-group-divider">
        <tr>
            <td colspan="3" class="border-0">
                &nbsp;
            </td>
            <td colspan="1" class="border-0 px-0 py-0">
                <div class="row justify-content-between border border-2 border-dark mx-0 ">

                    <div class=" col-5 d-flex flex-column text-end">
                        <span>Total HT:</span>
                        <span>TPS (5%):</span>
                        <span>TVQ (9.975%):</span>
                        <h5>Total:</h5>
                    </div>
                    <div class=" col-5 d-flex flex-column text-end">
                        <span>${String.format("%.2f",receipt.amount.totalAmountHT)} $</span>
                        <span>${String.format("%.2f",receipt.amount.amountTPS)} $</span>
                        <span>${String.format("%.2f",receipt.amount.amountTVQ)} $</span>
                        <h5>${String.format("%.2f",receipt.amount.totalAmountTTC)} $</h5>
                    </div>
                </div>
            </td>
        </tr>
        </tfoot>
    </table>
</div>
<br>
<div class="row">
    <p class="fw-bold">la livrison sera effectuée a l'adresse suivante: ${receipt.client.adresseDeLivraison}</p>
</div>
<br>
<div>
    <p class="fst-italic fs-6 text-end">Recu Crée le : <strong>${receipt.currentStringDateAndTime}</strong></p>
</div>
<div class="row">
    <button type="button" class="btn btn btn-primary text-center">Imprimer Recu</button>
</div>
</body>

</html>
