<%@page import="model.Security"%>
<%@page import="controller.JdbcController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    session.invalidate();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <title>Guest</title>
    </head>
    <body>

        <br><br><br><br><br>
        <h1 align="center">Guest Record</h1>

        <br>

        <table border="1" align="center">
            <tr>
                <th>Email</th>
                <th>Role</th>
            </tr>

            <%
                ResultSet results = (ResultSet) request.getAttribute("results");
                while (results.next()) {
            %> 
            <tr>
                <td><%=results.getString("email")%></td>
                <td><%=results.getString("userrole")%></td>
            </tr>	
            <%	}
            %>

        </table>

        <br>

        <div align="center">

            <%
                String username = (String) request.getAttribute("username");
            %>

            <form action="GuestReportServlet" method="post">
                <!-- Hidden input field for username -->
                <input type="hidden" name="username" value="<%= username%>">
                <button type="submit">Generate Guest Report</button>
            </form>

            <br>

            <a href="login.jsp">Log out</a>

        </div>

    </body>
</html>
