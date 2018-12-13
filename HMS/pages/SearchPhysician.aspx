<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPhysician.aspx.cs" Inherits="HMS.SearchPhysician" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"/>
<style type="text/css">
.container .demo{text-align:center;}
.container .demo div{padding:8px 0;}
.container .demo div:nth-child(odd){color:#FFFFFF; background:#CCCCCC;}
.container .demo div:nth-child(even){color:#FFFFFF; background:#979797;}
@media screen and (min-width:180px) and (max-width:900px){.container .demo div{margin-bottom:0;}}
</style>
</head>
<body id="top">
    <form id="form1" runat="server">
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="index.html">Hospital Management System</a></h1>
    </div>
    <nav id="mainav" class="fl_right">
      <ul class="clear">
        <li class="active"><a href="index.aspx">Home</a></li>
        <li><a class="drop" href="#">Patient</a>
          <ul>
            <li><a href="EnrollPatients.aspx">Enroll</a></li>
            <li><a href="PatientsDetails.apsx">View Details</a></li>
          </ul>
        </li>
        <li><a href="PatientDiagnosis.aspx">Patient Diagnosis</a></li>
        <li><a class="drop" href="#">Physician</a>
          <ul>
            <li><a href="AddPhysician.aspx">Add New</a></li>
            <li><a href="SearchPhysician.aspx">Search</a></li>
          </ul>
        </li>
      </ul>
    </nav>
    <!-- ################################################################################################ --> 
  </header>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <div id="breadcrumb" class="clear"> 
    <!-- ################################################################################################ -->
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Physician</a></li>
      <li><a href="#">Search</a></li>
    </ul>
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row4">
  <footer id="footer" class="clear"> 
    <!-- ################################################################################################ -->
    <h2 class="underlined btmspace-50">Hospital Management System</h2>
    <div class="group">
      <div class="one_third first">
        <address>
        Company Name<br>
        Street Name &amp; Number, Town, Postcode/Zip
        </address>
      </div>
      <div class="one_third">
        <ul class="nospace">
          <li class="btmspace-10"><span class="fa fa-phone"></span> +88 (017) 3456 7890</li>
          <li><span class="fa fa-envelope-o"></span> info@domain.com</li>
        </ul>
      </div>
      <div class="one_third">
        <ul class="faico clear">
          <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a class="faicon-pinterest" href="#"><i class="fa fa-pinterest"></i></a></li>
          <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
          <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
        </ul>
      </div>
    </div>
    <!-- ################################################################################################ --> 
  </footer>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2015 - All Rights Reserved - <a href="#">Mujahid Islam</a></p>
    <p class="fl_right">Template by <a target="_blank" href="#">Warhead</a></p>
    <!-- ################################################################################################ --> 
  </div>
</div>
</form>
<!-- JAVASCRIPTS --> 
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
