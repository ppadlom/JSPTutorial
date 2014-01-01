<%-- 
    Document   : note
    Created on : Jan 1, 2014, 10:50:28 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <style>
            body {
                font-family: "Open Sans", Menlo;
            }
            .big {
                font-size: 3em;
            }
        </style>
    </head>
    <body>
        <div class="big">Eat Krispy Cream Saturday di</div>
        <h1>TODO List for Padlom from lecturer's example</h1>
        <h3>Model</h3>
        <ol>
            <li>Create <b>Customer class</b> with its attributes, constructor, static methods and getters/setters</li>
            <li>Create method that can connect with database and be able to:</li>
            <ul>
                <li><b>add</b> data into database (<b>add, create, insert</b>)</li>
                <li><b>retrieve</b> data from database (<b>find, findById, findBySomething</b>)</li>
                <li><b>edit</b> data in database (<b>edit, update, save</b>)</li>
                <li><b>delete</b> data from database (<b>delete, remove</b>) [OPTIONAL]</li>
            </ul>
        </ol>

        <h3>View</h3>
        <ol>
            <li><b>index.jsp</b> - create some form to enter a <b>search key</b> then display list of customers when form is submitted and link to <b>new_customer.jsp</b> </li>
            <li><b>new_customer.jsp</b> - create form to enter new customer info.</li>
            <li><b>customer_form.jsp</b> - create form similar to new_customer.jsp (for view the specific customer)</li>
        </ol>

        <h3>Controller</h3>
        <ol>
            <li><h4>General</h4></li>
            <ul>
                <li>Don't forget <b>getServletContext().getRequestDispatcher("index.jsp").forward(request, response);</b></li>
                <li>Use <b>doGet()</b> for display data.</li>
                <li>Use <b>doPost()</b> for create, update, or search data.</li>
            </ul>
            <li><h4>CustomerListServlet.java</h4></li>
            <li><h4>CustomerSearchServlet.java</h4></li>
            <li><h4>NewCustomerServlet.java</h4></li>
            <li><h4>UpdateCustomerServlet.java</h4></li>
        </ol>
    </body>
</html>
