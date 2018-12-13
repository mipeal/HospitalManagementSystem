<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HMS.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hospital Management System</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body id="top">
<form runat="server">
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
      <ul class="nospace inline">
        <li><i class="fa fa-phone"></i> +88 (017) 3456 7890</li>
        <li><i class="fa fa-envelope-o"></i> info@domain.com</li>
      </ul>
    </div>
    <div class="fl_right">
      <ul class="faico clear">
        <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a class="faicon-pinterest" href="#"><i class="fa fa-pinterest"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
      </ul>
    </div>
    <!-- ################################################################################################ --> 
  </div>
</div>
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
            <li><a href="pages/EnrollPatients.aspx">Enroll</a></li>
            <li><a href="pages/PatientsDetails.apsx">View Details</a></li>
          </ul>
        </li>
        <li><a href="pages/PatientDiagnosis.aspx">Patient Diagnosis</a></li>
        <li><a class="drop" href="#">Physician</a>
          <ul>
            <li><a href="pages/AddPhysician.aspx">Add New</a></li>
            <li><a href="pages/SearchPhysician.aspx">Search</a></li>
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
<div class="wrapper"> 
  <!-- ################################################################################################ --> 
<asp:scriptmanager id="ScriptManager1" runat="server">
</asp:scriptmanager>
<asp:timer id="bannerTimer" runat="server" interval="3000">
<%-- interval="1000" = >1 second--%>
</asp:timer>
<asp:updatepanel id="bannerUpdatePanel" runat="server">
<Triggers>
<asp:AsyncPostBackTrigger ControlID="bannerTimer" EventName="Tick" />
</Triggers>
<contenttemplate>
<center>
    <asp:AdRotator ID="AdRotatorBanner" runat="server" 
Height="400px" Width="1900px" AdvertisementFile="~/banner.xml" />
</center>
</contenttemplate>
</asp:updatepanel>

  <!-- ################################################################################################ --> 
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <div id="services" class="clear"> 
    <!-- ################################################################################################ -->
    <div class="group">
      <div class="one_third first">
        <article class="service"><i class="icon red circle fa fa-medkit"></i>
          <h2 class="heading">Drugs Infirmary</h2>
          <p class="btmspace-10">Search through the information of our drug infirmary & labratory.</p>
          <p><a href="#">Know Here &raquo;</a></p>
        </article>
      </div>
      <div class="one_third">
        <article class="service"><i class="icon orange circle fa fa-user-md"></i>
          <h2 class="heading">Physicians</h2>
          <p class="btmspace-10">We give treatments with our renowned doctors from home & abroad.</p>
          <p><a href="pages/SearchPhysician.aspx">Know More &raquo;</a></p>
        </article>
      </div>
      <div class="one_third">
        <article class="service"><i class="icon green circle fa fa-wheelchair"></i>
          <h2 class="heading">Patients</h2>
          <p class="btmspace-10">Our prosperity is our pride and our patients are the hope.</p>
          <p><a href="pages/PatientsDetails.aspx">Know More &raquo;</a></p>
        </article>
      </div>
    </div>
    <!-- ################################################################################################ -->
    <div class="clear"></div>
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