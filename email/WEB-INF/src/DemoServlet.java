import javax.servlet.http.*;  
import javax.servlet.*;  
import java.io.IOException;

public class DemoServlet extends HttpServlet {  
    public void doGet(HttpServletRequest req, HttpServletResponse res)  
    throws ServletException, IOException {  
        res.setContentType("text/html");  
        res.getWriter().println("<h1>Hello, SPK!</h1>");  
    }  
}

//javac -cp /var/lib/tomcat9/lib/servlet-api.jar -d classes/ src/DemoServlet.java 
