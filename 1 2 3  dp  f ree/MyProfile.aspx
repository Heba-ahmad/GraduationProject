<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="MyProfile.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
protected void MyCalendar_SelectionChanged(object sender, EventArgs e)
{
}
</script>
<HTML dir=ltr xmlns="http://www.w3.org/1999/xhtml"><HEAD 
profile=""><TITLE>STEP by STEP» Free Programming &amp; Web/Graphic Designing Tutorials</TITLE>
<META content="text/html; charset=UTF-8" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 8.00.6001.18854"><!-- leave this for stats --><LINK 
rel=stylesheet type=text/css 
href="images/style.css" media=screen><LINK 
title="Free Programming & Web/Graphic Designing Tutorials" rel=alternate type=application/rss+xml 
href="#"><LINK 
rel=pingback 
href="#"><LINK title=RSD 
rel=EditURI type=application/rsd+xml 
href="#"><!--[if lte IE 6]><link rel="stylesheet" href="images/ie6.css" type="text/css" media="all" /><![endif]-->
	<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
	<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
	<script src="js/jquery-func.js" type="text/javascript"></script></HEAD>
<BODY>
    <form id="form1" runat="server">
<DIV class=main>
<DIV class=main_in1>
<DIV id=header style="background-image: url('images/topbg.png')">
<DIV id=logo align="left">
<H1><A href="Default.aspx">123 dp Free</A></H1><div id="navigation">
						<ul style="background-image: url('images/navigation.png'); position: absolute; top: -12px; left: 123px;">
						    <li><a href="Default.aspx">Home</a></li>
						    <li><a href="About.aspx">About Us</a></li>
						    <li><a href="Tutorials_MainPage.aspx">Toturials</a></li>
						    <li><a href="Contact.aspx">Contact</a></li>
						</ul>
					</div><SPAN>&nbsp;Free Programming &amp; Web/Graphic Designing Tutorials</SPAN><BR>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
            WELCOME
        </LoggedInTemplate>
        <AnonymousTemplate>
            WELCOME GUEST! ^_^
        </AnonymousTemplate>
    </asp:LoginView>
    &nbsp;<asp:LoginName ID="LoginName1" runat="server" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </DIV></DIV>
<DIV id=content>
<DIV id=left_column>
<DIV id=categories class=widget_style>
<H2>Categories</H2>
<UL>
  <LI class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span> <img 
          alt="script" border="0" 
          src="images/arrow.png" /></span> 
      <A title="Home" 
  href="Default.aspx">Home</A> </LI>
  <LI class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img 
          alt="script" border="0" 
          src="images/arrow.png" /></span> 
      <A title="Tutorials" 
  href="Tutorials_MainPage.aspx">Tutorials</A> </LI>
  <LI class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img 
          alt="script" border="0" 
          src="images/arrow.png" /></span> 
      <A title="Chat&Interact" 
  href="ChatAndInteract.aspx">Chat &amp; Interact</A> </LI>
                        </UL></DIV></DIV>
<DIV id=center_column>
<DIV class=in1>
<DIV class=in2>
<DIV class=in3>
<DIV class=in4>
<DIV class=indent>
                                                <P style="font-size: 17px; color: #FFFFFF; font-family: calibri;" 
                                                    align="center">Profile Settings for: <asp:LoginName ID="LoginName2" runat="server" /></P>
    <!--start title-->
