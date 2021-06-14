<%-- 
    Document   : index
    Created on : 14 de jun. de 2021, 13:23:49
    Author     : Rodrigo
--%>
<%@page import="db.Disciplinas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Rodrigo Carvalho Francisco</h1>
        <h1>RA:1290481922018 </h1>
        <h2>Agosto/2019</h2>
        <a href="https://github.com/KaruRodrigo">Github.com/KaruRodrigo</a>
        <hr/>
        
        <% String login = (String) session.getAttribute("user.login");%>
        <%if(login == null){%>
            <div>Esta página é restrita a usuários logados.</div>
        <%}else{%>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Nota P1</th>
                <th>Nota P2</th>
                <th>Média</th>
            </tr>
            <%for(Disciplinas disciplina: Disciplinas.getDisciplinas()){%>
                <tr>
                    <td><%= disciplina.getNome()%></td>
                    <td><%= disciplina.getNotap1()%></td>
                    <td><%= disciplina.getNotap2()%></td>
                    <td> <%=(disciplina.getNotap1() + disciplina.getNotap2()) / 2 %></td>
                </tr>
            <%}%>
        </table>
        <%}%>
 
    </body>
</html>
