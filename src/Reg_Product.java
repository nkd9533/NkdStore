
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import com.oreilly.servlet.*;
import java.sql.*;
import java.util.Random;
@WebServlet("/Reg_Product")
public class Reg_Product extends HttpServlet
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
{
PrintWriter out=res.getWriter();
String path=getServletContext().getRealPath("/images");
MultipartRequest mpr=new MultipartRequest(req,path,500*1024*1024);
String pname=mpr.getParameter("pname");
String ptype=mpr.getParameter("ptype");
String pprice=mpr.getParameter("pprice");
String pdiscount=mpr.getParameter("pdiscount");
String pweight=mpr.getParameter("pweight");
String pdescription=mpr.getParameter("pdescription");
String pquantity=mpr.getParameter("pquantity");
String path1=mpr.getOriginalFileName("pimage");
//Random Product id 
Random rand=new Random();
int pidr=rand.nextInt(1000000);
int rem=rand.nextInt(25);
String pid=(char)(65+rem)+String.valueOf(pidr);
String path2=path+"/"+path1;
FileInputStream fin=new FileInputStream(path2);
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","NkdStore","NkdStore");
PreparedStatement ps=c.prepareStatement("insert into Reg_Products values(?,?,?,?,?,?,?,?,?)");
ps.setBinaryStream(6,fin,fin.available());
ps.setString(1, pid);
ps.setString(2,pname);
ps.setString(3,pprice);
ps.setString(4,pdiscount);
ps.setString(5,pweight);
ps.setString(7,pdescription);
ps.setString(8,pquantity);
ps.setString(9,ptype);
ps.executeUpdate();
c.close();
}
catch(Exception e)
{
	e.printStackTrace();
}
/*RequestDispatcher rd=req.getRequestDispatcher("index.html");
rd.include(req, res);*/
out.println("<html><body>");
out.println("<h1><font color=red>Registered successfully");
out.println("</body></html>");
}
}