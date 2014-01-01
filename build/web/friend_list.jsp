<%-- 
    Document   : friend_list
    Created on : Jan 1, 2014, 3:19:24 PM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.arisa.models.Friend"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Friends List</title>
        <style>
            table {
                font-size: 1.3em;
                border-collapse: collapse;
            }
            table, th, td {
                border: 1px solid black;
            }

            </style>
    </head>
    <body>
        <h1>This table is list of my friends.</h1>
        <hr>
        <% List<Friend> friends = (ArrayList) request.getAttribute("friends"); %>
        <table>
            
            <tr bgColor="#F68D76">
                <th> ID </th>
                <th> Firstname </th>
                <th> Lastname </th>
                <th> Date of birth </th>
            </tr>
            <%
                int i = 0;
                for (Friend f : friends) {
                    i++;
                    int fid = f.getId();

            %>         
            <tr>
                <tr bgColor="<%= i%2==0?"#D77845" : "#F68F36" %>">
                <td> <%= f.getId()%> </td>
                <td> <%= f.getFirstName()%> </td>
                <td> <%= f.getLastName()%> </td>
                <td> <%= f.getDob()%> </td>

            </tr>

            <% }%>



        </table>
    </body>
</html>

