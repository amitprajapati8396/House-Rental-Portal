<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<style>
<!-- Css code here kam hai per aachaa hai-->

body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
    font-family: "Playfair Display";
    letter-spacing: 5px;
}
#aliens
{
   background-color:white;
   border-redius: 15px 50px 30px;
   padding: 20px;
   text-shadow: 2px 1px darkblue;
   padding-shadow: 2px 2px;
 }
</style>
<body background="image5.jpg" style="height:50%">
<!-- Navbar (sit on top)  this is a Navbar code here Left To Right Your choice-->
<div class="w3-top">
     <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
   <a href="#home" class="w3-bar-item w3-button"></a>
    
<!-- Right-sided nav-bar links. Hide them on small screens // Small Screen means  full responsive WebApp -->
    <div class="w3-right w3-hide-small">
          <a href="index1.html" class="w3-bar-item w3-button fa fa-fw fa-home">Home</a>
           <a href="index1.html" class="w3-bar-item w3-button fa fa-image">Gallery</a>
           <a href="ownerlogin.jsp" class="w3-bar-item w3-button fa fa-user">Owner</a>
         <a href="custlogin.jsp" class="w3-bar-item w3-button fa fa-user">Customer</a>
       <a href="#contact" class="w3-bar-item w3-button fa fa-envelope">Contact</a>
     </div>
   </div>
</div>

<form action="OwnerRegist">
      <center>
      <br><br><br><br>
       <h3 style="color:#2B2B52"> <B> Owner Registration Form</B></h3><hr><br>
         <table style width="33%" size="35">
            <tr>
               <td> Owner-Name:</td>
               <td><input type="text"  name="name" size="20" placeholder="Enter User-Name" required></td>
            </tr>
            <tr>
               <td>Contact:</td>
               <td><input type="text"  name="contact" size="20" placeholder="Enter Contact No" required></td>
            </tr>
             <tr>
               <td>Email-Id:</td>
               <td><input type="text"  name="email" size="20" placeholder="Enter Enail" required></td>
            </tr>
             <tr>
               <td>Password:</td>
               <td><input type="password"  name="password" size="20" placeholder="Enter User-password" required></td>
            </tr>
            <tr>
               <td>Address:</td>
               <td><input type="text"  name="address" size="20" placeholder="Enter Uaer-Address" required></td>
          </tr>
       </table>
                    <br><input type="submit" value="Submit">
              <a href="index1.html" class="w3-display- w3-button w3-wide">Back</a>
   </center>
</form>
</body>
</html>