<!DOCTYPE html>
<%@page import="java.sql.*;" %>
<%@page import="java.io.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Feedback: PickMe</title>
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
           ResultSet rs = null;
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
           String feedb = request.getParameter("feedb");
           try
           {
               Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
               con = DriverManager.getConnection(url);
               stmt = con.prepareStatement("insert into feedback values (?,?,?,?)");
               stmt.setInt(1, 1);
               stmt.setString(2, name);
               stmt.setLong(3, number);
               stmt.setString(4, feedb);
               stmt.executeUpdate();
               con.commit();
           }
           catch(Exception e)
           {
                out.println(e.getMessage());
           }
           %>
           <center>
               <div> <h1><br><br>
            Thank You for your feedback.
            <br>
           
            </h1> </div>
               
             <% }
else
{
%><center><br><br><h1>Please enter a 10 digit number</h1>
    <a href="feed.jsp">  <input type="submit" class="button" value="Back" />  </a></center>
                 <%
} }
  else {
%>
<a href="feed.jsp">  <input type="submit" class="button" value="Back" />  </a></center>
            <%
}
%>
    </center>
      
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
