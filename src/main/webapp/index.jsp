<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
</head>
<body>
<h2 class="mt-1 mb-3 text-center">Bienvenue Au Générateur de Recu</h2>
<form class="container" action="ReceiptServlet" method="post">
    <div class="accordion" id="accordionExample">
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    Information du Fournisseur :
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <div class="mb-2">
                        <label for="Fr_nom" class="form-label my-0">Nom:</label>
                        <div class="d-flex flex-row my-0">
                            <input id="Fr_nom" type="text" class="form-control form-control-sm"
                                   placeholder="nom du fournisseur" required name="nomFr">
                            <span class="text-danger ms-2">*</span>
                        </div>
                    </div>

                    <div class="mb-2">
                        <label for="Fr_prenom" class="form-label my-0">Prénom:</label>
                        <div class="d-flex flex-row my-0">
                            <input id="Fr_prenom" type="text" class="form-control form-control-sm"
                                   placeholder="prénom du fournisseur" required name="prenomFr">
                            <span class="text-danger ms-2">*</span>
                        </div>
                    </div>

                    <div class="mb-2">
                        <label for="Fr_Adress" class="form-label my-0">Adresse:</label>
                        <div class="d-flex flex-row my-0">
                            <input id="Fr_Adress" type="text" class="form-control form-control-sm"
                                   placeholder="Addresse du fournisseur" required name="adresseFr">
                            <span class="text-danger ms-2">*</span>
                        </div>
                    </div>

                    <div class="mb-2">
                        <label for="Fr_tel" class="form-label my-0">Tél:</label>
                        <div class="d-flex flex-row my-0">
                            <input id="Fr_tel" type="tel" class="form-control form-control-sm"
                                   placeholder="Téléphonne du fournisseur" required name="telFr">
                            <span class="text-danger ms-2">*</span>
                        </div>

                    </div>

                    <div class="mb-2">
                        <label for="Fr_mail" class="form-label my-0">Email:</label>
                        <div class="d-flex flex-row my-0">
                            <input id="Fr_mail" type="email" class="form-control form-control-sm"
                                   placeholder="Email du fournisseur" required name="emailFr">
                            <span class="text-danger ms-2">*</span>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Information du client :
                </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <div class="mb-2">
                        <label for="Cl_nom" class="form-label my-0">Nom:</label>
                        <div class="d-flex flex-row my-0">
                            <input id="Cl_nom" type="text" class="form-control form-control-sm"
                                   placeholder="Nom du client" required name="nomCl">
                            <span class="text-danger ms-2">*</span>
                        </div>

                    </div>

                    <div class="mb-2">
                        <label for="Cl_prenom" class="form-label my-0">Prénom:</label>
                        <div class="d-flex flex-row my-0">
                            <input id="Cl_prenom" type="text" class="form-control form-control-sm"
                                   placeholder="Prénom du client" required name="prenomCl">
                            <span class="text-danger ms-2">*</span>
                        </div>

                    </div>

                    <div class="mb-2">
                        <label for="Cl_tel" class="form-label my-0">Numéro de téléphonne:</label>
                        <div class="d-flex flex-row my-0">
                            <input id="Cl_tel" type="tel" class="form-control form-control-sm"
                                   placeholder="Téléphonne du client" required name="telCl">
                            <span class="text-danger ms-2">*</span>
                        </div>

                    </div>

                    <div class="mb-2">
                        <label for="Cl_mail" class="form-label my-0">Email:</label>
                        <div class="d-flex flex-row my-0">
                            <input id="Cl_mail" type="email" class="form-control form-control-sm"
                                   placeholder="Email du client" required name="emailCl">
                            <span class="text-danger ms-2">*</span>
                        </div>

                    </div>

                    <div class="mb-2">
                        <label for="Cl_Fact_Adress" class="form-label my-0">Addresse de facturation:</label>
                        <div class="d-flex flex-row my-0">
                            <input id="Cl_Fact_Adress" type="text" class="form-control form-control-sm"
                                   placeholder="Addresse du client" required name="adresse_fact_cl">
                            <span class="text-danger ms-2">*</span>
                        </div>

                    </div>

                    <div class="mb-2">
                        <label for="Cl_Adress" class="form-label my-0">Addresse de Livraison:</label>
                        <div class="d-flex flex-row my-0">
                            <input id="Cl_Adress" type="text" class="form-control form-control-sm"
                                   placeholder="Addresse de la livraison" required name="adresseCl">
                            <span class="text-danger ms-2">*</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    Détail de la commande :
                </button>
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <div class="row mb-0">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Code: </th>
                                <th>Nom: </th>
                                <th>Qunatité: </th>
                                <th>Prix: ($CAD) </th>
                                <th>Action: </th>
                            </tr>
                            </thead>
                            <tbody id="myTableBody">
                            <tr>
                                <td><input class="form-control me-2" name="codePr" required></td>
                                <td><input class="form-control me-2" name="nomPr" required></td>
                                <td><input class="form-control me-2" name="quantitePr" required></td>
                                <td><input class="form-control me-2" name="prixPr" required></td>
                            </tr>
                            </tbody>
                            <tfoot>
                            <tr>
                                <td>Quantité d'article :</td>
                                <td><input disabled class="form-control"></td>
                                <td>Prix Total :</td>
                                <td><input disabled class="form-control"></td>
                            </tr>
                            </tfoot>
                        </table>
                        <button type="button" class="btn btn-success my-0" onclick="AjouterCommande()">Ajouter Une Commande</button>
                    </div>
                    <br>
                </div>
            </div>
        </div>
    </div>
    <div class="row mx-0 mt-5">
        <button type="submit" class="btn btn-primary">Générer Recu</button>
    </div>
</form>
</body>
<script src="script.js"></script>
</html>