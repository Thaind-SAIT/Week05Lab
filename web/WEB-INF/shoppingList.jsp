<%-- 
    Document   : shoppingList
    Created on : Oct 16, 2020, 10:28:01 AM
    Author     : 808278
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>
            Hello, ${username} 
            <a href="<c:url value='ShoppingList'>
                   <c:param name='action' value='logout' />
            </c:url>">Logout</a>
        </p>
        <h2>List</h2>
        <form action="" method="post">
            Add item: 
            <input type="text" name="newItem" value="">
            <input type="submit" value="Add">
            <input type="hidden" name="action" value="add">
        </form>
        <br>
        <form action="" method="post">
            <c:forEach items="${items}" var="item">
                <input type="radio" name="item" value="${item}">${item} <br>
            </c:forEach>
            <c:if test="${items.size() gt 0}">
                <input type="submit" value="Delete" >
                <input type="hidden" name="action" value="delete">
            </c:if>
        </form>
    </body>
</html>
