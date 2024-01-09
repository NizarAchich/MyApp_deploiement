function AjouterCommande(){
    var ligne = document.createElement('tr');
    ligne.innerHTML =
        '                                <td><input class="form-control me-2" name="codePr" required></td>\n' +
        '                                <td><input class="form-control me-2" name="nomPr" required></td>\n' +
        '                                <td><input class="form-control me-2" name="quantitePr" required></td>\n' +
        '                                <td><input class="form-control me-2" name="prixPr" required></td>\n'+
        '                                <td><button class="btn btn-danger" onclick="Supprimer(this)">Supprimer</button></td>';
    var body = document.getElementById('myTableBody');
    body.appendChild(ligne);
}

function Supprimer(element){
    var ligne = element.parentNode.parentNode;
    var body = document.getElementById('myTableBody');
    body.removeChild(ligne);

}

function ImprimerRecu(){
    var fenetreImpression = window.open('','_blanck');
    var contenuImpression = document.getElementById('ReceiptContent').innerHTML;
    fenetreImpression.document.write('<html><head>' +
        '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"\n' +
        '          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">\n' +
        '<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"\n' +
        '          integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"\n' +
        '          crossorigin="anonymous"></script><title>Imprimer Recu</title></head><body class="container-fluid">'
        + contenuImpression + '</body></html>');
    fenetreImpression.document.close();
    fenetreImpression.print();
}