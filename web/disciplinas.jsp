<%-- 
    Document   : disciplinas
    Created on : 14 de jun. de 2021, 13:24:01
    Author     : Rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Disciplinas</h2>
        <fieldset>
            <legend>Nova Disciplina</legend>
            <form method='post'>
                Nome:</br> <input type="text" name="nome"/>
               </br>Dia da semana </br><input type="text" name="diadasemana"/>
               </br>Horário:</br><input type="text" name="horario"/>
               </br> Quantidade de aulas:</br><input type="text" name="qtaulas"/>
               </br></br>
               <input type="submit" name="add" value="Adicionar"/>
            </form>
        </fieldset>
        <br/>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Dia da semana</th>
                <th>Horário</th>
                <th>Qt. Aulas</th>
                <th>Nota P1</th>
                <th>Nota P2</th>
                <th>Alteração</th>
                <th>Exclusão</th>
            </tr>
            <%for(Disciplinas disciplina: Disciplinas.getDisciplinas()){%>
                <tr>
                    <td><%= disciplina.getNome()%></td>
                    <td><%= disciplina.getDiaDaSemana()%></td>
                    <td><%= disciplina.getHorario()%></td>
                    <td><%= disciplina.getQtAulas()%></td>
                    <td><%= disciplina.getNotap1()%></td>
                    <td><%= disciplina.getNotap2()%></td>
                    <td>
                        <form method="post">
                            <input type="hidden" name="nome" value="<%= disciplina.getNome()%>"/>
                            <input type="text" name="notap1" placeholder="Nota P1" />
                            <input type="text" name="notap2" placeholder="Nota P2"/>
                            <input type="submit" name="update" value="Alterar"/>
                        </form>
                    </td>
                    <td>
                        <form method="post">
                            <input type="hidden" name="nome" value="<%= disciplina.getNome()%>"/>
                            <input type="submit" name="remove" value="Remover"/>
                        </form>
                    </td>
                </tr>
            <%}%>
        </table>
        <%}%>
    </body>
</html>