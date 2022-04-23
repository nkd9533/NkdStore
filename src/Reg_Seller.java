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
@WebServlet("/Reg_Seller")
public class Reg_Seller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		 String cname = request.getParameter("cname");
		 String gstn = request.getParameter("gstn");
		 String email=request.getParameter("email");
		 String phone=request.getParameter("phone");
		 String pass=request.getParameter("pass");
		 String rpass=request.getParameter("rpass");
		 String address=request.getParameter("address");
		//Random Product id 
		 Random rand=new Random();
		 int bidr=rand.nextInt(10000);
		 int rem=rand.nextInt(25);
		 String cid=(char)(65+rem)+String.valueOf(bidr);
		 try {
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","NkdStore","NkdStore");
			 PreparedStatement ps=c.prepareStatement("insert into Seller values(?,?,?,?,?,?,?,?)");
			ps.setString(1,cid);
			ps.setString(2,cname);
			ps.setString(3,email);
			ps.setString(4,phone);
			ps.setString(5,gstn);
			ps.setString(6,pass);
			ps.setString(7,address);
			ps.setString(8,"0");
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
					RequestDispatcher rd=request.getRequestDispatcher("logIn.jsp");
					 rd.include(request,response);
					 out.println("<h1 style=text-align:center;>");
					 out.println("Successfully Sign Up.........Your Account is under Verification......... Login after sometime to Continue..");
				}
				else
				 {
					 RequestDispatcher rd=request.getRequestDispatcher("sellerSignUp.jsp");
					 rd.include(request,response);
					 out.println("<h3 style=color:red;>");
					 out.println("Unable to Sign Up, Try again!");
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
