<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Edit</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h2><a href="index.html">Home</a> </h2>
        <h3>Edit meal</h3>
        <hr>
        <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.Meal" scope="request"/>
        <form method="post" action="meals">
            <input type="hidden" name="id" value="${meal.id}">
            <dl>
                <dt>DateTime:</dt>
                <dd><input type="datetime-local" value="${meal.dateTime}" name="dateTime"></dd>
            </dl>
            <dl>
                <dt>Description:</dt>
                <dd><input type="text" value="${meal.description}" name="description" size="40"></dd>
            </dl>
            <dl>
                <dt>Calories:</dt>
                <dd><input type="number" value="${meal.calories}" name="calories"></dd>
            </dl>
            <button type="submit">Save</button>
            <button onclick="window.history.back()">Cancel</button>
        </form>
    </body>
</html>
