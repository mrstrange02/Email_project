<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

  int uid=Integer.parseInt(request.getParameter("mid"));
try
{
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emailsoftware", "root", "Kalyan123@");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("update mails set sentbox=0 where mid="+uid);
           
         out.println("<center><b>Data is successfully Deleted!<br><a href='SentBox-1.jsp'>Check Now</a></b></center>");
         
         
        }
        
        catch(Exception e)
        {
        out.print(e.getMessage());
        e.printStackTrace();
        }
 %>
 
