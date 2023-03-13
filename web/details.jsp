<%@ page import="models.Task" %><%--
  Created by IntelliJ IDEA.
  User: Nazerke^_^
  Date: 05.03.2023
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

    <title>Title</title>
  <%@include file="header.jsp"%>
    <style>
        input{
            width: 40%;
            height: 25px;
            padding: 2px;
        }
        select{
            width:40%;
            padding: 3px;
        }
        h3{
            margin: 10px 5px;
            font-size: 20px;
        }
        body{
            display: flex;
            flex-direction: column;
            padding: 10px 10px;
        }
        button{
            width: 100px;
            margin-top:15px;
        }
        .delete{
            background-color: firebrick;
            color: white;
            width: 100px;
            padding: 5px;
            text-decoration: none;
            border: 2px black solid;
        }
    </style>
</head>
<body>
    <%
        Task item = (Task) request.getAttribute("item");
        if (item!=null) {
    %>
    <form action="/save" method="post">
        <h3>Наименование:</h3>
        <input type="text" style="display: none" placeholder="id" name="id" value="<%=item.getId()%>">
        <input type="text" placeholder="Наименование" name="i_name" value="<%=item.getName()%>">
        <h3>Описание:</h3>
        <input type="text" style="height: 150px" placeholder="Описание" name="i_description" value="<%=item.getDescription()%>">
        <h3>Крайний срок</h3>
        <input type="date" placeholder="Insert name" name="i_date" value="<%=item.getDeadlineDate()%>">
        <h3>Выполнено</h3>
        <select name="i_status">
            <option>Да</option>
            <option>Нет</option>
        </select><br>
     <button style="background-color:green;color: white;padding: 5px">Сохранить</button></a>
    </form>
    <a class='delete' href="/delete?id=<%=item.getId()%>">Удалить<a>
    <%
        }
    %>
</body>
</html>