<DIV id=title>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;"><BR><SPAN 
class=date>Welcome <asp:LoginName ID="LoginName3" runat="server" />
                                                    &nbsp;&nbsp; </SPAN></P>
                                                        <P style="font-size: 15px; font-weight: normal; font-Color="#019DF2" font-family: calibri;">Edit Your 
                                                            Password:</P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    <asp:ChangePassword ID="ChangePassword1" runat="server" 
                                                        CancelDestinationPageUrl="~/Default.aspx" 
                                                        ContinueDestinationPageUrl="~/MyProfile.aspx" Height="191px" 
                                                        SuccessPageUrl="~/Default.aspx" Width="407px" ChangePasswordTitleText="" 
                                                        Font-Size="13pt">
                                                        <CancelButtonStyle BackColor="#019DF2" Font-Bold="True" Font-Size="10pt" />
                                                        <ContinueButtonStyle BackColor="#019DF2" Font-Bold="True" />
                                                        <ChangePasswordButtonStyle BackColor="#019DF2" Font-Bold="True" 
                                                            Font-Size="10pt" />
                                                        <ChangePasswordTemplate>
                                                            <table border="0" cellpadding="1" cellspacing="0" 
                                                                style="border-collapse:collapse;">
                                                                <tr>
                                                                    <td>
                                                                        <table border="0" cellpadding="0" style="height:191px;width:407px;">
                                                                            <tr>
                                                                                <td align="right">
                                                                                    <asp:Label ID="CurrentPasswordLabel" runat="server" 
                                                                                        AssociatedControlID="CurrentPassword">Password:</asp:Label>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:TextBox ID="CurrentPassword" runat="server" BackColor="White" 
                                                                                        Font-Bold="True" Font-Size="11pt" ForeColor="#CC0000" TextMode="Password"></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" 
                                                                                        ControlToValidate="CurrentPassword" ErrorMessage="Password is required." 
                                                                                        ToolTip="Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="right">
                                                                                    <asp:Label ID="NewPasswordLabel" runat="server" 
                                                                                        AssociatedControlID="NewPassword">New Password:</asp:Label>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:TextBox ID="NewPassword" runat="server" BackColor="White" Font-Bold="True" 
                                                                                        Font-Size="11pt" ForeColor="#CC0000" TextMode="Password"></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" 
                                                                                        ControlToValidate="NewPassword" ErrorMessage="New Password is required." 
                                                                                        ToolTip="New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="right">
                                                                                    <asp:Label ID="ConfirmNewPasswordLabel" runat="server" 
                                                                                        AssociatedControlID="ConfirmNewPassword">Confirm New Password:</asp:Label>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:TextBox ID="ConfirmNewPassword" runat="server" BackColor="White" 
                                                                                        Font-Bold="True" Font-Size="11pt" ForeColor="#CC0000" TextMode="Password"></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" 
                                                                                        ControlToValidate="ConfirmNewPassword" 
                                                                                        ErrorMessage="Confirm New Password is required." 
                                                                                        ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center" colspan="2">
                                                                                    <asp:CompareValidator ID="NewPasswordCompare" runat="server" 
                                                                                        ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" 
                                                                                        Display="Dynamic" 
                                                                                        ErrorMessage="The Confirm New Password must match the New Password entry." 
                                                                                        ValidationGroup="ChangePassword1"></asp:CompareValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center" colspan="2" style="color:Red;">
                                                                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="right">
                                                                                    <asp:Button ID="ChangePasswordPushButton" runat="server" BackColor="#019DF2" 
                                                                                        CommandName="ChangePassword" Font-Bold="True" Font-Size="10pt" 
                                                                                        Text="Change Password" ValidationGroup="ChangePassword1" />
                                                                                </td>
                                                                                <td>
                                                                                    <asp:Button ID="CancelPushButton" runat="server" BackColor="#019DF2" 
                                                                                        CausesValidation="False" CommandName="Cancel" Font-Bold="True" Font-Size="10pt" 
                                                                                        Text="Cancel" />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </ChangePasswordTemplate>
                                                        <TextBoxStyle BackColor="White" Font-Bold="True" Font-Size="11pt" 
                                                            ForeColor="#CC0000" />
                                                    </asp:ChangePassword>
                                                </P>
                                            <p style="font-size: -3px; font-family: calibri;">
                                                .................................................................................................................................................................................................................................................................          <P style="font-size: 19px; font-weight: normal; font-family: calibri;"><BR><SPAN 
class=date>Users' IDs</SPAN><b><span><br />
                                                        <![if !supportLineBreakNewLine]>
                                                        <br />
                                                        <![endif]></span></b></P>
                                                    <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                        <![if !supportLineBreakNewLine]>
                                                        <![endif]><o:p></o:p></P>
    <DIV id=comment style="font-size: 25px; color: #FF0000;" align="center">
    </DIV>
                                        </DIV>
                                        <!--start title-->
                                                <!--end title--><!--start content-->
                                                <!--end content--><p style="font-size: -3px; font-family: calibri;">
        .................................................................................................................................................................................................................................................................</p><!--start vavigation-->
<DIV class=navigation>
<DIV class=left></DIV>
<DIV class=right></DIV>
<DIV 
class=clear></DIV></DIV><!--end navigation--></DIV></DIV></DIV></DIV></DIV></DIV>
<DIV id=right_column>
<DIV id=calendar class=widget_style>
<H2>Calendar</H2>
<DIV id=calendar_wrap>
<asp:Calendar id="MyCalendar" runat="server" BorderWidth="0px" 
Font-Names="clibrin" Font-Size="8pt" 
ForeColor="Black" Height="128px" Width="163px" 
onselectionchanged="MyCalendar_SelectionChanged" 
NextPrevFormat="ShortMonth" BorderStyle="Solid" 
DayNameFormat="FirstTwoLetters" FirstDayOfWeek="Monday" BackColor="Black" 
CellPadding="4">
<SelectedDayStyle
ForeColor="Aqua" BackColor="Black" BorderStyle="None" />

<TodayDayStyle Font-Bold="True" Font-Names="Calibri" Font-Underline="True" 
ForeColor="#FF9900" HorizontalAlign="Center" VerticalAlign="Middle" />

<OtherMonthDayStyle ForeColor="#3C3C3C" Font-Names="Calibri" Font-Strikeout="False" 
HorizontalAlign="Center" VerticalAlign="Middle" BackColor="Black" 
Font-Underline="False" />
<DayStyle BackColor="Black" Font-Names="Calibri" ForeColor="#999999" 
Font-Size="Larger" />
<NextPrevStyle Font-Size="8pt" ForeColor="#FF9900" Font-Bold="True" 
VerticalAlign="Bottom" BackColor="Black" />
<DayHeaderStyle Font-Bold="True" Font-Size="9pt" Font-Names="Calibri" 
Font-Overline="False" Font-Strikeout="False" HorizontalAlign="Center" 
VerticalAlign="Middle" BackColor="Black" ForeColor="#999999" />
<TitleStyle BorderWidth="4px"
Font-Bold="True"
Font-Size="9pt" ForeColor="#999999" BackColor="Black" BorderColor="Black" 
BorderStyle="Solid" Font-Names="Calibri" Font-Underline="False" 
HorizontalAlign="Center" VerticalAlign="Middle" />
</asp:Calendar></DIV></DIV>
                </DIV></DIV>
<DIV class=clear></DIV></DIV>
<DIV id=footer><SPAN style="TEXT-TRANSFORM: capitalize; FONT-WEIGHT: bold">
    ©123dpfree Site</SPAN> is designed by <A href="#" 
target=_blank>H.S.</A><BR></DIV></DIV>
<DIV></DIV>
    </form>
</BODY></HTML>
