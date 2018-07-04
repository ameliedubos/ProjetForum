<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<title><c:out value="${pageTitle}" /></title>
<link href="<c:url value="/static/css/styles.css" />" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
</head>
<body>
	<div align="center">
		<h2>
			<c:out value="${message}" />
		</h2>
	</div>
	<br>
	<form method="POST" action="creer" modelAttribute="usr">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<div align="center">
			<TABLE BORDER=0>
				<tr>
					<td nowrap><form:label path="usr.pseudo">
							<spring:message code="utilisateur.pseudo" />
						</form:label></td>
					<td><form:input path="usr.pseudo" class="form-control" /></td>
					<td><form:errors path="usr.pseudo" cssClass="errors" /></td>
				</tr>
				<tr>
					<td nowrap><form:label path="usr.email">
							<spring:message code="utilisateur.email" />
						</form:label></td>
					<td><form:input path="usr.email" class="form-control" /></td>
					<td><form:errors path="usr.email" cssClass="errors" /></td>
				</tr>
				<tr>
					<td nowrap><spring:message code="utilisateur.motDePasse" /></td>
					<td><form:password path="usr.password" class="form-control"/></td>
					<td><form:errors path="usr.password" cssClass="errors" /></td>
				</tr>
			</TABLE>
		</div>
		<br>
		<div align="center">
			<input type="submit" class="btn btn-success" value="Valider"
				align="center" /> <br> <br> <a href="home">Retour</a>
		</div>
	</form>
</body>
</html>