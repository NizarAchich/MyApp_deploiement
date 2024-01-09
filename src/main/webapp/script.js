function AjouterCommande(){
    var ligne = document.createElement('tr');
    ligne.innerHTML =
        '                                <td><input class="form-control me-2" name="codePr"></td>\n' +
        '                                <td><input class="form-control me-2" name="nomPr"></td>\n' +
        '                                <td><input class="form-control me-2" name="quantitéPr"></td>\n' +
        '                                <td><input class="form-control me-2" name="prixPr"></td>\n'+
        '                                <td><button class="btn btn-danger" onclick="Supprimer(this)">Supprimer</button></td>';
    var body = document.getElementById('myTableBody');
    body.appendChild(ligne);
}

function Supprimer(element){
    var ligne = element.parentNode.parentNode;
    var body = document.getElementById('myTableBody');
    body.removeChild(ligne);

}