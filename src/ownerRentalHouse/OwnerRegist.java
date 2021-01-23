package ownerRentalHouse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/OwnerRegist")
public class OwnerRegist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OwnerRegist() {
        super();
        
    }

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	PrintWriter out=response.getWriter();
	String ownername=request.getParameter("ownername");
	String contact=request.getParameter("contact");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String address=request.getParameter("address");
	
	 try{
		 Class.forName("oracle.jdbc.driver.OracleDriver");
    	    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe");
    	     String qr="insert into owner values(?,?,?,?,?,?)";
    	      PreparedStatement ps=con.prepareStatement(qr);
    	                    ps.setString(1,null);
    	                    ps.setString(2,ownername);
    	                    ps.setString(3, contact);
    	                    ps.setString(4,email);
    	                    ps.setString(4,password);
    	                    ps.setString(5, address);	    	                    
    	                    int i=ps.executeUpdate();
    	                     if(i>0)
    	                            {
    	            	          out.println("Thank You For Registration ");
    	                         }
    	                          else{
    	                    	 
    	                    	      out.println("Sorry please check your details");
    	                               }
                                     
		                   }
	             catch(Exception e)
	               {
		              out.println(e);
	                }
	}



protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
