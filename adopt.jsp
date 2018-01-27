<!DOCTYPE html>
<%@page import="java.sql.*;" %>
<%@page import="java.io.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Adoption: PickMe</title>
        <link rel = "stylesheet" type = "text/css" href = "navstyle.css">
        <style>
            .celle{
                background-color: #ece6f0;
                font-family: sans-serif;
                float: left;
                width: 550px;
                height: 200px;
                margin: 10px;
            }
            .cello{
                background-color: #ece6f0;
                font-family: sans-serif;
                float: right;
                width: 550px;
                height: 200px;
                margin: 10px;
            }
            .pic{
                float:left;
                width: 320px;
            }
            .data{
                float:right;
                width: 230px;
            }
        </style>
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
            try
            {
                String url = "jdbc:sqlserver://localhost:1433;databaseName=seproj;integratedSecurity=true";
                Connection con = null;
                Statement stmt = null;
                ResultSet rs = null;
                
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                con = DriverManager.getConnection(url);
                stmt = con.createStatement();
                String sql = "select * from animalfinal";
                rs = stmt.executeQuery(sql);
            
                int count = 0;
                while(rs.next())
                { 
                    if(count%2==0)
                    {
                        %>
                        <div class ="celle">
                            <div class ="pic">
                            <img src="<%=rs.getString(7)%>" width="300" height="200" alt="doesitmatter"/>
                            </div>
                            <div class="data">
                                <br><br>
                               <b>Name: </b><%=rs.getString(2)%>
                               <br><br>
                                <b>Breed: </b><%=rs.getString(3)%>
                                <br><br>
                                <b>Gender: </b><%=rs.getString(4)%>
                                <br><br>
                                <b>Age: </b><%=rs.getString(5)%> 
                            </div>
                        </div>
                        <%
                    }
                    else
                    {
                        %>
                        <div class ="cello">
                            <div class ="pic">
                            <img src="<%=rs.getString(7)%>" width="300" height="200" alt="doesitmatter"/>
                            </div>
                            <div class="data">
                               Name: <%=rs.getString(2)%>
                                <br>
                                Breed: <%=rs.getString(3)%>
                                <br>
                                Gender: <%=rs.getString(4)%>
                                <br>
                                Age: <%=rs.getString(5)%> 
                            </div>
                        </div>
                        <%
                    }
                } 
               }
            catch(Exception e)
            {
                System.out.println(e.getMessage());
            }
         %>
                
                
            </div>
            <div class="sidebar">
                <B>The Story of Mija</B>
                <br><br>
                <img src="images/Mija.jpg" width="300" height="300" alt="mija"/>
                <br><br>
                <p style="text-align: justify">
                Lorem ipsum dolor sit amet, id dictum ligula etiam lacus, eros donec quisque mauris mi, in vel felis in, praesent vel nec magna lacus. Pulvinar elit augue fermentum vel, at morbi varius metus suscipit, tincidunt nulla ante eget commodo. Orci interdum ipsum sem, curabitur nunc rhoncus sapien, scelerisque ut mauris bibendum, sit enim nisl numquam non. Et lectus est iaculis quam, ut dolor donec ligula fringilla, a sed convallis condimentum. Mi senectus facilisis et, luctus sit imperdiet nec, urna nonummy tempus in. Sit turpis ornare nunc, bibendum vitae venenatis ut, dictum nulla parturient neque at, imperdiet ut dui sed. Sed in est elit, eget ultrices hendrerit vel consectetuer, ut lectus vestibulum tristique. Cras nec deleniti inceptos, maecenas volutpat iaculis commodo lectus.
                </p>
            </div>
            <div class="footer">
                <center>
                    <br>
                    <b>Contact Information</b><br>
                    Call Us: 9819585260<br>
                    Email Us: pickme@gmail.com<br>
                    Visit Us: 87-B, JP Road, Anderi(W)<br>
                </center>
            </div>
        </div>
    </body>
