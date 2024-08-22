import javax.servlet.http.*;  
import javax.servlet.*;  
//import java.io.IOException;
import java.io.*;
import java.util.*;
import java.sql.*;




public class deletemail extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
     {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
       
        
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
        out.close();

 
       
        //out.println("Hello, SPK!");
    }
}
