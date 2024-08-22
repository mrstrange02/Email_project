<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.IOException"%>

<%
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "emailsoftware";
    String userid = "root";
    String password = "Kalyan123@";

    String[] deleteIds = request.getParameterValues("deleteIds");

    if (deleteIds != null && deleteIds.length > 0) {
        try {
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(connectionUrl + database, userid, password);
            Statement statement = connection.createStatement();
            for (String id : deleteIds) {
                String sql = "DELETE FROM mails WHERE mid=" + id;
                statement.executeUpdate(sql);
            }
            connection.close();
        }
        
         catch (Exception e) {
            out.println(e.getMessage());
        }
    }

    response.sendRedirect("inbox-1.jsp");
%>

