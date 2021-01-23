<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<title>Online Rental House/ login</title>
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
</head>
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
         <a href="custRegist.jsp" class="w3-bar-item w3-button fa fa-user">Customer</a>
       <a href="#contact" class="w3-bar-item w3-button fa fa-envelope">Contact</a>
     </div>
   </div>
</div>
  
<form action="Admin" method="post"><center><br><br><br><br>
   <h4 style="color:#2B2B52"> <B>WELCOME TO  OWNER LOGIN</B></h4><hr><br><br>
   <table>
 <tr>
     <td>ADMIN NAME:</td>
          <td><input type="text" class="form-control mb-2 mr-sm-2"  name="id" size="18" placeholder="Enter name" required></td></tr>
         
 <tr>
     <td> PASSWORD:</td>
          <td><input type="password" class="form-control mb-2 mr-sm-2" name="password" size="18" placeholder="Enter password" required></td></tr>
          
 </table>
 <br>
               <label><input type="checkbox"  name="remember"> Remember me</label>
                      <input type="submit" value="Login"><a href="registratin.jsp"  class="btn btn-primary  w3-white">Sign-Up
  </center>
</form>   
</body>
</html>