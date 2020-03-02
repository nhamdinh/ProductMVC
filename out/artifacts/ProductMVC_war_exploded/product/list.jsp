<%--
  Created by IntelliJ IDEA.
  User: tom
  Date: 02/03/2020
  Time: 17:31
  To change this template use File | Settings | File Templates.
  --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>products</h1>
<p>
    <a href="/products?action=create">Create new Product</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Prime</td>
        <td>Description</td>
        <td>Company</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="Product">
        <tr>
            <td><a href="/products?action=view&id=${Product.getId()}">${Product.getName()}</a></td>
            <td>${Product.getPrime()}</td>
            <td>${Product.getDescription()}</td>
            <td>${Product.getCompany()}</td>

            <td><a href="/products?action=edit&id=${Product.getId()}">edit</a></td>
            <td><a href="/products?action=delete&id=${Product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>