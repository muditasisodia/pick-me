<!DOCTYPE html>
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
                <center>
        <form action="bookdone.jsp">
            <br><br>
            <b>Name: </b><input type="text" name="name" value="" />
            <br><br>
            <b>Number: </b> <input type="text" name="number" value="" />
            <br><br>
            <b>Choose slot: </b><select name="slot" size="2">
                <option>10am-11am</option>
                <option>11am-12noon</option>
                <option>12noon-1pm</option>
                <option>4pm-5pm</option>
                <option>5pm-6pm</option>
                <option>6pm-7pm</option>
            </select>
            <br><br>
            <input type="submit" class="button"  value="Book Appointment" />
        </form>  
            
            <a href="index.html"><input type="submit" class="button button1" value="Exit" /></a>
        </center>
            </div>
            <div class="sidebar">
                <B>The Story of Leo</B>
                <br><br>
                <img src="images/Leo.jpg" width="300" height="300" alt="mija"/>
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

