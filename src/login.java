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
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        HttpSession session=req.getSession(true);
        String email= req.getParameter("email").trim();      
        String pass= req.getParameter("pass");  
        Connection con=null;
        Statement st,st1,st2;
        ResultSet rs,rs1,rs2;
        String cname="";
        String aname="";
        String cus_id="",s_id="";
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","NkdStore","NkdStore");
     
            st=con.createStatement();
            st1=con.createStatement();
            st2=con.createStatement();
            
            rs=st.executeQuery("select CUSTOMER_ID,FNAME,EMAIL,PASSWORD from customer");
            rs1=st1.executeQuery("select NAME,EMAIL,PASSWORD from admin");
            rs2=st2.executeQuery("select SELLER_ID,EMAIL,PASSWORD,VERIFIED from seller");
            int i=0;
            while(rs1.next())
            {
                if(rs1.getString(2).equals(email) && rs1.getString(3).equals(pass))
                {
                   i=1;
                   aname=rs1.getString("name");
                   break;
                }
            }
            if(i==1)
            {
            session.setAttribute("aname",aname);   
            res.sendRedirect("logIn.jsp");  
            }
            else
            {
                int j=0;
                while(rs.next())
            {
                if(rs.getString(3).equals(email) && rs.getString(4).equals(pass))
                {
                   j=1;
                   cname=rs.getString("fname");
                   cus_id=rs.getString("customer_id");
                   break;
                }
            }
            if(j==1)
            {
              session.setAttribute("cus_id", cus_id);
              session.setAttribute("cname",cname);
              res.sendRedirect("home_after_login.jsp");  
            }
            else
            {
            	int k=0;
            	
                while(rs2.next())
            {
                if(rs2.getString(2).equals(email) && rs2.getString(3).equals(pass))
                {
                   k=1;
                   s_id=rs2.getString("seller_id");
                   break;
                }
            }
            if(k==1)
            {
            if(rs2.getString(4).equals("1"))
            {
              session.setAttribute("s_id", s_id);
              res.sendRedirect("Product/Register_Product.jsp"); 
            }
            else
            {
        	  session.setAttribute("loginfail", "Unverified Seller Account......loginfail");
              res.sendRedirect("home_page/home.jsp");
            }
            }
            else
            {	
              session.setAttribute("loginfail", "loginfail");
              res.sendRedirect("home_page/home.jsp"); 
            }
            }
            }
            }catch(Exception e){}
        finally
        {
        try{
        con.close();}catch(Exception e){}
        }
        }
    }
   