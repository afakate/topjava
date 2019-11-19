<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <title>Meals</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h3><a href="index.html">Home</a></h3>
        <hr>
        <h2>Meals</h2>
        <table>
            <tr>
                <th>Time</th>
                <th>Description</th>
                <th>Calories</th>
            </tr>
            <c:forEach var="m" items="${mealsTo}">
            <jsp:useBean id="m" scope="page" type="ru.javawebinar.topjava.model.MealTo"/>
            <tr class="${m.excess ? 'excess' : 'normal'}">
                <td>
                    <fmt:parseDate value="${m.dateTime}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate"/>
                    <fmt:formatDate value="${parsedDate}" pattern="yyyy.MM.dd HH:mm"/>
                </td>
                <td>${m.description}</td>
                <td>${m.calories}</td>
            </tr>
        </c:forEach>
        </table>
    </body>
</html>
