import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Reg_Customer")
public class Reg_Customer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		 String fname = request.getParameter("fname");
		 String lname = request.getParameter("lname");
		 String email=request.getParameter("email");
		 String phone=request.getParameter("phone");
		 String pass=request.getParameter("pass");
		 String rpass=request.getParameter("rpass");
		 String gender=request.getParameter("gender");
		//Random Product id 
		 Random rand=new Random();
		 int bidr=rand.nextInt(10000);
		 int rem=rand.nextInt(25);
		 String cid=(char)(65+rem)+String.valueOf(bidr);
		 try {
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","NkdStore","NkdStore");
			 PreparedStatement ps=c.prepareStatement("insert into Customer values(?,?,?,?,?,?,?)");
			ps.setString(1,cid);
			ps.setString(2,fname);
			ps.setString(3,lname);
			ps.setString(4,email);
			ps.setString(5,phone);
			ps.setString(6,pass);
			ps.setString(7,gender);
			PreparedStatement prc = c.prepareStatement("select * from Customer where phone=? or email=?");
			PreparedStatement pra = c.prepareStatement("select * from Admin where email=?");
			PreparedStatement prs = c.prepareStatement("select * from Seller where phone=? or email=?");
			prs.setString(1,phone);
			prs.setString(2,email);
			prc.setString(1,phone);
			prc.setString(2,email);
			pra.setString(1,email);
			ResultSet rs1 = prs.executeQuery();
			ResultSet rs2 = prc.executeQuery();
			ResultSet rs3 = pra.executeQuery();
			int i=0;
			if((!rs1.next())&&(!rs2.next())&&(!rs3.next()))
			{
				i=ps.executeUpdate();
				if(i!=0)
				{
					out.println("<h1 style=text-align:center;>");
					 out.println("Successfully Sign Up.........Login to Continue");
					RequestDispatcher rd=request.getRequestDispatcher("logIn.jsp");
					 rd.include(request,response);
				}
				else
				 {
					 out.println("<h3 style=color:red;>");
					 out.println("Unable to Sign Up, Try again!");
					 RequestDispatcher rd=request.getRequestDispatcher("signUp.jsp");
					 rd.include(request,response);
				 }
			}
			else
			 {
				 RequestDispatcher rd=request.getRequestDispatcher("logIn.jsp");
				 rd.include(request,response);
				 out.println("<h3 style=color:red;>");
				 out.println("E-mail or Phone Number already exist, Login to Continue");
			 }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		 
	}
