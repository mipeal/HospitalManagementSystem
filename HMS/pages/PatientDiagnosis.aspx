<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientDiagnosis.aspx.cs" Inherits="HMS.PatientDiagnosis"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all" />
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
                    <li><a href="#">Patient Diagnosis</a></li>
                </ul>
                <!-- ################################################################################################ -->
            </div>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <div class="col-6">
            <asp:Panel runat="server" ID="diagnosis" Visible="true" CssClass="col-12">
                <h3>Diagnosis Report</h3>
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <label>Symptoms :</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtSymptoms" CssClass="txtBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Diagnosis :</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDiagnosis" CssClass="txtBox"  runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Physician :</label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlPhysician" CssClass="txtBox"  runat="server"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Date Of Diagnosis :</label>
                            </td>
                            <td>
                                    <table>
                                        <tr>
                                            <td><asp:DropDownList ID="ddlDayDOD"  class="txtBox" runat="server">
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
                    </asp:DropDownList></td>
                                            <td><asp:DropDownList ID="ddlMonthDOD"  class="txtBox" runat="server">
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
                    </asp:DropDownList></td>
                                            <td><asp:DropDownList ID="ddlYearDOD"  class="txtBox" runat="server">
                        <asp:ListItem Selected="True" Text="Select Year"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2010" Value="2010"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2011" Value="2011"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2012" Value="2012"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2013" Value="2013"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2014" Value="2014"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2015" Value="2015"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2016" Value="2016"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2017" Value="2017"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2018" Value="2018"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2019" Value="2019"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2020" Value="2020"></asp:ListItem>
                    </asp:DropDownList></td>
                                        </tr>
                                    </table>                        
                                </td>
                        </tr>
                        <tr>
                            <td>Follow-Up :
                            </td>
                            <td>
                                <asp:CheckBox ID="cbFollowUp" runat="server" OnCheckedChanged="cbFollowUp_CheckedChanged" AutoPostBack="true" />
                            </td>
                        </tr>
                        <tr>
                            <asp:Panel ID="panelDOF" runat="server" Visible="false">
                                <td><label>Date of Follow-Up :</label></td>
                                <td>
                                    <table>
                                        <tr>
                                            <td><asp:DropDownList ID="ddlDayDOF"  class="txtBox" runat="server">
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
                    </asp:DropDownList></td>
                                            <td><asp:DropDownList ID="ddlMonthDOF"  class="txtBox" runat="server">
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
                    </asp:DropDownList></td>
                                            <td><asp:DropDownList ID="ddlYearDOF"  class="txtBox" runat="server">
                        <asp:ListItem Selected="True" Text="Select Year"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2010" Value="2010"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2011" Value="2011"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2012" Value="2012"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2013" Value="2013"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2014" Value="2014"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2015" Value="2015"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2016" Value="2016"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2017" Value="2017"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2018" Value="2018"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2019" Value="2019"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="2020" Value="2020"></asp:ListItem>
                    </asp:DropDownList></td>
                                        </tr>
                                    </table>
                                </td>
                            </asp:Panel>
                        </tr>
                        <tr>
                            <td></td>
                            <td><asp:Button ID="btnSave" runat="server" CssClass="myButton" Text="Save" OnClick="btnSave_Click" /></td>
                        </tr>
                    </tbody>
                </table>
            </asp:Panel>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <div class="col-5">
            <asp:Panel ID="billing" runat="server" Visible="false" CssClass="col-12">
                <h3>Billing or Payement</h3>
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <label>Amount :</label>
                            </td>
                            <td>
                            <asp:TextBox ID="txtBillAmount" CssClass="txtBox"  runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Mode of Payment :</label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlModeofPayment" CssClass="txtBox"  runat="server" OnSelectedIndexChanged="ddlModeofPayment_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Selected="True" Text="Select Method"></asp:ListItem>
                                    <asp:ListItem Enabled="true" Text="Cash" Value="Cash"></asp:ListItem>
                                    <asp:ListItem Enabled="true" Text="Card" Value="Card"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <asp:Panel ID="panelCardNo" runat="server" Visible="false">                                
                            <td>
                                <label>Card Number :</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCardNo" CssClass="txtBox" runat="server"></asp:TextBox>
                            </td>
                            </asp:Panel>
                        </tr>
                        <tr>
                            <td>                                

                            </td>
                            <td>
                                <asp:Button ID="btnSubmit" runat="server" CssClass="myButton" Text="Submit" OnClick="btnSubmit_Click" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </asp:Panel>
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
