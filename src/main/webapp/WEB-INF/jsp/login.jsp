<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="css/app.css" />" rel="stylesheet"
	type="text/css">
<title>TP JEE Geekstagram</title>
</head>
<body class="security-app">
	<div class="details">
		<h2>Authentification</h2>
	</div>

	<form action="/login" method="post">
	
		<div class="lc-block">
			<div>
				<input type="text" class="style-4" name="Nom"
					placeholder="User Name" />
			</div>
			<div>
				<input type="password" class="style-4" name="Motdepasse"
					placeholder="Password" />
			</div>
			<div>
				<input type="submit" value="Sign In" class="button red small" />
			</div>		
			<p>login : admin / mdp : admin</p>
			<c:if test="${param.error ne null}">
				<div class="alert-danger">Nom ou Mot de passe invalide</div>
			</c:if>
			<c:if test="${param.logout ne null}">
				<div class="alert-normal">Vous avez été déconnecté.</div>
			</c:if>
		</div>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

</body>
</html>