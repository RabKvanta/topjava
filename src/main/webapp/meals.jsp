<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %><%--
  Created by IntelliJ IDEA.
  User: Ася
  Date: 08.02.2020
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Meals</title>
    <style>
            .normal {color : green}
            .exceeded {color: red}
    </style>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
        <table border ="1" cellpadding="8" cellspacing="0">
        <tread>
         <tr>
            <th>Date</th>>
            <th>Description</th>
            <th>Calories</th>
         </tr>
        </tread>
        <c:forEach items ="${meals}" var = "meal">
            <jsp:useBean id ="meal" scope="page" type="ru.javawebinar.topjava.model.MealTo"/>
            <tr class="${meal.isExcess() ? 'exceeded' : 'normal'}">
                <td>
                    <%=TimeUtil.toString(meal.getDateTime())%>
                </td>
                <td>${meal.description}</td>
                <td>${meal.calories}</td>
            </tr>
        </c:forEach>
        </table>>

</body>
</html>
