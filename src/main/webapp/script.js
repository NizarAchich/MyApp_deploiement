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