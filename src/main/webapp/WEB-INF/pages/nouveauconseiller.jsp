<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
<style>
body {
 
background-image: linear-gradient(to bottom, rgba(255,255,255,0.6) 0%,rgba(255,255,255,0.6) 0%), 
					url("${pageContext.request.contextPath}/resources/img/Green8.jpg");
}
ul {
    width: 70%;
    margin: auto;
}
}
.nav {
    overflow: hidden;
   background-color: rgb(244,253,174);
    position: fixed; /* Set the navbar to fixed position */
    top: 0; /* Position the navbar at the top of the page */
    width: 100%; /* Full width */
}
.main {
  margin-top: 30px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Creer un Nouveau Compte Client</title>
</head>
<body>
  
<div class="navbar fixed-top">

	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="${pageContext.request.contextPath}/conseiller"><strong>Home</strong></a></li>
			
		<li class="nav-item"><a class="nav-link active" data-toggle="tab"
			href="${pageContext.request.contextPath}/nouveauconseiller"><strong>Nouveau Compte</strong></a></li>
	<!-- 
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="./ClientUpdateServlet"><strong>Mise à Jour Compte Client</strong></a></li>
			
		<li class="nav-item"><a class="nav-link" href="./ListerUnClientServlet"><strong>Lister un Client</strong></a></li>
		
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="./VirementServlet"><strong>Virements</strong></a></li>numCarteVisaPremier
		 -->	
			</ul>
			</div>
			
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><h2>La page n'est malheureusement pas encore active!</h2></p>

<div class="main">
<div class="row"> 
<div class="col-lg-4">
			<div class="card text-white bg-primary mb-3"
				style="max-width: 20rem;">
				<div class="card-header">Creation d'un conseiller</div>
				<div class="card-body">
					<h4 class="card-title">Precautions d'usage</h4>
					<p class="card-text">Bien verifier les donnees saisies avant de valider</p>
				</div>
			</div>
			</div>
<div class="col-xs-1">
</div>
<div class="col-lg-4">

<form:form name="conseiller" method="post" action="save" commandName="conseiller">
<div class="form-group">
 <label class="col-form-label" for="inputDefault">Nom</label>
 <form:input path="nom" name="nom" class="form-control" placeholder="nom" id="inputDefault" onkeyup="fullLetter(document.client.nom), this.value=removeExtraSpaces(this.value)" type="text" required="required"/> 
<!-- <input name="nom" class="form-control" placeholder="nom" id="inputDefault" onkeyup="fullLetter(document.client.nom), this.value=removeExtraSpaces(this.value)" type="text" required="required"/> -->
 <label class="col-form-label" for="inputDefault">Prenom</label>
  <form:input path="prenom" name="prenom" class="form-control" placeholder="prenom" id="inputDefault" onkeyup="fullLetter(document.client.prenom), this.value=removeExtraSpaces(this.value)" type="text" required="required"/>

   <label class="col-form-label" for="inputDefault">Reference Conseiller</label>
  <form:input path="refEmployee" name="refEmployee" class="form-control" placeholder="reference Conseiller" id="inputDefault" onkeyup="fullLetter(document.client.prenom), this.value=removeExtraSpaces(this.value)" type="text" required="required"/>


 
<p>&nbsp;</p>
	<button type="reset" class="btn btn-warning" onclick="history.go(-1)">Retour</button>
    <button type="reset" class="btn btn-danger">Annuler</button>
    <button type="submit" class="btn btn-primary">Valider</button>
    </div>
    </form:form>
 </div>
 </div>
</div>
<script>
 function fullLetter(inputTXT) {
              
              var letters=/^[a-z\-\s]+$/i;
              if(inputTXT.value.match(letters)){
                
                return true;
              } else {
                
                alert("Vous devez entrer un caratere!");
              // letters=letters.replace(/[0-9]+/g,'');
              // document.write(letters);
                return false;
              }
          }

 function removeExtraSpaces(stringInput){
 return stringInput.split('  ').join(' ');
  //return stringInput.replace(/\s+/g,' ').trim();
 }

 function removeSpaces(string){
            return string.split(' ').join('');
          }numCarteVisaPremier
 function fullNumeral(inputNUM) {
              
              var numbers=/^[0-9\.]+$/;

              if(inputNUM.value.match(numbers)){
                return true;
              } else {
                
                alert("Vous devez entrer un chiffre!");

                return false;
              }
          }

function twoDecimal(){
var inputField = document.getElementById('inputDecimal');
 
inputField.addEventListener('change', function() {
    var v = parseFloat(this.value);
    if (isNaN(v)) {
        this.value = '';
    } else {
      this.value = this.value.replace (/(\.\d\d)\d+|([\d.]*)[^\d.]/, '$1$2');
        //this.value = v.toFixed(2);
    }
});
}
    </script>
</body>
</html>