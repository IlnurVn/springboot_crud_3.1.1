<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <c:if test="${empty user.name}">
        <title>Add</title>
    </c:if>
    <c:if test="${!empty user.name}">
        <title>Edit</title>
    </c:if>
</head>
<body>
<c:if test="${empty user.name}">
    <c:url value="/systems/add" var="var"/>
</c:if>
<c:if test="${!empty user.name}">
    <c:url value="/systems/edit" var="var"/>
</c:if>
<form action="${var}" method="POST">
    <c:if test="${!empty user.name}">
        <input type="hidden" name="id" value="${user.id}">
    </c:if>
    <label>name<input value="${user.name}" type="text" name="name" id="name"></label>

    <label>lastName<input value="${user.lastname}" type="text" name="lastName" id="lastName"></label>

    <label>Age<input value="${user.age}" type="text" name="age" id="age"></label>

    <label>Password<input type="password" name="password" id="password"></label>

       <c:if test="${empty user.name}">
        <input type="submit" value="Add new user">
    </c:if>
    <c:if test="${!empty user.name}">
        <input type="submit" value="Edit user">
    </c:if>
</form>
</body>
</html>

