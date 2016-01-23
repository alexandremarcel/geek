<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
		<h1>Posts</h1>

		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost/geek" user="root" password="" />

		<sql:query dataSource="${snapshot}" var="result">SELECT * from post;</sql:query>

		<table border="1" width="100%">
			<tr>
				<th>id U</th>
				<th>id P</th>
				<th>Post</th>
				<th>Date</th>
			</tr>
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.idU}" /></td>
					<td><c:out value="${row.idP}" /></td>
					<td><c:out value="${row.Post}" /></td>
					<td><c:out value="${row.Date}" /></td>
				</tr>
			</c:forEach>
		</table>

	</div>

</body>
</html>