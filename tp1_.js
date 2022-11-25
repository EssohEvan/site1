function Calcul_moyenne()
{
    var note1= prompt("donner la premiere note: ");
    var note2= prompt("donner la deuxieme note: ");
    var note3= prompt("donner la troisieme note: ");

    var somme = Number(note1)+Number(note2)+Number(note3);

    document.write("vloici la moyenne: " + somme + "<br>");
    var moyenne= somme/3;

    document.write("voici la moyenne:" + moyenne +"<br>");

    if(moyenne<10)
    document.write("vous etes redoublant");
    else
    document.write("vous etes admis");

}

function Test_age()
{
    var age= prompt("donnez votre age");
    if(age <18)
    {
        document.write("vous etes mineur");
        document.body.style.background = "red";
    }
    else
    {
        document.write("vous etes majeurs");
        document.body.style.background = "green";
    }
}

function Simple_affichage()
{
    var nom = prompt("donner votre Nom");
    var prenom = prompt("donner votre Prenom");

    document.write("<div style='margin:auto; width:300px ; border:2px solid blue; '>");
    document.write("Bonjour " + Prenom + " " + nom);
    document.write("<div>");
}


function Test_couleur()
{
    var c =prompt("donner sune couleur");
    if ( c== "rouge" || c == "ROUGE" || c=="R")
    document.body.style.background = "red";
    else if ( c== "bleu" || c == "BLEU")
    document.body.style.background = "blue";
    else

    document.write("couleur non comprise");
}







function somme()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) + Number(b);

    
    t3.value = c;

}


function multiplication()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) * Number(b);

    
    t3.value = c;

}


function soustraction()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) - Number(b);

    
    t3.value = c;

}


function division()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) / Number(b);

    
    t3.value = c;

}



function permuter()
{
    var v3 ="";
    a = document.getElementById("t1").value;
    b = document.getElementById("t2").value;
    v3=a;
    a=b;
    b=v3;

    t1.value = a;
    
    t2.value = b;
}

function parite()
{
    var v = Number(document.getElementById("t1").value);
    if(v % 2==0)

       alert("ce nombre est pair");
 
 else

      alert("ce nombre est impair");
}