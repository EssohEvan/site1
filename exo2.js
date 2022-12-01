function affichage_tableau ()
{
    document.write("<table border=2 width=30%>");
    for (let i = 0; i<=5; i++)
    {
        document.write("<tr> <td>*</td> <td>*</td> <td>*</td> </tr>");

    }
    document.write("</table>");
}

function tableau2 ()
{
    var ligne = prompt("donner le nombre de ligne a afficher,");
    document.write("<table=2 width=30%;>");
    for (i= 1; i <=ligne; i++) {
        document.write("<tr> <td> "+i+" </td> <td>*</td> <td>*</td> </tr>")
    }
    document.write("<table>")
}

function connexion2 () 
{
    var i = 0;
    do {
        var id = prompt("donnez votre nom d'utilisateur");
        var mdp = prompt("entrez votre mot de passe");
        if (id == "admin" && mdp == "admin")
        {
            document.write("bienvenue:     "+id);
            break;
        }
        else

        alert("Acès refuse");
        i+=1;
    } while (i<3);
    if (i == 3)
    alert("delai depassé");
}

function se_connecter(){
    var id = prompt("donnez votre nom d'itulisateur");
    var mdp = prompt("entrez votre mot de passe");
    if (id == "admin" && mdp == "admin")
    {
        document.write("bienvenue:     "+id);
    }
    else
    {
        alert("Acès refuse");
    }
}
function chaine_de_caractere ()
{
    var chaine= prompt("donnez un mot")
    document.write(chaine.toUpperCase()+"<br>");
    document.write(chaine.toUpperCase()+"<br>");
    document.write("la chaine contient     " +chaine.length+" caratere    "+"<br>");
    document.write("la premiere lettre est    " +chaine.substr(0,1)+"<br>");

}

function swich ()  {
    var color = prompt("entrez une couleur ");
    switch(color)
    {
        case "rouge" : document.body.style.background = "red"
        break;
        case "Rouge" : document.body.style.background = "red"
        break;
        case "bleu" : document.body.style.background = "Blue"
        break;
        case "BLEU" : document.body.style.background = "blue"
        break;

        default:alert("couleur non definie");
    }
}
    
function bonusfunc ()
{
    var article
    var price
    var quantity
    var total=0;

    do{
        article = prompt("Votre article");
        price = prompt("le prix");
        quantity = prompt("la quantité");

        res = Number(price)+ Number(quantity);
        total = total + res;

        alert("Votre facture : " + total);

        next = prompt("Voulez vous continuer (oui/stop)?")

    }
    while(next !="Stop")
}