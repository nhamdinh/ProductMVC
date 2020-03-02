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
                <td><input src="data:image/jpeg;base64,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" type="text" name="description" id="description" value="${requestScope["product"].getDescription()}"></td>
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