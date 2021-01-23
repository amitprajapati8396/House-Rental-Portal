package ownerRentalHouse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/OwnerLogin")
public class OwnerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out=response.getWriter();
	String  name=request.getParameter("name"); 
      String ownerid=request.getParameter("ownerid"); 
         HttpSession session = request.getSession(true); 
         String next="ownerlogin.jsp";
         Connection con=null;
         try { 
             Class.forName("oracle.jdbc.driver.OracleDriver");
             con=DriverManager.getConnection("url");
            Statement stmt=(Statement) con.createStatement(); 
            ResultSet rs=stmt.executeQuery("select * from ownertable where name='"+name+"' and ownerid='"+ownerid+"' "); 
               while(rs.next())
               { 
                   Member mem = new Member();
                         mem.setName(rs.getString("name")); 
                         mem.setOwnerid(rs.getInt("ownerid")); 
                           session.setAttribute("name",mem);
                           session.setAttribute("ownerid",mem);
                        
                               next = "ownerHome.jsp"; 
                       
                           }
                       }
                         catch(Exception ex) 
                          {
                        	out.println(ex);
                            }
                            finally 
                             { 
                               response.sendRedirect(next); 
                             }

        
		response.getWriter().append("Served at: ").append(request.getContextPath());
 	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
