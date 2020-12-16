import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class MarksForm extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	    
	    String id=request.getParameter("id"); 
	    String science=request.getParameter("science");  
	    String english=request.getParameter("english");
	    String math=request.getParameter("math");
	          
	    try {	
            //loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");

            //creating connection with the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1?useSSL=false","root","1234");
            PreparedStatement stmt = con.prepareStatement("insert into marks values(?,?,?,?)");
            stmt.setString(1,id);
			stmt.setString(2,science);
			stmt.setString(3,english);
			stmt.setString(4,math);
           
        	int row=stmt.executeUpdate();
			if(row>0){
				out.println("Marks successfully inserted");
				RequestDispatcher rd=request.getRequestDispatcher("Login.html");  
		        rd.forward(request,response);
			}else{
				out.println("Failed to insert marks");
				RequestDispatcher rd=request.getRequestDispatcher("Marks.jsp");  
		        rd.include(request,response); 
			}
		  
	    }catch(Exception e){
	    	out.println(e.getMessage());
	    }
	}
}
