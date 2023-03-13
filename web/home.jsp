<%@ page import="models.Task" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Nazerke^_^
  Date: 02.03.2023
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="header.jsp"%>
    <style>
        .details_b{
            text-decoration: none;
            background-color: midnightblue;
            padding: 5px;
            color: white;
        }
    </style>
</head>
<body>
    <a href="/addTask" style="background-color: midnightblue;padding: 5px;color: white;text-decoration: none">+ Добавить задания</a>
    <table cellpadding="10px" border="1px" style="margin-top: 30px">
        <thead>
        <th>ID</th>
        <th>Наименование</th>
        <th>Крайний срок</th>
        <th>Выполнено</th>
        <th>Детали</th>
        </thead>
        <tbody>
        <%
            List<Task> items = (List<Task>) request.getAttribute("tasks");
            for (Task item : items) {
        %>
        <tr>
            <td><%=item.getId()%></td>
            <td><%=item.getName()%></td>
            <td><%=item.getDeadlineDate()%></td>
            <td><%=item.getDone()%></td>
            <td><a  class="details_b" href="/detailsTask?id=<%=item.getId()%>">DETAILS</a></td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</body>
</html>
