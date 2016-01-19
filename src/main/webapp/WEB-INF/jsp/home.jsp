<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="css/app.css" />" rel="stylesheet"
	type="text/css">
<title>TP JEE</title>
</head>
<body class="security-app">
	<div class="details">
		<h2>Mon beau site magnifique qui va me ramener une bonne note ;)</h2>
		
	</div>
	<div class="lc-block">
		<h1>Bienvenue !</h1>
		<div class="alert-normal">
			Clique <a href="<spring:url value='/hello' />">ici</a> pour voir ton nom.
		</div>
	</div>
</body>
</html>
