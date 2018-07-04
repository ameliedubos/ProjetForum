<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Accueil</title>
</head>
<body>
<div class="container">
<br>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">ForumInfo</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="active"><a href="#">Page 1</a></li>
      <li class="active"><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="<c:url value="/utilisateur/goToCreer" />"><span class="glyphicon glyphicon-user"></span> S'inscrire</a></li>
      <li><a href="<c:url value="/login.jsp" />"><span class="glyphicon glyphicon-log-in"></span> S'identifier</a></li>
      <li><a href="<c:url value="/logout" />"><span class="glyphicon glyphicon-log-out"></span> Se déconnecter</a></li>
    </ul>
  </div>
</nav>

<div>
<img src="<c:url value="/static/images/Forum.jpg" />" width="300" />
<br>
</div>


	<c:forEach var = "j" begin = "1" end = "3">
	    Rubrique <c:out value = "${j}"/><p>	
	<c:forEach var = "i" begin = "1" end = "5">
         Sujet <c:out value = "${i}"/><p>
      </c:forEach>
      </c:forEach>
		
		<a href="<c:url value="/sujet/ajouterSujet" />">Ajouter un sujet</a>



         
		
<%-- 		<c:forEach items="${listeRubrique}" var="rubrique"> --%>
<%-- 		Rubrique: <c:out value="${rubrique.nom}" />&nbsp; --%>
<%-- 		<c:forEach items="${listeRubrique.listeSujet}" var="sujet">	 --%>
<%-- 			<c:out value="${listeSujet.titre}" />&nbsp;		 --%>
<%-- 		</c:forEach> --%>
<%-- 		</c:forEach> --%>
	







</div>
</body>
</html>