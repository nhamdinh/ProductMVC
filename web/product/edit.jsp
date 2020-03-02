<%--
  Created by IntelliJ IDEA.
  User: tom
  Date: 02/03/2020
  Time: 17:32
  To change this template use File | Settings | File Templates.
  --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
</head>
<body>
<h1>Edit product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>Prime: </td>
                <td><input  type="number" name="prime" id="prime" value="${requestScope["product"].getPrime()}"></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td><input type="text" name="description" id="description" value="${requestScope["product"].getDescription()}"></td>
            </tr>
            <tr>
                <td>Company: </td>
                <td><input type="text" name="company" id="company" value="${requestScope["product"].getCompany()}"></td>
            </tr>

            <tr>
                <td></td>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>