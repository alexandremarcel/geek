<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>

<link href="<c:url value="css/app.css" />" rel="stylesheet"
	type="text/css">

</head>
<body class="security-app">
 <h1>Accueil</h1>
 <form  method="post">
    <div class="lc-block">
   			 <div>
   			 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost/geek" user="root" password="" />

		<sql:query dataSource="${snapshot}" var="result">SELECT Post, Date, Nom from post, user where 1;</sql:query>

		<table border="1" width="100%">
			<tr>
				<th>Nom User</th>
				<th>Post</th>
				<th>Date</th>
			</tr>
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.Nom}" /></td>
					<td><c:out value="${row.Post}" /></td>
					<td><c:out value="${row.Date}" /></td>
				</tr>
			</c:forEach>
		</table>
   			 </div>
			<div>
				<input type="text" class="style-4" name="Nom"
					placeholder="User Name" />
			</div>
			<div>
				<input type="date" class="style-4" name="date"
					placeholder="date" />
			</div>
			<div>
				<input type="Post" class="style-4" name="Post"
					placeholder="Post" />
			</div>
			<div>
				<input type="submit" value="GO" class="button red small" />
			</div>
			
		</div>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
</form>
</body>
</html>