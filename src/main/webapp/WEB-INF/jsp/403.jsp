<%@ page language="java" contentType="text/html; charset=UTF-8"

 pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<title>TP JEE</title>

</head>

<body>

<h1>Vous n'avez pas la permission d'accéder à cette page !

</h1>

<form action="/logout" method="post">

          <input type="submit" value="Se connecter avec un utilisateur différent" /> 

          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

</form>   

</body>

</html>