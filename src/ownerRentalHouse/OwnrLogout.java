package ownerRentalHouse;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/OwnrLogout")
public class OwnrLogout extends HttpServlet {
private static final long serialVersionUID = 1L;


    public OwnrLogout() {
        super();
       
    }

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	response.setContentType("text/html");  
    PrintWriter out=response.getWriter();  
     
    request.getRequestDispatcher("ownerlogin.jsp").include(request, response);  
    
    HttpSession session=request.getSession();  
    session.invalidate();  
      
    out.print("You are successfully logged out!");  
      
    out.close();  
    
} 
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
