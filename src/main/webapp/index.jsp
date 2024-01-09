<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Bienvenue Au créateur de Recu</h1>
<form>
    <h4>Information du Fournisseur :</h4>
    <div>
        <label for="Fr_nom">Nom:</label>
        <input id="Fr_nom" type="text" placeholder="nom du fournisseur" required>
    </div>

    <div>
        <label for="Fr_prenom">Prénom:</label>
        <input id="Fr_prenom" type="text" placeholder="prénom du fournisseur" required>
    </div>

    <div>
        <label for="Fr_Adress">Adresse:</label>
        <input id="Fr_Adress" type="text" placeholder="Addresse du fournisseur" required>
    </div>

    <div>
        <label for="Fr_tel">Tél:</label>
        <input id="Fr_tel" type="tel" placeholder="Téléphonne du fournisseur" required>
    </div>

    <div>
        <label for="Fr_mail">Email:</label>
        <input id="Fr_mail" type="email" placeholder="Email du fournisseur" required>
    </div>

    <h4>Information du client:</h4>
    <div>
        <label for="Cl_nom">Nom:</label>
        <input id="Cl_nom" type="text" placeholder="Nom du client" required>
    </div>

    <div>
        <label for="Cl_prenom">Prénom:</label>
        <input id="Cl_prenom" type="text" placeholder="Prénom du client" required>
    </div>

    <div>
        <label for="Cl_tel">Numéro de téléphonne:</label>
        <input id="Cl_tel" type="tel" placeholder="Téléphonne du client" required>
    </div>

    <div>
        <label for="Cl_mail">Email:</label>
        <input id="Cl_mail" type="email" placeholder="Email du client" required>
    </div>

    <div>
        <label for="Cl_Fact_Adress">Addresse de facturation:</label>
        <input id="Cl_Fact_Adress" type="text" placeholder="Addresse du client" required>
    </div>

    <div>
        <label for="Cl_Adress">Addresse de Livraison:</label>
        <input  id="Cl_Adress" type="text" placeholder="Addresse du client" required>
    </div>

    <h4>Détail de la commande</h4>
    <div>
        <label for="Pr_code">code Produit:</label>
        <input id="Pr_code" type="text" placeholder="Code du produit" required>
    </div>

    <div>
        <label for="Pr_nom" >Nom:</label>
        <input id="Pr_nom" type="text" placeholder="Nom du produit" required>
    </div>

    <div>
        <label for="Pr_quan">Quantité:</label>
        <input id="Pr_quan" type="number" placeholder="Quantité Vendue" required>
    </div>

    <div>
        <label for="Pr_price" >Prix:</label>
        <input id="Pr_price" type="number" placeholder="Prix de vente" required>
    </div>
    <button type="button">Ajouter Une Commande</button>
    <br>
    <button type="submit">Générer Recu</button>
</form>
</body>
</html>