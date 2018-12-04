<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="HTML_L9.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>HTML Tutorials</TITLE>
<META content="text/html; charset=windows-1256" http-equiv=Content-Type>
<META name=Description 
content="Lesson 1 on the VB IDE, the environment, creating a Project, creating a form">
<META name=Keywords 
content="VB 6, IT training, course, application, computer programming, file processing, database">
<META name=Distribution content=Global>
<META name=Rating content=General><LINK rel=StyleSheet type=text/css 
href="images\LessonsImages\HTMLLessons\newstyles2.css">
<META name=GENERATOR content="MSHTML 8.00.6001.18904">
    <style type="text/css">


.text {font-family:"arial","helvetica"; font-size:14px; color:#000000;}

.headline{font-family:"times new roman"; font-size:26px; color:#aa0000;font-weight:bold;}
        </style>
</HEAD>
<BODY>
    <form id="form1" runat="server">
    <INPUT value=en type=hidden 
            name=hl0> 
    <INPUT 
            value=GALT:#008000;GL:1;DIV:#336699;VLC:663399;AH:center;BGC:FFFFFF;LBGC:3333FF;ALC:0000FF;LC:0000FF;T:000000;GFNT:0000FF;GIMP:0000FF;LH:50;LW:141;L:http://www.profsr.com/images/profsr_sl2.gif;S:http://www.profsr.com/home3.html;FORID:1; 
            type=hidden name=cof0> 
    <INPUT value=ISO-8859-1 type=hidden 
            name=oe0> <INPUT value=ISO-8859-1 
            type=hidden name=ie0> 
    <INPUT 
            value=1 type=hidden name=forid0> 
    <INPUT 
            value=pub-9023263975955996 type=hidden name=client0>
    <INPUT value=en type=hidden 
                  name=hl> <INPUT 
                  value=GALT:#008000;GL:1;DIV:#336699;VLC:663399;AH:center;BGC:FFFFFF;LBGC:3333FF;ALC:0000FF;LC:0000FF;T:000000;GFNT:0000FF;GIMP:0000FF;LH:50;LW:141;L:http://www.profsr.com/images/profsr_sl2.gif;S:http://www.profsr.com/home3.html;FORID:1; 
                  type=hidden name=cof> <INPUT 
                  value=ISO-8859-1 type=hidden name=oe> <INPUT 
                  value=ISO-8859-1 type=hidden name=ie> 
                  <INPUT value=1 type=hidden name=forid> <INPUT 
                  value=pub-9023263975955996 type=hidden name=client>
<script language="JavaScript">
dCol='000000';//date colour.
fCol='000000';//face colour.
sCol='000000';//seconds colour.
mCol='000000';//minutes colour.
hCol='000000';//hours colour.
ClockHeight=40;
ClockWidth=40;
ClockFromMouseY=0;
ClockFromMouseX=100;

//Alter nothing below! Alignments will be lost!

d=new Array("SUNDAY","MONDAY","TUESDAY","WEDNESDAY","THURSDAY","FRIDAY","SATURDAY");
m=new Array("JANUARY","FEBRUARY","MARCH","APRIL","MAY","JUNE","JULY","AUGUST","SEPTEMBER","OCTOBER","NOVEMBER","DECEMBER");
date=new Date();
day=date.getDate();
year=date.getYear();
if (year < 2000) year=year+1900;
TodaysDate=" "+d[date.getDay()]+" "+day+" "+m[date.getMonth()]+" "+year;
D=TodaysDate.split('');
H='...';
H=H.split('');
M='....';
M=M.split('');
S='.....';
S=S.split('');
Face='1 2 3 4 5 6 7 8 9 10 11 12';
font='Arial';
size=1;
speed=0.6;
ns=(document.layers);
ie=(document.all);
Face=Face.split(' ');
n=Face.length;
a=size*10;
ymouse=0;
xmouse=0;
scrll=0;
props="<font face="+font+" size="+size+" color="+fCol+"><B>";
props2="<font face="+font+" size="+size+" color="+dCol+"><B>";
Split=360/n;
Dsplit=360/D.length;
HandHeight=ClockHeight/4.5
HandWidth=ClockWidth/4.5
HandY=-7;
HandX=-2.5;
scrll=0;
step=0.06;
currStep=0;
y=new Array();x=new Array();Y=new Array();X=new Array();
for (i=0; i < n; i++){y[i]=0;x[i]=0;Y[i]=0;X[i]=0}
Dy=new Array();Dx=new Array();DY=new Array();DX=new Array();
for (i=0; i < D.length; i++){Dy[i]=0;Dx[i]=0;DY[i]=0;DX[i]=0}
if (ns){
for (i=0; i < D.length; i++)
document.write('<layer name="nsDate'+i+'" top=0 left=0 height='+a+' width='+a+'><center>'+props2+D[i]+'</font></center></layer>');
for (i=0; i < n; i++)
document.write('<layer name="nsFace'+i+'" top=0 left=0 height='+a+' width='+a+'><center>'+props+Face[i]+'</font></center></layer>');
for (i=0; i < S.length; i++)
document.write('<layer name=nsSeconds'+i+' top=0 left=0 width=15 height=15><font face=Arial size=3 color='+sCol+'><center><b>'+S[i]+'</b></center></font></layer>');
for (i=0; i < M.length; i++)
document.write('<layer name=nsMinutes'+i+' top=0 left=0 width=15 height=15><font face=Arial size=3 color='+mCol+'><center><b>'+M[i]+'</b></center></font></layer>');
for (i=0; i < H.length; i++)
document.write('<layer name=nsHours'+i+' top=0 left=0 width=15 height=15><font face=Arial size=3 color='+hCol+'><center><b>'+H[i]+'</b></center></font></layer>');
}
if (ie){
document.write('<div id="Od" style="position:absolute;top:0px;left:0px"><div style="position:relative">');
for (i=0; i < D.length; i++)
document.write('<div id="ieDate" style="position:absolute;top:0px;left:0;height:'+a+';width:'+a+';text-align:center">'+props2+D[i]+'</B></font></div>');
document.write('</div></div>');
document.write('<div id="Of" style="position:absolute;top:0px;left:0px"><div style="position:relative">');
for (i=0; i < n; i++)
document.write('<div id="ieFace" style="position:absolute;top:0px;left:0;height:'+a+';width:'+a+';text-align:center">'+props+Face[i]+'</B></font></div>');
document.write('</div></div>');
document.write('<div id="Oh" style="position:absolute;top:0px;left:0px"><div style="position:relative">');
for (i=0; i < H.length; i++)
document.write('<div id="ieHours" style="position:absolute;width:16px;height:16px;font-family:Arial;font-size:16px;color:'+hCol+';text-align:center;font-weight:bold">'+H[i]+'</div>');
document.write('</div></div>');
document.write('<div id="Om" style="position:absolute;top:0px;left:0px"><div style="position:relative">');
for (i=0; i < M.length; i++)
document.write('<div id="ieMinutes" style="position:absolute;width:16px;height:16px;font-family:Arial;font-size:16px;color:'+mCol+';text-align:center;font-weight:bold">'+M[i]+'</div>');
document.write('</div></div>')
document.write('<div id="Os" style="position:absolute;top:0px;left:0px"><div style="position:relative">');
for (i=0; i < S.length; i++)
document.write('<div id="ieSeconds" style="position:absolute;width:16px;height:16px;font-family:Arial;font-size:16px;color:'+sCol+';text-align:center;font-weight:bold">'+S[i]+'</div>');
document.write('</div></div>')
}
(ns)?window.captureEvents(Event.MOUSEMOVE):0;
function Mouse(evnt){
ymouse = (ns)?evnt.pageY+ClockFromMouseY-(window.pageYOffset):event.y+ClockFromMouseY;
xmouse = (ns)?evnt.pageX+ClockFromMouseX:event.x+ClockFromMouseX;
}
(ns)?window.onMouseMove=Mouse:document.onmousemove=Mouse;
function ClockAndAssign(){
time = new Date ();
secs = time.getSeconds();
sec = -1.57 + Math.PI * secs/30;
mins = time.getMinutes();
min = -1.57 + Math.PI * mins/30;
hr = time.getHours();
hrs = -1.575 + Math.PI * hr/6+Math.PI*parseInt(time.getMinutes())/360;
if (ie){
Od.style.top=window.document.body.scrollTop;
Of.style.top=window.document.body.scrollTop;
Oh.style.top=window.document.body.scrollTop;
Om.style.top=window.document.body.scrollTop;
Os.style.top=window.document.body.scrollTop;
}
for (i=0; i < n; i++){
 var F=(ns)?document.layers['nsFace'+i]:ieFace[i].style;
 F.top=y[i] + ClockHeight*Math.sin(-1.0471 + i*Split*Math.PI/180)+scrll;
 F.left=x[i] + ClockWidth*Math.cos(-1.0471 + i*Split*Math.PI/180);
 }
for (i=0; i < H.length; i++){
 var HL=(ns)?document.layers['nsHours'+i]:ieHours[i].style;
 HL.top=y[i]+HandY+(i*HandHeight)*Math.sin(hrs)+scrll;
 HL.left=x[i]+HandX+(i*HandWidth)*Math.cos(hrs);
 }
for (i=0; i < M.length; i++){
 var ML=(ns)?document.layers['nsMinutes'+i]:ieMinutes[i].style;
 ML.top=y[i]+HandY+(i*HandHeight)*Math.sin(min)+scrll;
 ML.left=x[i]+HandX+(i*HandWidth)*Math.cos(min);
 }
for (i=0; i < S.length; i++){
 var SL=(ns)?document.layers['nsSeconds'+i]:ieSeconds[i].style;
 SL.top=y[i]+HandY+(i*HandHeight)*Math.sin(sec)+scrll;
 SL.left=x[i]+HandX+(i*HandWidth)*Math.cos(sec);
 }
for (i=0; i < D.length; i++){
 var DL=(ns)?document.layers['nsDate'+i]:ieDate[i].style;
 DL.top=Dy[i] + ClockHeight*1.5*Math.sin(currStep+i*Dsplit*Math.PI/180)+scrll;
 DL.left=Dx[i] + ClockWidth*1.5*Math.cos(currStep+i*Dsplit*Math.PI/180);
 }
currStep-=step;
}
function Delay(){
scrll=(ns)?window.pageYOffset:0;
Dy[0]=Math.round(DY[0]+=((ymouse)-DY[0])*speed);
Dx[0]=Math.round(DX[0]+=((xmouse)-DX[0])*speed);
for (i=1; i < D.length; i++){
Dy[i]=Math.round(DY[i]+=(Dy[i-1]-DY[i])*speed);
Dx[i]=Math.round(DX[i]+=(Dx[i-1]-DX[i])*speed);
}
y[0]=Math.round(Y[0]+=((ymouse)-Y[0])*speed);
x[0]=Math.round(X[0]+=((xmouse)-X[0])*speed);
for (i=1; i < n; i++){
y[i]=Math.round(Y[i]+=(y[i-1]-Y[i])*speed);
x[i]=Math.round(X[i]+=(x[i-1]-X[i])*speed);
}
ClockAndAssign();
setTimeout('Delay()',20);
}
if (ns||ie)window.onload=Delay;
</script>
<TABLE border=0 width="100%">
  <TBODY>
  <TR>
    <TD>

      <DIV align=left 
            style="font-family: calibri; font-size: medium; font-variant: small-caps; font-weight: normal">
          <hr />
          <br />
    <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
            WELCOME!
        </LoggedInTemplate>
        <AnonymousTemplate>
            WELCOME GUEST! ^_^
        </AnonymousTemplate>
    </asp:LoginView>
          &nbsp; <asp:LoginName ID="LoginName1" runat="server" Font-Size="Medium" 
              ForeColor="#FF0066" />
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <asp:LoginStatus ID="LoginStatus2" runat="server" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<A title="SignUp" 
  href="Signup.aspx">Signup</A> <SPAN class=author>to add comment, &amp; to Rate The Tutorials 
          YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/HTML_L9.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
              Orientation="Horizontal" RememberMeText="" TitleText="" 
              VisibleWhenLoggedIn="False">
        <TextBoxStyle BackColor="White" />
        <LoginButtonStyle BackColor="White" Font-Bold="True" Font-Names="Calibri" 
            Font-Size="9pt" />
    </asp:Login>
                                                <br />
                                                </span></span></span>
          <hr />
                        </DIV>
        <DIV align=center>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;<img alt="" src="images/html.jpg" 
                    style="width: 204px; height: 86px" /><br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L8.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/HTML_Contents.aspx">Back to HTML Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="HTML_L10.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 9 - HTML Forms</H2>
            <BR>
                        </DIV>
      <DIV class=para1>
      <TABLE border=0 cellSpacing=0 cellPadding=10 width="90%" align="left">
        <TBODY>
        <TR>
          <TD><BR><BR>
            <DIV></DIV><BR><BR><BR></TD>
          <TD align="left">
                                            <COLSPAN="2">
                                            <br />
                                            <DIV align=center>
                                                <DIV class=para1>
                                                    <DIV c applications only. We'll leave the scientific 
        stuff to the people at M.I.T.<BR>
                                                        <p>
                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                <tr>
                                                                    <td class="main">
                                                                        <div align="left">
                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <span class="text"><span class="fancyfirst">A</span> form is simply an area that 
                                                                            can contain form fields.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">F</span>orm fields are objects that allow the visitor 
                                                                            to enter information - for example text boxes, drop-down menus or radio buttons.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">W</span>hen the visitor clicks a submit button, the 
                                                                            content of the form is usually sent to a program that runs on the server. 
                                                                            However, there are exceptions.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">J</span>avascript is sometimes used to create magic 
                                                                            with form fields. An example could be when turning options in a drop-down menu 
                                                                            into normal links.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">Y</span>ou can use our
                                                                            <a href="#"><span class="link">online 
                                                                            tool</span></a> to create such a menu in less than 5 minutes - without knowing 
                                                                            anything about javascript.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">O</span>therwise - proceed to learn more about forms...<br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline">
                                                                                EXAMPLES</div>
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">A</span> typical form example would be a search engine.<br />
                                                                            <br />
                                                                            <div align="center">
                                                                                <table bgcolor="#aaaabb" border="1" width="280">
                                                                                    <tr>
                                                                                        <td bgcolor="#cdcdcd">
                                                                                            <input name="db" type="hidden" value="sites/echoecho.com" />
                                                                                            <input align="top" name="query" size="23" />
                                                                                            <input type="submit" value="SEARCH!" /><br />
                                                                                            <font color="#333333" face="Arial" size="1">SEARCH THIS SITE</font></td>
                                                                                    </tr>
                                                                                </table>
                                                                            </div>
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>his is what happens when the form is submitted:<br />
                                                                            <ul>
                                                                                <li>The search words are sent to a program on the server.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>The program will search a database for matches.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>The program creates a webpage with the results.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>The results webpage is sent back to the visitor.<br />
                                                                                </li>
                                                                            </ul>
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">A</span>nother example would be a logon page.<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="1" cellpadding="0" 
                                                                                cellspacing="0" width="280">
                                                                                <tr>
                                                                                    <td>
                                                                                        <table align="center" bgcolor="#eeeeff" border="0" cellpadding="0" 
                                                                                            cellspacing="0" width="280">
                                                                                            <tr>
                                                                                                <td align="middle" bgcolor="#eeeeff" colspan="2">
                                                                                                    <input name="js" type="hidden" value="0" />
                                                                                                    <font face="ms sans serif,arial,verdana" size="2">
                                                                                                    <br />
                                                                                                    <b>FREE WEB-EMAIL AT<br />
                                                                                                    ECHOECHO.COM</b></font></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="right">
                                                                                                    <font face="ms sans serif,arial,verdana" size="2">
                                                                                                    <br />
                                                                                                    <b>Username:</b></font></td>
                                                                                                <td>
                                                                                                    <br />
                                                                                                    <font face="ms sans serif,arial,verdana">
                                                                                                    <input maxlength="20" name="un" size="12" /></font></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="right">
                                                                                                    <font face="ms sans serif,arial,verdana" size="2"><b>Password:</b></font></td>
                                                                                                <td>
                                                                                                    <font face="ms sans serif,arial,verdana">
                                                                                                    <input maxlength="15" name="pw" size="12" type="password" value="" /></font></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="middle" colspan="2">
                                                                                                    <input name="submit" type="submit" value="Log In" />
                                                                                                    <p>
                                                                                                    </p>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="middle" colspan="2">
                                                                                                    <font face="ms sans serif,arial,verdana" size="1"><b>NEW USERS:                                                                                                     <a href="http://mail.bigmailbox.com/users/echoechocom/signup.cgi">
                                                                                                    <font color="#000099">SIGN UP HERE!</font></a></b><br />
                                                                                                    <br />
                                                                                                    <b><a href="http://mail.bigmailbox.com/users/echoechocom/forgotpassword.cgi">
                                                                                                    <font color="#000099">FORGOT YOUR PASSWORD?</font></a></b><br />
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>his is what happens when the form is submitted:<br />
                                                                            <ul>
                                                                                <li>The ID and password are sent to a program on the server.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>The program will search a database for valid entries.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>If the entry is valid the visitor is sent to the protected page.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>If the entry is invalid the visitor is sent to a &quot;failure&quot; page.<br />
                                                                                </li>
                                                                            </ul>
                                                                            <br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">B</span>oth examples send the contents of the form 
                                                                            fields to programs running on the server.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">O</span>n the next page you will learn how to run 
                                                                            programs that can handle your forms (even if you technically can't do 
                                                                            programming on your server)....<br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline">
                                                                                CCGI SCRIPTS</div>
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">W</span>hen your form is submitted you need a program 
                                                                            that can receive the information and do something with it.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">S</span>uch programs are sometimes referred to as: CGI 
                                                                            programs.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">C</span>GI stands for Common Gateway Interface, which 
                                                                            is computer latin for a program that translates information.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>his translation is necessary because the server 
                                                                            might be a UNIX machine while the visitor might be sending information from a 
                                                                            Windows platform.
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">W</span>indows and UNIX handle information differently 
                                                                            - so if there were no CGI, then UNIX machines could only communicate with other 
                                                                            UNIX machines etc. and that is pretty far from the basic idea of the world wide 
                                                                            web.<br />
                                                                            <br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">N</span>ow, you might be thinking &quot;Well, I can't run 
                                                                            programs on my server so this is nothing for me&quot;.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">F</span>ortunately you're most likely wrong.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>here are dozens of free services on the web 
                                                                            that will offer you free CGI for almost any purpose you might have.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">W</span>e devoted an entire
                                                                            <a href="http://www.echoecho.com/cgi.htm"><span class="link">CGI section</span></a> 
                                                                            on this site, to help you find what you need - including guestbooks, poll 
                                                                            systems, counters, form mailers etc etc etc.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">O</span>n the following pages we will introduce the 
                                                                            different form tags and settings you can use....<br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline">
                                                                                THE FORM TAG</div>
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">W</span>hen a form is submitted, all fields on the form 
                                                                            are being sent.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he <span class="style2">&lt;form&gt;</span> tag tells 
                                                                            the browser where the form starts and ends. You can add all kinds of HTML tags 
                                                                            between the <span class="style2">&lt;form&gt;</span> and <span class="style2">&lt;/form&gt;</span> 
                                                                            tags.
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>his means that a form can easily include a 
                                                                            table or an image along with the form fields mentioned here<br />
                                                                            <br />
                                                                            <span class="fancyfirst">L</span>ook at this example:<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                    &lt;head&gt;<br />
                                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                                    &lt;/head&gt;<br />
                                                                                                    <br />
                                                                                                    &lt;body&gt;<br />
                                                                                                    &lt;!-- Here goes HTML --&gt;<br />
                                                                                                    <span class="style1">&lt;form&gt;</span><br />
                                                                                                    &lt;!-- Here goes form fields and HTML --&gt;<br />
                                                                                                    <span class="style1">&lt;/form&gt; </span>
                                                                                                    <br />
                                                                                                    &lt;!-- Here goes HTML --&gt;<br />
                                                                                                    &lt;/body&gt;<br />
                                                                                                    &lt;/html&gt;<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <!-- perl mysql php web host-->
                                                                            <br />
                                                                            <br />
                                                                            <span class="note"><span class="fancyfirst">N</span>ote:<br />
                                                                            Unlike a table, forms are not visible on the page.</span><br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he form in our example is useless for two 
                                                                            obvious reasons:<br />
                                                                            <ul>
                                                                                <li>First it contains no form fields. It is simply comparable to a blank sheet of 
                                                                                    paper.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>Second, it does not contain a recipient for the form once it is submitted.
                                                                                    <br />
                                                                                </li>
                                                                            </ul>
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>o let the browser know where to send the 
                                                                            content we add these properties to the <span class="style2">&lt;form&gt;</span> tag:<br />
                                                                            <ul>
                                                                                <li><span class="style4">action=<span class="style2">address</span></span>
                                                                                    <br />
                                                                                    <br />
                                                                                </li>
                                                                                <li><span class="style4">method=<span class="style2">post</span></span> or
                                                                                    <span class="style4">method=<span class="style2">get</span></span>
                                                                                    <br />
                                                                                </li>
                                                                            </ul>
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he <span class="style4"><span class="style2">
                                                                            address</span></span> is the url of the cgi script the content should be sent 
                                                                            to. The <span class="style4"><span class="style2">post</span></span> and
                                                                            <span class="style4"><span class="style2">get</span></span> methods are simply 
                                                                            two different methods for submitting data to the script.
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>f you are using a pre-programmed script (which 
                                                                            we assume here) it is not important to understand the difference between
                                                                            <span class="style4"><span class="style2">get</span></span> and
                                                                            <span class="style4"><span class="style2">post</span></span>.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>n the description of the script you are using 
                                                                            it will be made clear whether the scripts should be addressed using one method 
                                                                            or the other.
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">B</span>elow is an example of a typical form tag, with 
                                                                            both action and method specified.<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                    &lt;head&gt;<br />
                                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                                    &lt;/head&gt;<br />
                                                                                                    <br />
                                                                                                    &lt;body&gt;<br />
                                                                                                    &lt;!-- Here goes HTML --&gt;<br />
                                                                                                    <span class="style1">&lt;form method=&quot;post&quot; 
                                                                                                    action=&quot;http://www.echoecho.com/cgi-bin/formmail.cgi&quot;&gt;</span><br />
                                                                                                    &lt;!-- Here goes form fields and HTML --&gt;<br />
                                                                                                    <span class="style1">&lt;/form&gt; </span>
                                                                                                    <br />
                                                                                                    &lt;!-- Here goes HTML --&gt;<br />
                                                                                                    &lt;/body&gt;<br />
                                                                                                    &lt;/html&gt;<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <!-- perl mysql php web host-->
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">A</span>ll we need now, is to allow the visitor to 
                                                                            enter some information.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he next page explains how to do that....<br />
                                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline">
                                                                                FORM FIELDS</div>
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>hese fields can be added to your forms:<br />
                                                                            <br />
                                                                            <ul>
                                                                                <li><a href="#"><span class="link">Text field</span></a><br />
                                                                                </li>
                                                                                <li><a href="#"><span class="link">Password 
                                                                                    field</span></a><br />
                                                                                </li>
                                                                                <li><a href="#"><span class="link">Hidden 
                                                                                    field</span></a><br />
                                                                                </li>
                                                                                <li><a href="#"><span class="link">Text area</span></a><br />
                                                                                </li>
                                                                                <li><a href="#"><span class="link">Check box</span></a><br />
                                                                                </li>
                                                                                <li><a href="#"><span class="link">Radio 
                                                                                    button</span></a><br />
                                                                                </li>
                                                                                <li><a href="#"><span class="link">Drop-down 
                                                                                    menu</span></a><br />
                                                                                </li>
                                                                                <li><a href="#"><span class="link">Submit 
                                                                                    button</span></a><br />
                                                                                </li>
                                                                                <li><a href="#"><span class="link">Reset 
                                                                                    button</span></a><br />
                                                                                </li>
                                                                                <li><a href="#"><span class="link">Image 
                                                                                    button</span></a><br />
                                                                                </li>
                                                                            </ul>
                                                                            <br />
                                                                            <span class="fancyfirst">Y</span>ou can click on the field type to get a 
                                                                            detailed explanation.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>f you are already familiar with form fields you 
                                                                            can jump to our <a href="http://www.echoecho.com/htmlforms15.htm">
                                                                            <span class="link">Quick Reference</span></a> to view all fields at once.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">F</span>inally, if you want to learn how to validate 
                                                                            inputs to form fields (valid email address etc.) you should check out
                                                                            <a href="http://www.echoecho.com/jsforms.htm"><span class="link">this</span></a> 
                                                                            article from our javascript tutorial.<br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline">
                                                                                TEXT FIELD</div>
                                                                            <br />
                                                                            <br />
                                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                                <tr>
                                                                                    <td class="main">
                                                                                        <div align="left">
                                                                                            <br />
                                                                                            <span class="text"><span class="fancyfirst">T</span>ext fields are one line 
                                                                                            areas that allow the user to input text.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">I</span>f you want several lines you should use a
                                                                                            <a href="#"><span class="link">text area</span></a> 
                                                                                            instead.<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">S</span>ETTINGS:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">B</span>elow is a listing of valid settings for text 
                                                                                            fields:<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                                                            style="background-color: #FFFFFF">
                                                                                                            <tr>
                                                                                                                <td class="table8">
                                                                                                                    <!-- perl mysql php web host -->HTML</td>
                                                                                                                <td class="table8">
                                                                                                                    EXPLANATION</td>
                                                                                                                <td class="table8">
                                                                                                                    EXAMPLE<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    text
                                                                                                                    <br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;size=<br />
                                                                                                                    &nbsp;&nbsp;maxlength=<br />
                                                                                                                    &nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=<br />
                                                                                                                    &nbsp;&nbsp;align=<br />
                                                                                                                    &nbsp;&nbsp;tabindex=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    One line text field<br />
                                                                                                                    <span class="style1">Characters shown.<br />
                                                                                                                    Max characters allowed.<br />
                                                                                                                    Name of the field.<br />
                                                                                                                    Initial value in the field.<br />
                                                                                                                    Alignment of the field.<br />
                                                                                                                    Tab order of the field.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input name="shorttext" size="10" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">size</span> option 
                                                                                            defines the width of the field. That is how many visible characters it can 
                                                                                            contain.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">maxlength</span> option 
                                                                                            defines the maximum length of the field. That is how many characters can be 
                                                                                            entered in the field.<br />
                                                                                            If you do not specify a maxlength, the visitor can easily enter more characters 
                                                                                            than are visible in the field at one time.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">name</span> setting 
                                                                                            adds an internal name to the field so the program that handles the form can 
                                                                                            identify the fields.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">value</span> setting 
                                                                                            defines what will appear in the box as the default value.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">align</span> setting 
                                                                                            defines how the field is aligned.<br />
                                                                                            Valid entries are: TOP, MIDDLE, BOTTOM, RIGHT, LEFT, TEXTTOP, BASELINE, 
                                                                                            ABSMIDDLE, ABSBOTTOM. The alignments are explained in the image section. You can 
                                                                                            learn about the different alignments
                                                                                            <a href="HTML_L4.aspx"><span class="link">here</span></a>.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">tabindex</span> setting 
                                                                                            defines in which order the different fields should be activated when the visitor 
                                                                                            clicks the tab key.<br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">A</span>N EXAMPLE:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">L</span>ook at this HTML example:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                                                            style="background-color: #FFFFFF">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                                    &lt;head&gt;<br />
                                                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                                                    &lt;/head&gt;<br />
                                                                                                                    &lt;body&gt;<br />
                                                                                                                    &lt;form name=&quot;myform&quot; action=&quot;http://www.mydomain.com/myformhandler.cgi&quot; 
                                                                                                                    method=&quot;POST&quot;&gt;<br />
                                                                                                                    &lt;div align=&quot;center&quot;&gt;<br />
                                                                                                                    &lt;br&gt;&lt;br&gt;<br />
                                                                                                                    <span class="style1">&lt;input type=&quot;text&quot; size=&quot;25&quot; value=&quot;Enter your name here!&quot;&gt;</span><br />
                                                                                                                    &lt;br&gt;&lt;br&gt;<br />
                                                                                                                    &lt;/div&gt;<br />
                                                                                                                    &lt;/form&gt;<br />
                                                                                                                    &lt;/body&gt;<br />
                                                                                                                    &lt;/html&gt;<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">A</span>nd the resulting output from it:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                                                            style="background-color: #FFFFFF">
                                                                                                            <tr>
                                                                                                                <td class="table6">
                                                                                                                    <!-- perl mysql php web host -->
                                                                                                                    <br />
                                                                                                                    <input size="25" value="Enter your name here!" />
                                                                                                                    <div align="center">
                                                                                                                    </div>
                                                                                                                    <br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            </span>
                                                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                PASSWORD FIELD</div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="text"><span class="fancyfirst">P</span>assword fields are similar 
                                                                                            to text fields.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he difference is that what is entered into a 
                                                                                            password field shows up as dots on the screen. This is, of course, to prevent 
                                                                                            others from reading the password on the screen.<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">S</span>ETTINGS:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">B</span>elow is a listing of valid settings for 
                                                                                            password fields:<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                                                            style="background-color: #FFFFFF">
                                                                                                            <tr>
                                                                                                                <td class="table8">
                                                                                                                    <!-- perl mysql php web host -->HTML</td>
                                                                                                                <td class="table8">
                                                                                                                    EXPLANATION</td>
                                                                                                                <td class="table8">
                                                                                                                    EXAMPLE<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    password
                                                                                                                    <br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;size=<br />
                                                                                                                    &nbsp;&nbsp;maxlength=<br />
                                                                                                                    &nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=<br />
                                                                                                                    &nbsp;&nbsp;align=<br />
                                                                                                                    &nbsp;&nbsp;tabindex=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    One line password field<br />
                                                                                                                    <span class="style1">Characters shown.<br />
                                                                                                                    Max characters allowed.<br />
                                                                                                                    Name of the field.<br />
                                                                                                                    Initial value in the field.<br />
                                                                                                                    Alignment of the field.<br />
                                                                                                                    Tab order of the field.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input name="shorttext0" size="10" type="password" value="" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">size</span> option 
                                                                                            defines the width of the field. That is how many visible characters it can 
                                                                                            contain.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">maxlength</span> option 
                                                                                            defines the maximum length of the field. That is how many characters can be 
                                                                                            entered in the field.<br />
                                                                                            If you do not specify a maxlength, the visitor can easily enter more characters 
                                                                                            than are visible in the field at one time.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">name</span> setting 
                                                                                            adds an internal name to the field so the program that handles the form can 
                                                                                            identify the fields.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">value</span> setting 
                                                                                            defines what will appear in the box as the default value.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">align</span> setting 
                                                                                            defines how the field is aligned.<br />
                                                                                            Valid entries are: TOP, MIDDLE, BOTTOM, RIGHT, LEFT, TEXTTOP, BASELINE, 
                                                                                            ABSMIDDLE, ABSBOTTOM. The alignments are explained in the image section. You can 
                                                                                            learn about the different alignments
                                                                                            <a href="HTML_L4.aspx" style="background-color: #FFFFFF"><span class="link">here</span></a>.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">tabindex</span> setting 
                                                                                            defines in which order the different fields should be activated when the visitor 
                                                                                            clicks the tab key.
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">A</span>N EXAMPLE:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">L</span>ook at this HTML example:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                                    &lt;head&gt;<br />
                                                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                                                    &lt;/head&gt;<br />
                                                                                                                    &lt;body&gt;<br />
                                                                                                                    &lt;form name=&quot;myform&quot; action=&quot;http://www.mydomain.com/myformhandler.cgi&quot; 
                                                                                                                    method=&quot;POST&quot;&gt;<br />
                                                                                                                    &lt;div align=&quot;center&quot;&gt;<br />
                                                                                                                    Enter Password : <span class="style1">&lt;input type=&quot;password&quot; size=&quot;25&quot;&gt;</span><br />
                                                                                                                    &lt;br&gt;&lt;br&gt;<br />
                                                                                                                    &lt;/div&gt;<br />
                                                                                                                    &lt;/form&gt;<br />
                                                                                                                    &lt;/body&gt;<br />
                                                                                                                    &lt;/html&gt;<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">A</span>nd the resulting output from it:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table6">
                                                                                                                    <!-- perl mysql php web host -->
                                                                                                                    <br />
                                                                                                                    Enter Password :
                                                                                                                    <input size="25" type="password" value="" />
                                                                                                                    <div align="center">
                                                                                                                    </div>
                                                                                                                    <br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            </span>
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                HIDDEN FIELD</div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="text"><span class="fancyfirst">H</span>idden fields are similar to 
                                                                                            text fields, with one very important difference!<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he difference is that the hidden field does not 
                                                                                            show on the page. Therefore the visitor can't type anything into a hidden field, 
                                                                                            which leads to the purpose of the field:<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>o submit information that is not entered by the 
                                                                                            visitor.<br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">S</span>ETTINGS:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">B</span>elow is a listing of valid settings for hidden 
                                                                                            fields:<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table8">
                                                                                                                    <!-- perl mysql php web host -->HTML</td>
                                                                                                                <td class="table8">
                                                                                                                    EXPLANATION</td>
                                                                                                                <td class="table8">
                                                                                                                    EXAMPLE<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    hidden
                                                                                                                    <br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Hidden field<span class="style1"><br />
                                                                                                                    Name of the field.<br />
                                                                                                                    Value of the field.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    &nbsp;<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">name</span> setting 
                                                                                            adds an internal name to the field so the program that handles the form can 
                                                                                            identify the fields.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">value</span> setting 
                                                                                            defines what will be sent once the form is submitted.<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">A</span>N EXAMPLE:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">L</span>ook at this HTML example:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                                    &lt;head&gt;<br />
                                                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                                                    &lt;/head&gt;<br />
                                                                                                                    &lt;body&gt;<br />
                                                                                                                    &lt;form name=&quot;myform&quot; action=&quot;http://www.mydomain.com/myformhandler.cgi&quot; 
                                                                                                                    method=&quot;POST&quot;&gt;<br />
                                                                                                                    &lt;div align=&quot;center&quot;&gt;<br />
                                                                                                                    &lt;input type=&quot;text&quot; size=&quot;25&quot; value=&quot;Enter your name here!&quot;&gt;<br />
                                                                                                                    <span class="style1">&lt;input type=&quot;hidden&quot; name=&quot;Language&quot; value=&quot;English&quot;&gt;</span><br />
                                                                                                                    &lt;br&gt;&lt;br&gt;<br />
                                                                                                                    &lt;/div&gt;<br />
                                                                                                                    &lt;/form&gt;<br />
                                                                                                                    &lt;/body&gt;<br />
                                                                                                                    &lt;/html&gt;<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">A</span>nd the resulting output from it:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table6">
                                                                                                                    <!-- perl mysql php web host -->
                                                                                                                    <br />
                                                                                                                    <input size="25" value="Enter your name here!" /><input name="Language" 
                                                                                                                        type="hidden" value="English" />
                                                                                                                    <div align="center">
                                                                                                                    </div>
                                                                                                                    <br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he hidden field does not show, but still, when 
                                                                                            the form is submitted the hidden field is sent with it.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">I</span>n this example the hidden field would tell the 
                                                                                            program that handles the form, that the users preferred language is English.<br />
                                                                                            </span>
                                                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                TEXT AREA</div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="text"><span class="fancyfirst">T</span>ext areas are text fields 
                                                                                            that can span several lines.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">U</span>nlike most other form fields, text areas are 
                                                                                            not defined with an <span class="style2">&lt;input&gt;</span> tag.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">I</span>nstead you enter a <span class="style2">
                                                                                            &lt;textarea&gt;</span> tag where you want the text area to start and a closing
                                                                                            <span class="style2">&lt;/textarea&gt;</span> tag where you want the area to end.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">E</span>verything written between these tags will be 
                                                                                            presented in the text area box.<br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">S</span>ETTINGS:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">B</span>elow is a listing of valid settings for text 
                                                                                            areas:<br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table8">
                                                                                                                    <!-- perl mysql php web host -->HTML</td>
                                                                                                                <td class="table8">
                                                                                                                    EXPLANATION</td>
                                                                                                                <td class="table8">
                                                                                                                    EXAMPLE<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    textarea<br />
                                                                                                                    <span class="style1">rows=<br />
                                                                                                                    cols=<br />
                                                                                                                    name=<br />
                                                                                                                    tabindex=<br />
                                                                                                                    <br />
                                                                                                                    wrap=<br />
                                                                                                                    off<br />
                                                                                                                    virtual<br />
                                                                                                                    <br />
                                                                                                                    physical<br />
                                                                                                                    </span>
                                                                                                                    <br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Text area - several lines<br />
                                                                                                                    <span class="style1">Rows in the field.<br />
                                                                                                                    Columns in the field.<br />
                                                                                                                    Name of the field.<br />
                                                                                                                    Tab order of the field.<br />
                                                                                                                    <br />
                                                                                                                    <br />
                                                                                                                    Turns off linebreaking<br />
                                                                                                                    Shows linebreaking, but<br />
                                                                                                                    sends text as entered.<br />
                                                                                                                    Inserts linebreaks when<br />
                                                                                                                    needed and even sends it.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <textarea cols="10" name="longtext" rows="5"></textarea><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">cols</span> and
                                                                                            <span class="style4">rows</span> settings are straightforward and simple. They 
                                                                                            specify how many columns and rows you want in your text area.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">name</span> setting 
                                                                                            adds an internal name to the field so the program that handles the form can 
                                                                                            identify the fields.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">tabindex</span> setting 
                                                                                            defines in which order the different fields should be activated when the visitor 
                                                                                            clicks the tab key.
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">wrap</span> options are 
                                                                                            the most tricky part of text areas.<br />
                                                                                            If you turn wrap <span class="style4">off</span> the text is handled as one long 
                                                                                            sequence of text without linebreaks.<br />
                                                                                            If you set it to <span class="style4">virtual</span> the text appears on your 
                                                                                            page as if it recognized linebreaks - but when the form is submitted the 
                                                                                            linebreaks are turned off.<br />
                                                                                            If you set it to <span class="style4">physical</span> the text is submitted 
                                                                                            exactly as it appears on the screen - linebreaks included.<br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">A</span>N EXAMPLE:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">L</span>ook at this HTML example:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                                    &lt;head&gt;<br />
                                                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                                                    &lt;/head&gt;<br />
                                                                                                                    <br />
                                                                                                                    &lt;body&gt;<br />
                                                                                                                    &lt;form name=&quot;myform&quot; action=&quot;http://www.mydomain.com/myformhandler.cgi&quot; 
                                                                                                                    method=&quot;POST&quot;&gt;<br />
                                                                                                                    &lt;div align=&quot;center&quot;&gt;<br />
                                                                                                                    This is outside the area&lt;br&gt;&lt;br&gt;<br />
                                                                                                                    <span class="style1">&lt;textarea cols=&quot;40&quot; rows=&quot;5&quot; name=&quot;myname&quot;&gt;<br />
                                                                                                                    Now we are inside the area - which is nice.<br />
                                                                                                                    &lt;/textarea&gt;</span><br />
                                                                                                                    &lt;br&gt;&lt;br&gt;<br />
                                                                                                                    And now we are outside the area again.<br />
                                                                                                                    &lt;/div&gt;<br />
                                                                                                                    &lt;/form&gt;<br />
                                                                                                                    &lt;/body&gt;<br />
                                                                                                                    &lt;/html&gt;<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst"></span></span>
                                                                                            <div align="center" class="headline">
                                                                                                CHECK BOX</div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="text"><span class="fancyfirst">C</span>heck boxes are used when you 
                                                                                            want to let the visitor select one or more options from a set of alternatives. 
                                                                                            If only one option is to be selected at a time you should use
                                                                                            <a href="#span class="link">radio 
                                                                                            buttons</span></a> instead.<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">S</span>ETTINGS:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">B</span>elow is a listing of valid settings for check 
                                                                                            boxes:<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table8">
                                                                                                                    <!-- perl mysql php web host -->HTML</td>
                                                                                                                <td class="table8">
                                                                                                                    EXPLANATION</td>
                                                                                                                <td class="table8">
                                                                                                                    EXAMPLE<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    checkbox<br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=<br />
                                                                                                                    &nbsp;&nbsp;align=<br />
                                                                                                                    &nbsp;&nbsp;tabindex=<br />
                                                                                                                    checked</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Choose one or more options<br />
                                                                                                                    <span class="style1">Name of the field.<br />
                                                                                                                    Value that is submitted if checked.<br />
                                                                                                                    Alignment of the field.<br />
                                                                                                                    Tab order of the field.<br />
                                                                                                                    Default check this field.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input name="Checkbox1" type="checkbox" value="ON" /><input checked 
                                                                                                                        name="Checkbox2" type="checkbox" value="ON" /><input name="Checkbox" 
                                                                                                                        type="checkbox" value="ON" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">name</span> setting 
                                                                                            adds an internal name to the field so the program that handles the form can 
                                                                                            identify the fields.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">value</span> setting 
                                                                                            defines what will be submitted if checked.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">align</span> setting 
                                                                                            defines how the field is aligned.<br />
                                                                                            Valid entries are: TOP, MIDDLE, BOTTOM, RIGHT, LEFT, TEXTTOP, BASELINE, 
                                                                                            ABSMIDDLE, ABSBOTTOM.
                                                                                            <br />
                                                                                            The alignments are explained in the image section. You can learn about the 
                                                                                            different alignments <a href="http://www.echoecho.com/htmlimages07.htm">
                                                                                            <span class="link">here</span></a>.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">tabindex</span> setting 
                                                                                            defines in which order the different fields should be activated when the visitor 
                                                                                            clicks the tab key.<br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">A</span>N EXAMPLE:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">L</span>ook at this HTML example:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                                    &lt;head&gt;<br />
                                                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                                                    &lt;/head&gt;<br />
                                                                                                                    &lt;body&gt;<br />
                                                                                                                    &lt;form name=&quot;myform&quot; action=&quot;http://www.mydomain.com/myformhandler.cgi&quot; 
                                                                                                                    method=&quot;POST&quot;&gt;<br />
                                                                                                                    &lt;div align=&quot;center&quot;&gt;&lt;br&gt;<br />
                                                                                                                    <span class="style1">&lt;input type=&quot;checkbox&quot; name=&quot;option1&quot; value=&quot;Milk&quot;&gt; 
                                                                                                                    Milk&lt;br&gt;<br />
                                                                                                                    &lt;input type=&quot;checkbox&quot; name=&quot;option2&quot; value=&quot;Butter&quot; checked&gt; Butter&lt;br&gt;<br />
                                                                                                                    &lt;input type=&quot;checkbox&quot; name=&quot;option3&quot; value=&quot;Cheese&quot;&gt; Cheese&lt;br&gt;<br />
                                                                                                                    </span>&lt;br&gt;<br />
                                                                                                                    &lt;/div&gt;<br />
                                                                                                                    &lt;/form&gt;<br />
                                                                                                                    &lt;/body&gt;<br />
                                                                                                                    &lt;/html&gt;<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">A</span>nd the resulting output from it:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table5">
                                                                                                                    <!-- perl mysql php web host -->
                                                                                                                    <br />
                                                                                                                    <input name="option1" type="checkbox" value="Milk" /> Milk<br />
                                                                                                                    <input checked name="option2" type="checkbox" value="Butter" /> Butter<br />
                                                                                                                    <input name="option3" type="checkbox" value="Cheese" /> Cheese<br />
                                                                                                                    <div align="center">
                                                                                                                    </div>
                                                                                                                    <br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            </span>
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
            <DIV align=center><A 
            href="#top">Top</A><br />
                <br />
                                                                                                </DIV>
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                RADIO BUTTON</div>
                                                                                            <br />
                                                                                            <span class="text"><span class="fancyfirst">R</span>adio buttons are used when 
                                                                                            you want to let the visitor select one - and just one - option from a set of 
                                                                                            alternatives. If more options are to be allowed at the same time you should use
                                                                                            <br />
                                                                                            <a href="#"><span class="link">check boxes</span></a> 
                                                                                            instead.<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">S</span>ETTINGS:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">B</span>elow is a listing of valid settings for radio 
                                                                                            buttons:<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                                                            style="background-color: #FFFFFF">
                                                                                                            <tr>
                                                                                                                <td class="table8">
                                                                                                                    <!-- perl mysql php web host -->HTML</td>
                                                                                                                <td class="table8">
                                                                                                                    EXPLANATION</td>
                                                                                                                <td class="table8">
                                                                                                                    EXAMPLE<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    radio<br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=<br />
                                                                                                                    &nbsp;&nbsp;align=<br />
                                                                                                                    &nbsp;&nbsp;tabindex=<br />
                                                                                                                    checked</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Choose one - and only one - option<br />
                                                                                                                    <span class="style1">Name of the group.<br />
                                                                                                                    Value that is submitted if checked.<br />
                                                                                                                    Alignment of the field.<br />
                                                                                                                    Tab order of the field.<br />
                                                                                                                    Default check this field.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input name="radio1" type="radio" value="1" /><input name="radio1" type="radio" 
                                                                                                                        value="2" /><input checked="checked" name="radio1" type="radio" value="3" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">name</span> setting 
                                                                                            tells which group of radio buttons the field belongs to. When you select one 
                                                                                            button, all other buttons in the same group are unselected.<br />
                                                                                            If you couldn't define which group the current button belongs to, you could only 
                                                                                            have one group of radio buttons on each page.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">value</span> setting 
                                                                                            defines what will be submitted if checked.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">align</span> setting 
                                                                                            defines how the field is aligned.<br />
                                                                                            Valid entries are: TOP, MIDDLE, BOTTOM, RIGHT, LEFT, TEXTTOP, BASELINE, 
                                                                                            ABSMIDDLE, ABSBOTTOM.
                                                                                            <br />
                                                                                            The alignments are explained in the image section. You can learn about the 
                                                                                            different alignments <a href="HTML_L4.aspx" style="background-color: #FFFFFF">
                                                                                            <span class="link">here</span></a>.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">tabindex</span> setting 
                                                                                            defines in which order the different fields should be activated when the visitor 
                                                                                            clicks the tab key.<br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">A</span>N EXAMPLE:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">L</span>ook at this HTML example:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                                    &lt;head&gt;<br />
                                                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                                                    &lt;/head&gt;<br />
                                                                                                                    &lt;body&gt;<br />
                                                                                                                    &lt;form name=&quot;myform&quot; action=&quot;http://www.mydomain.com/myformhandler.cgi&quot; 
                                                                                                                    method=&quot;POST&quot;&gt;<br />
                                                                                                                    &lt;div align=&quot;center&quot;&gt;&lt;br&gt;<br />
                                                                                                                    <span class="style1">&lt;input type=&quot;radio&quot; name=&quot;group1&quot; value=&quot;Milk&quot;&gt; Milk&lt;br&gt;<br />
                                                                                                                    &lt;input type=&quot;radio&quot; name=&quot;group1&quot; value=&quot;Butter&quot; checked&gt; Butter&lt;br&gt;<br />
                                                                                                                    &lt;input type=&quot;radio&quot; name=&quot;group1&quot; value=&quot;Cheese&quot;&gt; Cheese<br />
                                                                                                                    &lt;hr&gt;<br />
                                                                                                                    &lt;input type=&quot;radio&quot; name=&quot;group2&quot; value=&quot;Water&quot;&gt; Water&lt;br&gt;<br />
                                                                                                                    &lt;input type=&quot;radio&quot; name=&quot;group2&quot; value=&quot;Beer&quot;&gt; Beer&lt;br&gt;<br />
                                                                                                                    &lt;input type=&quot;radio&quot; name=&quot;group2&quot; value=&quot;Wine&quot; checked&gt; Wine</span>&lt;br&gt;<br />
                                                                                                                    &lt;/div&gt;<br />
                                                                                                                    &lt;/form&gt;<br />
                                                                                                                    &lt;/body&gt;<br />
                                                                                                                    &lt;/html&gt;<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">A</span>nd the resulting output:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table5">
                                                                                                                    <!-- perl mysql php web host -->
                                                                                                                    <br />
                                                                                                                    <br />
                                                                                                                    <input name="group1" type="radio" value="Milk" /> Milk<br />
                                                                                                                    <input checked="checked" name="group1" type="radio" value="Butter" /> Butter<br />
                                                                                                                    <input name="group1" type="radio" value="Cheese" /> Cheese
                                                                                                                    <hr />
                                                                                                                    <input name="group2" type="radio" value="Water" /> Water<br />
                                                                                                                    <input name="group2" type="radio" value="Beer" /> Beer<br />
                                                                                                                    <input checked="checked" name="group2" type="radio" value="Wine" /> Wine
                                                                                                                    <div align="center">
                                                                                                                    </div>
                                                                                                                    <br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            </span>
                                                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                DROP DOWN MENU</div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="text"><span class="fancyfirst">D</span>rop-down menus are probably 
                                                                                            the most flexible objects you can add to your forms.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">D</span>epending on your settings, drop-down menus can 
                                                                                            serve the same purpose as radio buttons (one selection only) or check boxes 
                                                                                            (multiple selections allowed).<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he advantage of a drop-down menu, compared to 
                                                                                            radio buttons or check boxes, is that it takes up less space.<br />
                                                                                            But that is also a disadvantage, because people can't see all options in the 
                                                                                            menu right away.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>here is a workaround for this - with the size 
                                                                                            setting, you can customize the menu so it shows more than just one option at a 
                                                                                            time, but when you do that - you also lose the advantage of taking up less 
                                                                                            space.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">S</span>o whatever you decide - there is always a bonus 
                                                                                            and a price to pay.<br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">S</span>ometimes you may want to replace text fields 
                                                                                            with drop-down menus. This might be because selecting from a menu is easier than 
                                                                                            typing. But it could also be because the script that handles the form can't 
                                                                                            interpret just any text entry.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">F</span>or example, you will often be asked to choose 
                                                                                            your state from a drop-down menu. This might be because picking it from the menu 
                                                                                            is easier than typing the name of the state.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">A</span>long the same line, you may often asked to 
                                                                                            enter the 2 letter initials of your state from a drop-down menu as well.<br />
                                                                                            This could prevent confusion for the script that handles the form input. If, 
                                                                                            say, the script was programmed to only accept capital letters, then a drop-down 
                                                                                            menu would secure that no invalid entries were made.<br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">A</span>nother typical example would be replacing links 
                                                                                            with drop-down menus.
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>his can be done with javascript. If you're not 
                                                                                            into programming you can easily create a drop-down link menu with our
                                                                                            <a href="http://www.echoecho.com/tooldropdown.htm"><span class="link">online 
                                                                                            tool</span></a>.<br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">S</span>ETTINGS:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">B</span>elow is a listing of valid settings for 
                                                                                            drop-down menus:<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table8">
                                                                                                                    <!-- perl mysql php web host -->HTML</td>
                                                                                                                <td class="table8">
                                                                                                                    EXPLANATION</td>
                                                                                                                <td class="table8">
                                                                                                                    EXAMPLE<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    select
                                                                                                                    <br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;size=<br />
                                                                                                                    &nbsp;&nbsp;multiple=</span><br />
                                                                                                                    &nbsp;<br />
                                                                                                                    option<br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;selected<br />
                                                                                                                    &nbsp;&nbsp;value=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Drop-down menu
                                                                                                                    <br />
                                                                                                                    <span class="style1">Name of the field.<br />
                                                                                                                    Visible items in list.<br />
                                                                                                                    Allows multiple choices if yes.</span><br />
                                                                                                                    &nbsp;<br />
                                                                                                                    Individual items in the menu.<br />
                                                                                                                    <span class="style1">Default select the item.<br />
                                                                                                                    Value to send if selected.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <select name="dropdownmenu" size="1">
                                                                                                                        <option selected="" value="Butter">Butter</option>
                                                                                                                        <option value="Cheese">Cheese</option>
                                                                                                                        <option value="Milk">Milk</option>
                                                                                                                    </select><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">D</span>rop-down menus combine <span class="style2">
                                                                                            &lt;select&gt;</span> and <span class="style2">&lt;option&gt;</span>.<br />
                                                                                            Both tags have an opening and a closing tag.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">A</span> typical example of the syntax would be:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;select&gt;<br />
                                                                                                                    &nbsp;&nbsp;&lt;option&gt;Milk&lt;/option&gt;<br />
                                                                                                                    &nbsp;&nbsp;&lt;option&gt;Coffee&lt;/option&gt;<br />
                                                                                                                    &nbsp;&nbsp;&lt;option&gt;Tea&lt;/option&gt;<br />
                                                                                                                    &lt;/select&gt;<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style2">&lt;select&gt;</span> tag 
                                                                                            defines the menu.
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">name</span> setting 
                                                                                            adds an internal name to the field so the program that handles the form can 
                                                                                            identify the fields.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">size</span> option 
                                                                                            defines how many items should be visible at a time. Default is one item.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">multiple</span> setting 
                                                                                            will allow for multiple selections if present.<br />
                                                                                            <br />
                                                                                            <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV><br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style2">&lt;option&gt;</span> tag 
                                                                                            defines the single items in the menu.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">value</span> setting 
                                                                                            defines what will be submitted if the item is selected. This is not always the 
                                                                                            same as what it says in the menu. If our field was defined this way:<br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host --><span class="style1">&lt;option value=&quot;ID&quot;&gt;</span>Idaho<span 
                                                                                                                        class="style1">&lt;/option&gt;</span><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            then, in the menu it would say &quot;Idaho&quot; but when the form was submitted the 
                                                                                            abbreviated &quot;ID&quot; would actually be sent.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">Y</span>ou can force an item to be default selected by 
                                                                                            adding the selected option: <span class="style2">&lt;option selected&gt;</span><br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">A</span>N EXAMPLE:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">L</span>ook at this HTML example:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1" style="background-color: #FFFFFF">
                                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                                    &lt;head&gt;<br />
                                                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                                                    &lt;/head&gt;<br />
                                                                                                                    &lt;body&gt;<br />
                                                                                                                    &lt;form name=&quot;myform&quot; action=&quot;http://www.mydomain.com/myformhandler.cgi&quot; 
                                                                                                                    method=&quot;POST&quot;&gt;<br />
                                                                                                                    &lt;div align=&quot;center&quot;&gt;<br />
                                                                                                                    <span class="style1">&lt;select name=&quot;mydropdown&quot;&gt;<br />
                                                                                                                    &lt;option value=&quot;Milk&quot;&gt;Fresh Milk&lt;/option&gt;<br />
                                                                                                                    &lt;option value=&quot;Cheese&quot;&gt;Old Cheese&lt;/option&gt;<br />
                                                                                                                    &lt;option value=&quot;Bread&quot;&gt;Hot Bread&lt;/option&gt;<br />
                                                                                                                    &lt;/select&gt;</span><br />
                                                                                                                    &lt;/div&gt;<br />
                                                                                                                    &lt;/form&gt;<br />
                                                                                                                    &lt;/body&gt;<br />
                                                                                                                    &lt;/html&gt;<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">A</span>nd the resulting output from it:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table6">
                                                                                                                    <!-- perl mysql php web host -->
                                                                                                                    <br />
                                                                                                                    <select name="mydropdown">
                                                                                                                        <option selected="" value="Milk">Fresh Milk</option>
                                                                                                                        <option value="Cheese">Old Cheese</option>
                                                                                                                        <option value="Bread">Hot Bread</option>
                                                                                                                    </select>
                                                                                                                    <div align="center">
                                                                                                                    </div>
                                                                                                                    <br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            </span>
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                SUBMIT BUTTON</div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="text"><span class="fancyfirst">W</span>hen a visitor clicks a 
                                                                                            submit button, the form is sent to the address specified in the
                                                                                            <span class="style2">action</span> setting of the <span class="style2">&lt;form&gt;</span> 
                                                                                            tag.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">S</span>ince visitors aren't always perfectionists you 
                                                                                            might consider adding a <a href="#">
                                                                                            <span class="link">javascript validation</span></a> of the content before it is 
                                                                                            actually sent.<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">S</span>ETTINGS:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">B</span>elow is a listing of valid settings for submit 
                                                                                            buttons:<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                                                            style="background-color: #FFFFFF">
                                                                                                            <tr>
                                                                                                                <td class="table8">
                                                                                                                    <!-- perl mysql php web host -->HTML</td>
                                                                                                                <td class="table8">
                                                                                                                    EXPLANATION</td>
                                                                                                                <td class="table8">
                                                                                                                    EXAMPLE<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    submit<br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=<br />
                                                                                                                    &nbsp;&nbsp;align=<br />
                                                                                                                    &nbsp;&nbsp;tabindex=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Submit button<br />
                                                                                                                    <span class="style1">Name of the button.<br />
                                                                                                                    Text written on the button.<br />
                                                                                                                    Alignment of the button.<br />
                                                                                                                    Tab order of the button.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input name="shorttext1" 
                                                                                                                        onclick="alert('If this was a real form -This would submit the form'); return false" 
                                                                                                                        type="button" value="Hit Me!" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">name</span> setting 
                                                                                            adds an internal name to the button so the program that handles the form doesn't 
                                                                                            confuse the button with the other fields.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">value</span> setting 
                                                                                            defines what is written on the button.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">align</span> setting 
                                                                                            defines how the button is aligned.<br />
                                                                                            Valid entries are: TOP, MIDDLE, BOTTOM, RIGHT, LEFT, TEXTTOP, BASELINE, 
                                                                                            ABSMIDDLE, ABSBOTTOM.
                                                                                            <br />
                                                                                            The alignments are explained in the image section.
                                                                                            <br />
                                                                                            You can learn about the different alignments
                                                                                            <a href="HTML_L4.aspx" style="background-color: #FFFFFF"><span class="link">here</span></a>.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">tabindex</span> setting 
                                                                                            defines in which order the different fields should be activated when the visitor 
                                                                                            clicks the tab key.<br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">A</span>N EXAMPLE:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">L</span>ook at this HTML example:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                                    &lt;head&gt;<br />
                                                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                                                    &lt;/head&gt;<br />
                                                                                                                    &lt;body&gt;<br />
                                                                                                                    &lt;form name=&quot;myform&quot; action=&quot;http://www.mydomain.com/myformhandler.cgi&quot; 
                                                                                                                    method=&quot;POST&quot;&gt;<br />
                                                                                                                    &lt;div align=&quot;center&quot;&gt;<br />
                                                                                                                    &lt;br&gt;&lt;br&gt;<br />
                                                                                                                    &lt;input type=&quot;text&quot; size=&quot;25&quot; value=&quot;Enter your name here!&quot;&gt;<br />
                                                                                                                    &lt;br&gt;<span class="style1">&lt;input type=&quot;submit&quot; value=&quot;Send me your name!&quot;&gt;</span>&lt;br&gt;<br />
                                                                                                                    &lt;/div&gt;<br />
                                                                                                                    &lt;/form&gt;<br />
                                                                                                                    &lt;/body&gt;<br />
                                                                                                                    &lt;/html&gt;<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">A</span>nd the resulting output from it:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table6">
                                                                                                                    <!-- perl mysql php web host -->
                                                                                                                    <br />
                                                                                                                    <input size="25" value="Enter your name here!" /><br />
                                                                                                                    <input onclick="alert('If this was a real form -This would submit the form'); return false" 
                                                                                                                        type="submit" value="Send me your name!" /><br />
                                                                                                                    <div align="center">
                                                                                                                    </div>
                                                                                                                    <br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            </span>
                                                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                RESET BUTTON</div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="text"><span class="fancyfirst">W</span>hen a visitor clicks a reset 
                                                                                            button, the entries are reset to the default values.<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">S</span>ETTINGS:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">B</span>elow is a listing of valid settings for reset 
                                                                                            buttons:<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                                                            style="background-color: #FFFFFF">
                                                                                                            <tr>
                                                                                                                <td class="table8">
                                                                                                                    <!-- perl mysql php web host -->HTML</td>
                                                                                                                <td class="table8">
                                                                                                                    EXPLANATION</td>
                                                                                                                <td class="table8">
                                                                                                                    EXAMPLE<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    reset<br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=<br />
                                                                                                                    &nbsp;&nbsp;align=<br />
                                                                                                                    &nbsp;&nbsp;tabindex=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Reset button<br />
                                                                                                                    <span class="style1">Name of the button.<br />
                                                                                                                    Text written on the button.<br />
                                                                                                                    Alignment of the button.<br />
                                                                                                                    Tab order of the button.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input name="shorttext2" 
                                                                                                                        onclick="alert('If this was a real form -This would reset the visitor\'s entries to the default values'); return false" 
                                                                                                                        type="button" value="Hit Me!" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">name</span> setting 
                                                                                            adds an internal name to the button so the program that handles the form doesn't 
                                                                                            confuse the button with the other fields.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">value</span> setting 
                                                                                            defines what is written on the button.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">align</span> setting 
                                                                                            defines how the button is aligned.<br />
                                                                                            Valid entries are: TOP, MIDDLE, BOTTOM, RIGHT, LEFT, TEXTTOP, BASELINE, 
                                                                                            ABSMIDDLE, ABSBOTTOM.
                                                                                            <br />
                                                                                            The alignments are explained in the image section.
                                                                                            <br />
                                                                                            You can learn about the different alignments
                                                                                            <a href="HTML_L4.aspx"><span class="link">here</span></a>.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">tabindex</span> setting 
                                                                                            defines in which order the different fields should be activated when the visitor 
                                                                                            clicks the tab key.<br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">A</span>N EXAMPLE:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">L</span>ook at this HTML example:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                                    &lt;head&gt;<br />
                                                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                                                    &lt;/head&gt;<br />
                                                                                                                    &lt;body&gt;<br />
                                                                                                                    &lt;form name=&quot;myform&quot; action=&quot;http://www.mydomain.com/myformhandler.cgi&quot; 
                                                                                                                    method=&quot;POST&quot;&gt;<br />
                                                                                                                    &lt;div align=&quot;center&quot;&gt;<br />
                                                                                                                    &lt;br&gt;&lt;br&gt;<br />
                                                                                                                    &lt;input type=&quot;text&quot; size=&quot;25&quot; value=&quot;Enter your name here!&quot;&gt;<br />
                                                                                                                    &lt;br&gt;&lt;input type=&quot;submit&quot; value=&quot;Send me your name!&quot;&gt; <span class="style1">&lt;input 
                                                                                                                    type=&quot;reset&quot; value=&quot;Reset!&quot;&gt;</span>&lt;br&gt;<br />
                                                                                                                    &lt;/div&gt;<br />
                                                                                                                    &lt;/form&gt;<br />
                                                                                                                    &lt;/body&gt;<br />
                                                                                                                    &lt;/html&gt;<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">A</span>nd the resulting output from it:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table6">
                                                                                                                    <!-- perl mysql php web host -->
                                                                                                                    <br />
                                                                                                                    <input size="25" value="Enter your name here!" /><br />
                                                                                                                    <input onclick="alert('If this was a real form -This would submit the form'); return false" 
                                                                                                                        type="submit" value="Send me your name!" />
                                                                                                                    <input type="reset" value="Reset!" /><br />
                                                                                                                    <div align="center">
                                                                                                                    </div>
                                                                                                                    <br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            </span>
                                                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                IMAGE BUTTON</div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="text"><span class="fancyfirst">I</span>mage buttons have the same 
                                                                                            effect as submit buttons. When a visitor clicks an image button the form is sent 
                                                                                            to the address specified in the <span class="style2">action</span> setting of 
                                                                                            the <span class="style2">&lt;form&gt;</span> tag.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">S</span>ince visitors aren't always perfectionists you 
                                                                                            might consider adding a <a href="#">
                                                                                            <span class="link">javascript validation</span></a> of the content before it is 
                                                                                            actually sent.<br />
                                                                                            <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                                                            <br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">S</span>ETTINGS:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">B</span>elow is a listing of valid settings for image 
                                                                                            buttons:<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                                                            style="background-color: #FFFFFF">
                                                                                                            <tr>
                                                                                                                <td class="table8">
                                                                                                                    <!-- perl mysql php web host -->HTML</td>
                                                                                                                <td class="table8">
                                                                                                                    EXPLANATION</td>
                                                                                                                <td class="table8">
                                                                                                                    EXAMPLE<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    image<br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;src=<br />
                                                                                                                    &nbsp;&nbsp;align=<br />
                                                                                                                    &nbsp;&nbsp;border=<br />
                                                                                                                    &nbsp;&nbsp;width=<br />
                                                                                                                    &nbsp;&nbsp;height=<br />
                                                                                                                    &nbsp;&nbsp;vspace=<br />
                                                                                                                    &nbsp;&nbsp;hspace=<br />
                                                                                                                    &nbsp;&nbsp;tabindex=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Submit button<br />
                                                                                                                    <span class="style1">Name of the image.<br />
                                                                                                                    Url of the image.<br />
                                                                                                                    Alignment of the image.<br />
                                                                                                                    Border width around the image.<br />
                                                                                                                    Width of the image.<br />
                                                                                                                    Height of the image.<br />
                                                                                                                    Spacing over and under image.<br />
                                                                                                                    Spacing left and right of image.<br />
                                                                                                                    Tab order of the image.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input alt="rainbow.gif (2273 bytes)" height="60" name="I1" 
                                                                                                                        onclick="alert('The button image is disabled on this page.'); return false" 
                                                                                                                        src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" type="image" width="60" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">name</span> setting 
                                                                                            adds an internal name to the image button so the program that handles the form 
                                                                                            doesn't confuse it with the other fields.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">src</span> setting 
                                                                                            defines the URL of the image.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">align</span> setting 
                                                                                            defines how the image is aligned.<br />
                                                                                            Valid entries are: TOP, MIDDLE, BOTTOM, RIGHT, LEFT, TEXTTOP, BASELINE, 
                                                                                            ABSMIDDLE, ABSBOTTOM.
                                                                                            <br />
                                                                                            The alignments are explained in the image section.
                                                                                            <br />
                                                                                            You can learn about the different alignments
                                                                                            <a href="HTML_L4.aspx" style="background-color: #FFFFFF"><span class="link">here</span></a>.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">border</span> setting 
                                                                                            defines the width (in pixels) of the border around the image.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">width</span> setting 
                                                                                            defines the width of the image.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">height</span> setting 
                                                                                            defines the height of the image.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">vspace</span> setting 
                                                                                            defines the spacing over and under the image (in pixels).<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">hspace</span> setting 
                                                                                            defines the spacing to the left and right of the image (in pixels).<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he <span class="style4">tabindex</span> setting 
                                                                                            defines in which order the different fields should be activated when the visitor 
                                                                                            clicks the tab key.<br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="style4"><span class="fancyfirst">A</span>N EXAMPLE:</span><br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">L</span>ook at this HTML example:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                                    &lt;head&gt;<br />
                                                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                                                    &lt;/head&gt;<br />
                                                                                                                    &lt;body&gt;<br />
                                                                                                                    &lt;form name=&quot;myform&quot; action=&quot;http://www.mydomain.com/myformhandler.cgi&quot; 
                                                                                                                    method=&quot;POST&quot;&gt;<br />
                                                                                                                    &lt;div align=&quot;center&quot;&gt;<br />
                                                                                                                    &lt;br&gt;&lt;br&gt;<br />
                                                                                                                    &lt;input type=&quot;text&quot; size=&quot;25&quot; value=&quot;Enter your name here!&quot;&gt;<br />
                                                                                                                    &lt;br&gt;<span class="style1">&lt;input type=&quot;image&quot; src=&quot;rainbow.gif&quot; name=&quot;image&quot; 
                                                                                                                    width=&quot;60&quot; height=&quot;60&quot;&gt;</span>&lt;br&gt;<br />
                                                                                                                    &lt;/div&gt;<br />
                                                                                                                    &lt;/form&gt;<br />
                                                                                                                    &lt;/body&gt;<br />
                                                                                                                    &lt;/html&gt;<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">A</span>nd the resulting output from it:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="height: 168px; width: 450px; background-color: #FFFFFF;">
                                                                                                            <tr>
                                                                                                                <td class="table6">
                                                                                                                    <!-- perl mysql php web host -->
                                                                                                                    <br />
                                                                                                                    <input size="25" value="Enter your name here!" /><br />
                                                                                                                    <input height="60" name="image" 
                                                                                                                        onclick="alert('The button image is disabled on this page.'); return false" 
                                                                                                                        src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" type="image" width="60" /><br />
                                                                                                                    <div align="center">
                                                                                                                    </div>
                                                                                                                    <br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            </span>
                                                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                QUICK REFERENCE</div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="text"><span class="fancyfirst">I</span>f you're not familiar with 
                                                                                            the form tags you can learn in detail about each tag listed in the left menu. 
                                                                                            Otherwise - use this quick reference for an easy overview of form tags and 
                                                                                            properties.<br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table8">
                                                                                                                    <!-- perl mysql php web host -->HTML</td>
                                                                                                                <td class="table8">
                                                                                                                    EXPLANATION</td>
                                                                                                                <td class="table8">
                                                                                                                    EXAMPLE<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    textarea<br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;rows=<br />
                                                                                                                    &nbsp;&nbsp;cols=<br />
                                                                                                                    &nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;<br />
                                                                                                                    &nbsp;&nbsp;wrap=<br />
                                                                                                                    &nbsp;&nbsp;&nbsp;&nbsp;off<br />
                                                                                                                    &nbsp;&nbsp;&nbsp;&nbsp;virtual<br />
                                                                                                                    &nbsp;<br />
                                                                                                                    &nbsp;&nbsp;&nbsp;&nbsp;physical<br />
                                                                                                                    &nbsp;</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Text area - several lines<br />
                                                                                                                    <span class="style1">Rows in the field.<br />
                                                                                                                    Columns in the field.<br />
                                                                                                                    Name of the field.<br />
                                                                                                                    &nbsp;<br />
                                                                                                                    Control linebreaks.<br />
                                                                                                                    &nbsp;&nbsp;&nbsp;&nbsp;Turns off linebreaks.<br />
                                                                                                                    &nbsp;&nbsp;&nbsp;&nbsp;Shows linebreaks, but<br />
                                                                                                                    &nbsp;&nbsp;&nbsp;&nbsp;sends text as entered.<br />
                                                                                                                    &nbsp;&nbsp;&nbsp;&nbsp;Inserts linebreaks when<br />
                                                                                                                    &nbsp;&nbsp;&nbsp;&nbsp;needed and even sends it.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <textarea cols="10" name="longtext0" rows="5"></textarea><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    text
                                                                                                                    <br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;size=<br />
                                                                                                                    &nbsp;&nbsp;maxlength=<br />
                                                                                                                    &nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    One line text field<br />
                                                                                                                    <span class="style1">Characters shown.<br />
                                                                                                                    Max characters allowed.<br />
                                                                                                                    Name of the field.<br />
                                                                                                                    Initial value in the field.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input name="shorttext3" size="10" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    password<br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;size=<br />
                                                                                                                    &nbsp;&nbsp;maxlength=<br />
                                                                                                                    &nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Password field.<br />
                                                                                                                    <span class="style1">Characters shown.<br />
                                                                                                                    Characters allowed to enter.<br />
                                                                                                                    Name of the field.<br />
                                                                                                                    Initial value in the field.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input name="password" size="10" type="password" value="" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    checkbox<br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Choose one or more options<br />
                                                                                                                    <span class="style1">Name of the field.<br />
                                                                                                                    Initial value in the field.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input name="Checkbox4" type="checkbox" value="ON" /><input name="Checkbox5" 
                                                                                                                        type="checkbox" value="ON" /><input name="Checkbox3" type="checkbox" 
                                                                                                                        value="ON" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    radio<br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Choose only one option<br />
                                                                                                                    <span class="style1">Name of the field.<br />
                                                                                                                    Initial value in the field.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input checked="checked" name="radiobutton" type="radio" value="radiobutton4" /><input 
                                                                                                                        name="radiobutton" type="radio" value="radiobutton5" /><input 
                                                                                                                        name="radiobutton" type="radio" value="radiobutton6" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    select
                                                                                                                    <br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;size=<br />
                                                                                                                    &nbsp;&nbsp;multiple=</span><br />
                                                                                                                    &nbsp;<br />
                                                                                                                    option<br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;selected<br />
                                                                                                                    &nbsp;&nbsp;value=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Drop-down menu
                                                                                                                    <br />
                                                                                                                    <span class="style1">Name of the field.<br />
                                                                                                                    Number of items in list.<br />
                                                                                                                    Allow multiple choice if yes.</span><br />
                                                                                                                    &nbsp;<br />
                                                                                                                    Individual items in the menu.<br />
                                                                                                                    <span class="style1">Make an item default.<br />
                                                                                                                    Value to send if selected.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <select name="dropdownmenu0" size="1">
                                                                                                                        <option selected="" value="Butter">Butter</option>
                                                                                                                        <option value="Cheese">Cheese</option>
                                                                                                                        <option value="Milk">Milk</option>
                                                                                                                    </select><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    hidden<br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Does not show on the form.<br />
                                                                                                                    <span class="style1">Name of the field.<br />
                                                                                                                    Value to send.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    &nbsp;<br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    reset
                                                                                                                    <br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Button to reset all fields
                                                                                                                    <br />
                                                                                                                    <span class="style1">Name of the button.<br />
                                                                                                                    Text shown on the button.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input name="resetbutton" type="reset" value="Reset" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    submit
                                                                                                                    <br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=<br />
                                                                                                                    &nbsp;&nbsp;value=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Button to submit the form<br />
                                                                                                                    <span class="style1">Name of the button.<br />
                                                                                                                    Text shown on the button.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input name="submitbutton" 
                                                                                                                        onclick="alert('The submit button is disabled on this page.'); return false" 
                                                                                                                        type="submit" value="Submit" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    image<br />
                                                                                                                    <span class="style1">&nbsp;&nbsp;name=</span><br />
                                                                                                                </td>
                                                                                                                <td class="table5">
                                                                                                                    Image behaving as button<br />
                                                                                                                    <span class="style1">Name of the image.</span><br />
                                                                                                                </td>
                                                                                                                <td class="table8">
                                                                                                                    <input alt="rainbow.gif (2273 bytes)" height="60" name="image0" 
                                                                                                                        onclick="alert('The button image is disabled on this page.'); return false" 
                                                                                                                        src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" type="image" width="60" /><br />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <!-- perl mysql php web host-->
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="note">Note: This is a quick reference showing the most common 
                                                                                            settings for each field. For a complete listing and explanation you should 
                                                                                            follow the link to the relevant field in the menu.<br />
                                                                                            </span>
                                                                                            </span>
                                                                                            <br />
                                                                                            <br />
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            </span>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <BR>
                                                        </p>
                                                        <BLOCKQUOTE>
                                                        </BLOCKQUOTE>
                                                    </DIV>
                                                    <BR>
                                                    <br />
          <p align="right">
            <a href="javascript:window.external.AddFavorite(location.href, document.title);">
Add this Page to your Favorites</a>&nbsp; |
             
&nbsp;<a href="javascript:window.print();">Print This Page</a></p>
          <br />
          <br />
            <DIV align=right style="color: #00FF00"><A 
            href="#top">Top    <br />
          <BR>
                                                    <BR>
      </DIV>
                                                <BR>
                                         
                                         <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
              <br />
              <br />
                                                    <br />
                                                    <br />
                                                        <span class="text">
                                                        <hr align="center" width="300" />
                                                        </span>
          <br />
          
          <p> <asp:ScriptManager ID="ScriptManager1" runat="server" />

<strong>Post Comment</strong><p> 
                  &nbsp;<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                      <ContentTemplate>
                          <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                              DefaultMode="Insert" Font-Names="Vrinda" Font-Size="Large">
                              <InsertItemTemplate>
                                  Name:
                                  <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                  Rating:
                                  <asp:TextBox ID="txtRating" runat="server" Text='<%# Bind("Rating") %>' 
                                      Width="25px"></asp:TextBox>
                                  out of 5 Stars!
                                  <asp:Image ID="Image1" runat="server" ImageUrl="~/images/starover.jpg" />
                                  <br />
                                  <br />
                                  Comments:<br />
                                  <asp:TextBox ID="txtComments" runat="server" Columns="50" Rows="4" 
                                      Text='<%# Bind("Comments") %>' TextMode="MultiLine"></asp:TextBox>
                                  <br />
                                  <asp:HiddenField ID="hidTimeDate" runat="server" Value='<%# Bind("Date") %>' />
                                  <asp:Button ID="butSubmit" runat="server" CommandName="Insert" Text="Submit" />
                              </InsertItemTemplate>
                          </asp:FormView>
                          <br />
                          <br />
                          <asp:DataGrid ID="DataGrid1" runat="server" BackColor="White" 
                              BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                              DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
                              Width="593px">
                              <FooterStyle BackColor="#CCCCCC" />
                              <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                              <AlternatingItemStyle BackColor="#CCCCCC" />
                              <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                          </asp:DataGrid>
                      </ContentTemplate>
                  </asp:UpdatePanel>

                    
                                                    <br />


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    InsertCommand="INSERT HTML_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    
                      
                      
                      
                      SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [HTML_tblComments]">
                    <InsertParameters>
                        <asp:Parameter Name="Name" />
                        <asp:Parameter Name="Comments" />
                        <asp:Parameter Name="Rating" />
                        <asp:Parameter Name="Date" />
                    </InsertParameters>
                </asp:SqlDataSource>
                  <p>
</p>
                                                </asp:Panel>

                                            <BR>
            <DIV align=right style="color: #00FF00">
                <asp:LinkButton ID="LinkButton8" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/HTML_Contents.aspx">Back to HTML Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L8.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L10.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
                                            <br />
                                            <br />
                                            <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </TD></TR></TBODY></TABLE>
      <SCRIPT type=text/javascript>
var dc_UnitID = 14;
var dc_PublisherID = 9313;
var dc_AdLinkColor = '#009600';
var dc_adprod='ADL';
</SCRIPT>

     </DIV></TR></TBODY></TABLE>
    </form>
</BODY></HTML>
