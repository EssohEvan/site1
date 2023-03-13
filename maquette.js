function remplir(){
    const tabDesc = new Array("portable","bureau","ram 8go","clef usb 16go","souris","ecran 17 pouces");
    var listePrix = document.getElementsByClassName("prix");
    var listeQte = document.getElementsByClassName("qte");
    var listeDesc = document.getElementsByClassName("desc");
    
    for (var i=0; i< listeDesc.length;i++){
        var idesc = Math.floor(tabDesc.length *math.random());
        listeDesc[i].value = tabDesc[idesc];

        var qte = MAth.floor(10 *math.random()+1);
        var prix = MAth.floor(100 *math.random()+1);
        listeQte[i].value = qte;
        listePrix[i].value = prix;
    }
}

function ajouterLigne(){
    var newli = document.getElementById("modeleLigne").cloneNode(true);
    var lastLi = document.getElementById("lastLigne");
    var pere = document.getElementById("table_inv").firstChild.nextSibling;
}

function Calculer(){
    var total = 0;

    var listePrix = document.getElementsByClassName("prix");
    var listeQte = document.getElementsByClassName("qte");
    var listeTtl = document.getElementsByClassName("totalLigne");

    for (var i=0; i< listePrix.length;i++){
        listeTtl[i].value = parseInt(listeQte[i].value)*parseInt(listePrix[i].value);
        total= total + parseInt(listeTtl[i].value);
    }

    var soustt = listeTtl;
     soustotal.value= soustt;
}

