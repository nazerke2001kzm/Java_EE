<%--
  Created by IntelliJ IDEA.
  User: Nazerke^_^
  Date: 05.03.2023
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <%@include file="header.jsp"%>
    <style>
        input{
            height: 30px;
            width: 50%;
            font-size: 15px;
            margin-bottom: 10px;
        }
        form{
            display: flex;
            flex-direction: column;
        }
        button{
            width: 100px;
            height: 20px;
            margin:10px ;
        }
        h3{
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>Новое задание</h1>
    <form action="/addTask" method="post">
        <h3>Наименование:</h3>
        <input type="text" placeholder="Наименование" name="i_name">
        <h3>Описание:</h3>
        <input type="text" style="height: 200px" placeholder="Описание" name="i_description">
        <h3>Крайний срок</h3>
        <input type="date" placeholder="Insert name" name="i_date">
        <a href="/home"><button type="button">Закрыть</button></a>
        <button>Добавить</button>
    </form>
</body>
</html>
