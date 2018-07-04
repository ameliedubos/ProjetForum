<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<%-- <title><spring:message code="login.title" /></title> --%>
<link href="<c:url value="/static/css/styles.css" />" rel="stylesheet">
</head>
<body>
<div class="container">
	<h2>
	Authentification
<%-- 		<spring:message code="login.title" /> --%>
	</h2>
	<br>
<%-- 	<c:if test="${param.error}"> --%>
<%-- 		<span class="error"><spring:message code="login.inconnu" /></span> --%>
<%-- 	</c:if> --%>
<%-- 	<c:if test="${param.logout}"> --%>
<%-- 		<span class="error"><spring:message code="login.logout" /></span> --%>
<%-- 	</c:if> --%>
	<form method="POST" action="<c:url value="/login" />">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<label for="username">Nom d'utilisateur (email)</label>
		<input type="text" name="username" value="" class="form-control">
		<br>
		<label for="password">Login</label>
		<input type="password" name="password" value="" class="form-control">
		<br>
		<input class="btn btn-primary" type="submit" value="Valider" />
	</form>
	
</div>
</body>
</html>