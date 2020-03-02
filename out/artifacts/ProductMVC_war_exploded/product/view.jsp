<%--
  Created by IntelliJ IDEA.
  User: tom
  Date: 02/03/2020
  Time: 17:32
  To change this template use File | Settings | File Templates.
  --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>View product</title>
</head>
<body>
<h1>product details</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Prime: </td>
        <td>${requestScope["product"].getPrime()}</td>
    </tr>
    <tr>
        <td>Description: </td>
        <td>${requestScope["product"].getDescription()}</td>
    </tr>    <tr>
    <td>Company: </td>
    <td>${requestScope["product"].getCompany()}</td>
</tr>

</table>
</body>
</html>