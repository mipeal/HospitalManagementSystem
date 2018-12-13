<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnrollPatients.aspx.cs" Inherits="HMS.EnrollPatients"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../layout/styles/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .container .demo {
            text-align: center;
        }

            .container .demo div {
                padding: 8px 0;
            }

                .container .demo div:nth-child(odd) {
                    color: #FFFFFF;
                    background: #CCCCCC;
                }

                .container .demo div:nth-child(even) {
                    color: #FFFFFF;
                    background: #979797;
                }

        @media screen and (min-width:180px) and (max-width:900px) {
            .container .demo div {
                margin-bottom: 0;
            }
        }
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
                    <li><a href="#">Patient</a></li>
                    <li><a href="#">Enroll</a></li>
                </ul>
                <!-- ################################################################################################ -->
            </div>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <asp:Panel ID="enroll" runat="server">
            <center>
                <div id="content" class="col-4" style="vertical-align:central">
            <div class="form-heading">
                <h3>Input Patient Details Below:
                </h3>
            </div>
            <div>
                <div class="col-12">
                    <label>First Name</label>
                    <asp:TextBox ID="txtFName" runat="server" CssClass="txtBox" TextMode="SingleLine" TextAlign="center"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validation" runat="server" ErrorMessage="Required" ControlToValidate="txtFName"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only A-Z,a-z " ControlToValidate="txtFName" Display="Dynamic" CssClass="validation" ValidationExpression="^[a-zA-Z]+\\.?"></asp:RegularExpressionValidator>
            
                 </div></div>
            <div>
                <div class="col-12">
                    <label>Last Name</label>
                    <asp:TextBox ID="txtLName" runat="server" CssClass="txtBox"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validation" runat="server" ErrorMessage="Required" ControlToValidate="txtLName"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Only A-Z,a-z " ControlToValidate="txtLName" Display="Dynamic" CssClass="validation" ValidationExpression="^[a-zA-Z]+\\.?"></asp:RegularExpressionValidator>
             
                </div></div>
            <div>
                <div class="col-12">
                    <label>Date of Birth</label>
                    <table>
                        <tbody>
                            <tr>
                                <td>
                                    <asp:DropDownList ID="ddlDay"  class="txtBox" runat="server">
                        <asp:ListItem Selected="True" Text="Select Date"></asp:ListItem>
                        <asp:ListItem Text="01" Value="01" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="02" Value="01" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="03" Value="02" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="04" Value="03" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="05" Value="04" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="06" Value="05" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="07" Value="06" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="08" Value="07" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="09" Value="08" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="10" Value="09" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="11" Value="10" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="12" Value="12" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="13" Value="13" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="14" Value="14" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="15" Value="15" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="16" Value="16" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="17" Value="17" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="18" Value="18" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="19" Value="19" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="20" Value="20" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="21" Value="21" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="22" Value="22" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="23" Value="23" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="24" Value="24" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="25" Value="25" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="26" Value="26" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="27" Value="27" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="28" Value="28" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="29" Value="29" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="30" Value="30" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="31" Value="31" Enabled="true"></asp:ListItem>
                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlMonth"  class="txtBox" runat="server">
                        <asp:ListItem Selected="True" Text="Select Month"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="January" Value="01"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="February" Value="02"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="March" Value="03"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="April" Value="04"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="May" Value="05"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="June" Value="06"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="July" Value="07"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="August" Value="08"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="September" Value="09"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="October" Value="10"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="November" Value="11"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="December" Value="12"></asp:ListItem>
                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlYear"  class="txtBox" runat="server">
                        <asp:ListItem Selected="True" Text="Select Year"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1949" Value="1949"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1950" Value="1950"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1951" Value="1951"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1952" Value="1952"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1953" Value="1953"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1954" Value="1954"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1955" Value="1955"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1956" Value="1956"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1957" Value="1957"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1958" Value="1958"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1959" Value="1959"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1960" Value="1960"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1961" Value="1961"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1962" Value="1962"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1963" Value="1963"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1964" Value="1964"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1065" Value="1965"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1966" Value="1966"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1967" Value="1967"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1968" Value="1968"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1969" Value="1969"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1970" Value="1970"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1971" Value="1971"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1972" Value="1972"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1973" Value="1973"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1974" Value="1974"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1975" Value="1975"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1976" Value="1976"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1977" Value="1977"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1978" Value="1978"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1979" Value="1979"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1980" Value="1980"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1981" Value="1981"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1982" Value="1982"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1983" Value="1983"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1984" Value="1984"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1985" Value="1985"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1986" Value="1986"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1987" Value="1987"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1988" Value="1988"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1989" Value="1989"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1990" Value="1990"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1991" Value="1991"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1992" Value="1992"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1993" Value="1993"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1994" Value="1994"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1995" Value="1995"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1996" Value="1996"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1997" Value="1997"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1998" Value="1998"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="1999" Value="1999"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2000" Value="2000"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2001" Value="2001"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2002" Value="2002"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2003" Value="2003"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2004" Value="2004"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2005" Value="2005"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2006" Value="2006"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2007" Value="2007"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2008" Value="2008"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2009" Value="2009"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2010" Value="2010"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2011" Value="2011"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2012" Value="2012"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2013" Value="2013"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2014" Value="2014"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2015" Value="2015"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2016" Value="2016"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2017" Value="2017"></asp:ListItem>

                    </asp:DropDownList>
                                </td>
                            </tr>
                        </tbody>
                    </table>            
                </div>
            </div>
            <div>
                <div class="col-12">
                    <label>E-mail</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="txtBox"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validation" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Mail" ControlToValidate="txtEmail" Display="Dynamic" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
                    </div></div>
            <div>
                <div class="col-12">
                    <label>Phone no.</label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="txtBox"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="validation" runat="server" ErrorMessage="Required" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Only 0-9 " ControlToValidate="txtPhone" Display="Dynamic" CssClass="validation" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            
                    </div>
</div>
            <div>
                <div class="col-12">
                    <label>State</label>
                    <asp:DropDownList ID="ddlState" CssClass="txtBox" runat="server" AutoPostBack="true">
                        <asp:ListItem Selected="True" Text="Select State"></asp:ListItem>
                    </asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="validation" runat="server" ErrorMessage="Required" ControlToValidate="ddlState"></asp:RequiredFieldValidator>
             
                </div></div>
            <div>
                <div class="col-12">
                    <label>Plan</label>
                    <asp:DropDownList ID="ddlPlan" CssClass="txtBox" runat="server" AutoPostBack="True">
                        <asp:ListItem Selected="True" Text="Select Plan"></asp:ListItem></asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="validation" runat="server" ErrorMessage="Required" ControlToValidate="ddlPlan"></asp:RequiredFieldValidator>
            
                    </div></div>
            <div>
                <div class="col-6">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="myButton" OnClick="btnRegister_Click"/>
                </div>
                <div class="col-5">
                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="myButton" OnClick="btnReset_Click"/>
                </div>
            </div>
        </div>
            </center>
        </asp:Panel>
        <br />
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
                            <li class="btmspace-10"><span class="fa fa-phone"></span>+88 (017) 3456 7890</li>
                            <li><span class="fa fa-envelope-o"></span>info@domain.com</li>
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
