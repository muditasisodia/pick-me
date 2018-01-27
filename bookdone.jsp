<!DOCTYPE html>
<%@page import="java.sql.*;" %>
<%@page import="java.io.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Book Appointment: PickMe</title>
        <link rel = "stylesheet" type = "text/css" href = "navstyle.css">
    </head>
    <body>
        <div class = "wrapper">
            <div class ="heading">
                <div class='dividerh'></div>
                <img src="images/quote.png" width="600" height="100" alt="quote"/>
                <div class='dividerh'></div>
                <div class='dividerh'></div>
                <img src="images/logo.png" width="150" height="100" alt="logo"/>
            </div>
            <div class ="navigation">
                <center>
                <a href="index.html"> <input type="submit" class="button" value="Home" /> </a>
                <div class='dividerb'></div>
                <a href="adopt.jsp">  <input type="submit" class="button" value="Adopt" />  </a>
                <div class='dividerb'></div>
                <a href="vol.jsp">  <input type="submit" class="button" value="Volunteer" />  </a>
                <div class='dividerb'></div>
                <a href="feed.jsp">  <input type="submit" class="button" value="Feedback" />  </a>
                <div class='dividerb'></div>
                <a href="faq.html">  <input type="submit" class="button" value="FAQs" />  </a>
                <div class='dividerb'></div>
                <a href="book.jsp">  <input type="submit" class="button" value="Book Appointment" />  </a>
                <div class='dividerb'></div>
                <a href="login.jsp"> <input type="submit" class="button button1" value="Login" /> </a>
                </center>
            </div>
            <div class ="content">
                <%
           String url = "jdbc:sqlserver://localhost:1433;databaseName=seproj;integratedSecurity=true";
           Connection con = null;
           PreparedStatement stmt = null;
           Statement staat = null;
           ResultSet rs1 = null;
           String name = request.getParameter("name");
           long number = 0;
           int flag = 0;
               try
               {
                   number = Long.parseLong(request.getParameter("number"));
               }
               catch (NumberFormatException e)
               {
                        %><center><br><br><h1>Invalid Number</h1><%
                   flag = 1;
               }           
           if(flag==0) {
int count = 0;
           Long num = number;
           while(num>0)
           {
               count++;
               num = num/10;
           }
           if(count==10) {
           String slot = request.getParameter("slot");
           int x = 0;
           try
           {
               Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
               con = DriverManager.getConnection(url);
               staat = con.createStatement();
               String sql = "select * from book";
               rs1 = staat.executeQuery(sql);
               while(rs1.next())
               {
                   if(slot.equals(rs1.getString(2)) && rs1.getInt(1)==1)
                   {
                       x = 1;
                   }
               }
               if(x==1)
               { %>
               
               <center>
                   <br><br>
                   <div><h1> Sorry, this slot is not available. </h1></div>
                   <form action="book.jsp">
                       <input type="submit" class="button" value="Book another slot" />
                   </form>
               </center>
               
               <% }
               else {
               stmt = con.prepareStatement("insert into book values (?,?,?,?)");
               stmt.setInt(1, 1);
               stmt.setString(2, slot);
               stmt.setString(3, name);
               stmt.setLong(4, number);
               stmt.executeUpdate();
               con.commit();
               %>
                <center>
                    <div> <h1> Your appointment has been booked. </h1> </div>
                   <form action="index.html">
                       <input type="submit" class="button" value="Exit" />
                   </form>
               </center>
                <%
               }
           }
           catch(Exception e)
           {
                out.println(e.getMessage());
           } }
else
{
%><center><br><br><h1>Please enter a 10 digit number</h1>
    <a href="book.jsp">  <input type="submit" class="button" value="Back" />  </a></center>
                 <%
} }
  else {
%>
<a href="book.jsp">  <input type="submit" class="button" value="Back" />  </a></center>
            <%
}
%>
           
            </div>
            <div class="sidebar">
                <B>The Story of Tipsy</B>
                <br><br>
                <img src="images/Tipsy.jpg" width="300" height="300" alt="mija"/>
                <br><br>
                <p style="text-align: justify">
                Lorem ipsum dolor sit amet, id dictum ligula etiam lacus, eros donec quisque mauris mi, in vel felis in, praesent vel nec magna lacus. Pulvinar elit augue fermentum vel, at morbi varius metus suscipit, tincidunt nulla ante eget commodo. Orci interdum ipsum sem, curabitur nunc rhoncus sapien, scelerisque ut mauris bibendum, sit enim nisl numquam non. Et lectus est iaculis quam, ut dolor donec ligula fringilla, a sed convallis condimentum. Mi senectus facilisis et, luctus sit imperdiet nec, urna nonummy tempus in. Sit turpis ornare nunc, bibendum vitae venenatis ut, dictum nulla parturient neque at, imperdiet ut dui sed. Sed in est elit, eget ultrices hendrerit vel consectetuer, ut lectus vestibulum tristique. Cras nec deleniti inceptos, maecenas volutpat iaculis commodo lectus.
                </p>
            </div>
            <div class="footer">
                <center>
                    <b>Contact Information</b><br>
                    Call Us: 9819585260<br>
                    Email Us: pickme@gmail.com<br>
                    Visit Us: 87-B, JP Road, Anderi(W)<br>
                </center>
            </div>
        </div>
    </body>
</html>
