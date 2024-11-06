<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Hacke
  Date: 05-11-2024
  Time: 08:02 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th>Id</th>
        <th>Password</th>
        <th>Full name</th>
        <th>Email</th>
        <th>Admin</th>
    </tr>
    </thead>
    <tbody>
    <jsp:useBean id="listUser" scope="request" type="java.util.List"/>
    <c:forEach items="${listUser}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.password}</td>
            <td>${user.fullname}</td>
            <td>${user.email}</td>
            <td>${user.admin}</td>
        </tr>

    </c:forEach>
    </tbody>
</table>
</body>
</html>
