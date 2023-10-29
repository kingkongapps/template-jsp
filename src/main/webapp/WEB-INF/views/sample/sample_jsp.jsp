<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Sample - JSP</title>
    <style>
        table {
          width: 100%;
        }
        table, th, td {
          border: 1px solid #bcbcbc;
        }
    </style>
</head>
<body>
    <H1>Sample - JSP</H1>

    <h2> Server time is ${serverTime}</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Cell Phone</th>
        </tr>
        <c:forEach var="sample" items="${sampleList}">
        <tr>
            <td>${sample.id}</td>
            <td>${sample.name}</td>
            <td>${sample.addr}</td>
            <td>${sample.cellPhone}</td>
        </tr>
        </c:forEach>
    </table>

</body>
</html>