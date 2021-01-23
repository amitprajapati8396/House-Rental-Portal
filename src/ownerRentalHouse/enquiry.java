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

@WebServlet("/enquiry")
public class enquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public enquiry() {
        super();
        
    }

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out=response.getWriter();
	String username=request.getParameter("username");
	String mobile=request.getParameter("mobile");
	String date=request.getParameter("date");
	String message=request.getParameter("message");
	
        try{
    	    Class.forName("oracle.jdbc.driver.OracleDriver");
    	    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe");
    	     String qr="insert into table-name values(?,?,?,?,?)";
    	     PreparedStatement ps=con.prepareStatement(qr);
    	                ps.setString(1,null);
    	                ps.setString(2,username);
    	                ps.setString(3,mobile);
    	                ps.setString(4,date);
    	                ps.setString(5,message);
    	                
    	                    int i=ps.executeUpdate();
    	                     if(i>0)
    	                            {
    	            	               out.println("Thank You For Enquiry Our Team Will be Contact You");
    	                                }
    	                          else{
    	                    	 
    	                    	      out.println("Sorry please check your details");
    	                               }
                                    } 
          
                                     catch(Exception e)
                                             {
                                             out.println(e);     	 
                                   }
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
