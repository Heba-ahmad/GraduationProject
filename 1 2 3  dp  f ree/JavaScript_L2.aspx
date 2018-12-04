<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="JavaScript_L2.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>JavaScript Tutorials</TITLE>
<META content="text/html; charset=windows-1256" http-equiv=Content-Type>
<META name=Description 
content="Lesson 1 on the VB IDE, the environment, creating a Project, creating a form">
<META name=Keywords 
content="VB 6, IT training, course, application, computer programming, file processing, database">
<META name=Distribution content=Global>
<META name=Rating content=General><LINK rel=StyleSheet type=text/css 
href="images\LessonsImages\JAVASCRIPTLessons\newstyles2.css">
<META name=GENERATOR content="MSHTML 8.00.6001.18904">
        <style type="text/css">
            .headline
            {
                margin-top: 0px;
            }
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
  href="Signup.aspx">Signup</A>                                
                                                    <SPAN class=author>to add comment, &amp; 
          to Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/JavaScript_L2.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
            <DIV align=center 
                style="background-image: url('images/tabletop_gradient.gif'); height: 109px;">
                &nbsp;<img alt="" src="images/JAVASCRIPT.PNG" 
                    style="width: 204px; height: 87px" /><br />
                &nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/JavaScript_L1.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/JavaScript_Contents.aspx">Back to JavaScript Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="JavaScript_L3.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 2 - BROWSER DETECTION & ANIMATED BUTTONS </H2>
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
                                                        <span class="text"><span class="fancyfirst">F</span>or various reasons, it may 
                                                        be useful to detect the visitor's browser type and version.<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>or instance, you may want to have an advanced 
                                                        page for users arriving with version 4 browsers, and a simple page for users 
                                                        arriving with older browsers.<br />
                                                        <br />
                                                        <span class="fancyfirst">M</span>aybe you want to make a page that sends 
                                                        Netscape to one page and MSIE to another page.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n any case, you will need to have visitors 
                                                        arrive at one page, on which the browser detection takes place.<br />
                                                        The page will then automatically load the page the user should be presented 
                                                        with.<br />
                                                        <br />
                                                        <span class="fancyfirst">J</span>avascript is an ideal tool for this purpose.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            THE TECHNIQUE</div>
                                                        </span>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">B</span>rowser detection is based on 
                                                            the <span class="note"><span class="style4">navigator</span> object</span>.
                                                            <br />
                                                            This object holds name, version, etc. of the browser.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>herefore it is pretty simple to write a script 
                                                            that will read these variables and return the name and version of the current 
                                                            browser.<br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>ll you really need to do is use the
                                                            <span class="note"><span class="style4">indexOf</span> function</span> to find 
                                                            the version number. This tutorial will teach you how.</span></p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <span class="text">
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            THE CODE</div>
                                                        </span>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">F</span>irst create a page with the 
                                                            standard skeleton code for all webpages:<br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">B</span>ROWSER DETECTION SCRIPT</span> 
                                                            - <span class="style2">Step 1/3</span><br />
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
                                                                                    &lt;title&gt;Browserdetection&lt;/Title&gt;<br />
                                                                                    &lt;/head&gt;<br />
                                                                                    <br />
                                                                                    &lt;body&gt;<br />
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
                                                            <span class="fancyfirst">T</span>he javascript that will detect the browser 
                                                            makes use of the <span class="note"><span class="style4">navigator</span></span> 
                                                            object.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>his object holds these interesting variables:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>VARIABLES</td>
                                                                                <td class="table8">
                                                                                    DESCRIPTION<br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    navigator.appCodeName
                                                                                    <br />
                                                                                </td>
                                                                                <td class="table5">
                                                                                    The code name of the browser
                                                                                    <br />
                                                                                    (e.g. Mozilla)
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    navigator.appName
                                                                                </td>
                                                                                <td class="table5">
                                                                                    The name of the browser
                                                                                    <br />
                                                                                    (e.g. Netscape or Microsoft Internet Explorer)
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    navigator.appVersion
                                                                                </td>
                                                                                <td class="table5">
                                                                                    The browser version (e.g. 3.0 or 4.0)
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    navigator.userAgent
                                                                                </td>
                                                                                <td class="table5">
                                                                                    The header information for the browser.
                                                                                    <br />
                                                                                    (e.g. Mozilla/4.0)
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    navigator.platform
                                                                                </td>
                                                                                <td class="table5">
                                                                                    The users operating system<br />
                                                                                    (e.g. WIN32)
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he following information was derived from your 
                                                            browser when you arrived on this page:<br />
                                                            <br />
                                                            <center>
                                                                <table border="1">
                                                                    <tr>
                                                                        <td bgcolor="#000000">
                                                                            <small><font color="#ff8080"><b>navigator.appCodeName</b></font></small></td>
                                                                        <td>
                                                                            <input maxsize="0" name="T1" size="35" value="Mozilla" /></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td bgcolor="#000000">
                                                                            <small><font color="#ff8080"><b>navigator.appName</b></font></small></td>
                                                                        <td>
                                                                            <input maxsize="0" name="T2" size="35" value="Microsoft Internet Explorer" /></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td bgcolor="#000000">
                                                                            <small><font color="#ff8080"><b>navigator.appVersion</b></font></small></td>
                                                                        <td>
                                                                            <input maxsize="0" name="T3" size="35" 
                                                                                value="4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727; InfoPath.1; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)" /></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td bgcolor="#000000">
                                                                            <small><font color="#ff8080"><b>navigator.userAgent</b></font></small></td>
                                                                        <td>
                                                                            <input maxsize="0" name="T4" size="35" 
                                                                                value="Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727; InfoPath.1; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)" /></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td bgcolor="#000000">
                                                                            <small><font color="#ff8080"><b>navigator.platform</b></font></small></td>
                                                                        <td>
                                                                            <input maxsize="0" name="T5" size="35" value="Win32" /></td>
                                                                    </tr>
                                                                </table>
                                                            </center>
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>n short, all we need to do is have the webpage 
                                                            run our script once it's loaded.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>his is done by simply writing the javascript 
                                                            code without function declarations.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he following lines should be added to the
                                                            <span class="style2">&lt;head&gt;</span> section of the document:<br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">B</span>ROWSER DETECTION SCRIPT</span> 
                                                            - <span class="style2">Step 2/3</span><br />
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
                                                                                    &lt;title&gt;Browser detection&lt;/Title&gt;<br />
                                                                                    <span class="style1">&lt;Script Language=&quot;JavaScript&quot;&gt;<br />
                                                                                    browsername=navigator.appName;<br />
                                                                                    if (browsername.indexOf(&quot;Netscape&quot;)!=-1) {browsername=&quot;NS&quot;}<br />
                                                                                    else<br />
                                                                                    {if (browsername.indexOf(&quot;Microsoft&quot;)!=-1) {browsername=&quot;MSIE&quot;}<br />
                                                                                    else {browsername=&quot;N/A&quot;}};<br />
                                                                                    &lt;/script&gt;</span><br />
                                                                                    &lt;/head&gt;<br />
                                                                                    <br />
                                                                                    &lt;body&gt;<br />
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
                                                            <span class="fancyfirst">T</span>he above lines store the name of the browser in 
                                                            the variable called browsername.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>f the browser is Microsoft Internet Explorer, 
                                                            &quot;MSIE&quot; is stored in the variable.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>f it is a Netscape browser, &quot;NS&quot; is stored in 
                                                            the variable.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>f it's none of the above, &quot;N/A&quot; is stored in 
                                                            the variable.<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table5">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <span class="note">Note - The use of <span class="style3">indexOf()</span> in 
                                                                                    the above script:<br />
                                                                                    <br />
                                                                                    <span class="fancyfirst">I</span>n the above script you can see this line:<br />
                                                                                    <br />
                                                                                    <span class="style3">if (browsername.indexOf(&quot;Microsoft&quot;)!=-1) 
                                                                                    {browsername=&quot;MSIE&quot;}</span><br />
                                                                                    <br />
                                                                                    <span class="fancyfirst">T</span>he function <span class="style3">
                                                                                    browsername.indexOf(&quot;Microsoft&quot;)</span> checks the variable <span class="style3">
                                                                                    browsername</span> for the first appearance of the word <span class="style3">
                                                                                    Microsoft</span>.<br />
                                                                                    <br />
                                                                                    <span class="fancyfirst">I</span>f <span class="style3">Microsoft</span> is not 
                                                                                    present, the result will be -1.<br />
                                                                                    <br />
                                                                                    So if <span class="style3">browsername.indexOf(&quot;Microsoft&quot;)</span> does not 
                                                                                    equal -1 ( <span class="style3">!= -1</span> ) it means that the word
                                                                                    <span class="style3">Microsoft</span> is present somewhere in the
                                                                                    <span class="style3">browsername</span> variable - and thus, the current browser 
                                                                                    is Microsoft Internet Explorer.</span><br />
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
                                                            <span class="fancyfirst">N</span>ow we need to find the version of the relevant 
                                                            browser.<br />
                                                            <br />
                                                            <span class="fancyfirst">S</span>ince navigator.appVersion does not simply hold 
                                                            a value, like 2, 3 or 4, but rather would hold a text, like &quot;3.0b4Gold (Win95; 
                                                            I)&quot;, we need to make a little check of the text before we can save a more 
                                                            convenient value in the variable called browserversion.
                                                            <br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host --><span class="style1">browserversion=&quot;0&quot;;<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;2.&quot;)!=-1) {browserversion=&quot;2&quot;};<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;3.&quot;)!=-1) {browserversion=&quot;3&quot;};<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;4.&quot;)!=-1) {browserversion=&quot;4&quot;};<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;5.&quot;)!=-1) {browserversion=&quot;5&quot;};<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;6.&quot;)!=-1) {browserversion=&quot;6&quot;};</span></td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">F</span>irst we assign the value zero to the variable.<br />
                                                            If none of the checks results in assigning a value to the variable, it will 
                                                            still hold the zero value after the checks.
                                                            <br />
                                                            A value of zero thus means that the browserversion<br />
                                                            was not available.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he next 3 lines look for version numbers 2., 
                                                            3., 4. and 5.<br />
                                                            If navigator.appVersion contains any of the numbers, the value is stored in the 
                                                            variable called &quot;browserversion&quot;.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he complete script now looks like this:<br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">B</span>ROWSER DETECTION SCRIPT</span> 
                                                            - <span class="style2">Step 3/3</span><br />
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
                                                                                    &lt;title&gt;Browser detection&lt;/Title&gt;<br />
                                                                                    &lt;Script Language=&quot;JavaScript&quot;&gt;<br />
                                                                                    browsername=navigator.appName;<br />
                                                                                    if (browsername.indexOf(&quot;Netscape&quot;)!=-1) {browsername=&quot;NS&quot;}<br />
                                                                                    else<br />
                                                                                    {if (browsername.indexOf(&quot;Microsoft&quot;)!=-1) {browsername=&quot;MSIE&quot;}<br />
                                                                                    else {browsername=&quot;N/A&quot;}};<br />
                                                                                    <span class="style1">browserversion=&quot;0&quot;;<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;2.&quot;)!=-1) {browserversion=&quot;2&quot;};<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;3.&quot;)!=-1) {browserversion=&quot;3&quot;};<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;4.&quot;)!=-1) {browserversion=&quot;4&quot;};<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;5.&quot;)!=-1) {browserversion=&quot;5&quot;};<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;6.&quot;)!=-1) {browserversion=&quot;6&quot;}; </span>
                                                                                    <br />
                                                                                    &lt;/script&gt;<br />
                                                                                    &lt;/head&gt;<br />
                                                                                    <br />
                                                                                    &lt;body&gt;<br />
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
                                                            <span class="fancyfirst">N</span>ow the script holds two variables: browsername 
                                                            and browserversion. This information can be used for whatever purpose we choose.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he browser detection itself does nothing. All 
                                                            it does is - detect the visitors browser. We still haven't added
                                                            <span class="note"><span class="style4">if</span>-statements</span> that tells 
                                                            the browser what it should do in the different cases.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>n the example on the next page you will see how 
                                                            you can add <span class="note"><span class="style4">if</span>-statements</span> 
                                                            to the browser detection script - in order to send visitors to relevant pages.<br />
                                                            </span>
<SCRIPT language=Javascript>
<!--
detectbrowser();
//-->
</SCRIPT>
                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                        </p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <span class="text">
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            EXAMPLE</div>
                                                        </span>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">I</span>n this example we send 
                                                            Netscape visitors to Yahoo, while we send MSIE visitors to either Hotbot or MSN 
                                                            depending on the browser version.<br />
                                                            If it's none of the above the visitor is sent to Webcrawler.<br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">B</span>ROWSER DETECTION SCRIPT</span>
                                                            <br />
                                                            - <span class="style2">with if statements</span><br />
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
                                                                                    &lt;title&gt;Browser detection&lt;/Title&gt;<br />
                                                                                    &lt;Script Language=&quot;JavaScript&quot;&gt;<br />
                                                                                    // Browserdetectionscript made by Henrik Petersen / NetKontoret<br />
                                                                                    // Script explained at www.echoecho.com/javascript.htm<br />
                                                                                    // Please do not remove this and the two lines above.<br />
                                                                                    // Detect the browsername<br />
                                                                                    browsername=navigator.appName;<br />
                                                                                    if (browsername.indexOf(&quot;Netscape&quot;)!=-1) {browsername=&quot;NS&quot;}<br />
                                                                                    else<br />
                                                                                    {if (browsername.indexOf(&quot;Microsoft&quot;)!=-1) {browsername=&quot;MSIE&quot;}<br />
                                                                                    else {browsername=&quot;N/A&quot;}};<br />
                                                                                    <br />
                                                                                    //detect the browserversion<br />
                                                                                    browserversion=&quot;0&quot;;<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;2.&quot;)!=-1) {browserversion=&quot;2&quot;};<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;3.&quot;)!=-1) {browserversion=&quot;3&quot;};<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;4.&quot;)!=-1) {browserversion=&quot;4&quot;};<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;5.&quot;)!=-1) {browserversion=&quot;5&quot;};<br />
                                                                                    if (navigator.appVersion.indexOf(&quot;6.&quot;)!=-1) {browserversion=&quot;6&quot;};<br />
                                                                                    <br />
                                                                                    // Send visitor to relevant pages<br />
                                                                                    <span class="style1">if (browsername==&quot;NS&quot;) 
                                                                                    {window.location=&quot;http://www.yahoo.com&quot;};<br />
                                                                                    if (browsername==&quot;MSIE&quot;){<br />
                                                                                    &nbsp;&nbsp;if (browserversion&lt;4){window.location=&quot;http://www.hotbot.com&quot;}<br />
                                                                                    &nbsp;&nbsp;else {window.location=&quot;http://www.msn.com&quot;}<br />
                                                                                    }<br />
                                                                                    if (browsername==&quot;N/A&quot;) {window.location=&quot;http://www.webcrawler.com&quot;};</span><br />
                                                                                    &lt;/script&gt;<br />
                                                                                    &lt;/head&gt;<br />
                                                                                    <br />
                                                                                    &lt;body&gt;<br />
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
                                                            <span class="fancyfirst">C</span>opy the code from this example to create your 
                                                            own browser detection page.<br />
                                                            <br />
                                                            <span class="fancyfirst">C</span>ustomize it by adding your own
                                                            <span class="note"><span class="style4">if statements</span></span> and URLs at 
                                                            the bottom of the script.<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">S</span>AMPLE PAGE</span><br />
                                                            Click <a href="http://www.echoecho.com/samplebrowserdetection.htm">
                                                            <span class="link">here</span></a> to see a sample page based on the code 
                                                            described above.</span></p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <p>
                                                            <span class="text">
                                                            <br />
                                                            </span></p>
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            ANIMATED BUTTONS</div>
                                                        <span class="text">
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>elow is an example of a button that is animated 
                                                        using javascript technique.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>ry moving the mouse over the button.
                                                        <br />
                                                        <div align="center">
                                                            <br />
                                                            <a href="#" onmouseout="MyMouseOutRoutine('button1')" 
                                                                onmouseover="MyMouseOverRoutine('button1')">
                                                            <img alt="button" border="0" height="40" name="button1" 
                                                                src="images/LessonsImages/JAVASCRIPTLessons/button1b.gif" width="40" /></a><br />
                                                        </div>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he same effect could be achieved with Java 
                                                        Applets.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he rest of this article will teach you how to 
                                                        create the effect with javascript.
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            THE TECHNIQUE</div>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">W</span>e place the button on the page as we would have 
                                                        placed any other image on a webpage.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>hen we add an <span class="note">
                                                        <span class="style4">onMouseOver</span> event</span> to the image.
                                                        <br />
                                                        The event causes the browser to run a javascript function that will replace the 
                                                        initial image with another image.<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>inally we add an <span class="note">
                                                        <span class="style4">onMouseOut</span> event</span> to the image as well.<br />
                                                        This event causes the browser to run a javascript function that inserts the 
                                                        initial image again when the user moves the mouse away from the image.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he technique is thus a two step process:<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>irst, you need to add mouse event settings to 
                                                        the HTML tags of the images.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>econd, you need to add a script that will be 
                                                        performed when the browser detects the mouse events.
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            THE CODE</div>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>efore you can add an animated button to your 
                                                        page you need to add the button image itself.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>fter adding the button image to the webpage you 
                                                        need to add a few comments to the image tag.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>fter that you can add the javascript that 
                                                        changes the image when the mouse moves over it.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he first half of this page covers the plain 
                                                        HTML code for inserting an image so that javascript can refer to it.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he second half covers the javascript that 
                                                        changes the image when a mouseover occurs.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">T</span>HE HTML CODE</span><br />
                                                        <br />
                                                        <span class="fancyfirst">A</span> regular image that works as a link button 
                                                        looks somewhat like this in HTML code:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;mypage.htm&quot;&gt;<br />
                                                                                &lt;Img Src=&quot;button1a.gif&quot;&gt;<br />
                                                                                &lt;/a&gt;
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
                                                        <span class="fancyfirst">T</span>o make it possible for javascript to change the 
                                                        image we need to give it a name that can be used by javascript to address it.<br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>o in our case the HTML would look like this:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;mypage.htm&quot;&gt;<br />
                                                                                &lt;Img Src=&quot;button1a.gif&quot; <span class="style1">name=&quot;button1&quot;</span>&gt;<br />
                                                                                &lt;/a&gt;<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">N</span>ow the button has a name that can be used as a 
                                                        reference when we want javascript to replace it with another image.<br />
                                                        <br />
                                                        <span class="fancyfirst">W</span>e need to tell the browser that once a mouse is 
                                                        rolled over the image, the browser should execute a function that replaces the 
                                                        image.<br />
                                                        This is done with the <span class="note"><span class="style4">onMouseOver</span> 
                                                        event</span>.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n addition we also need to tell the browser 
                                                        that once the user rolls the mouse away from the image, another javascript 
                                                        should be solved in order to let the initial image of the button return.<br />
                                                        This is done with the <span class="note"><span class="style4">onMouseOut</span> 
                                                        event</span>.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he final HTML code looks like this:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;mypage.htm&quot; <span class="style1">
                                                                                onmouseOver=&quot;MouseOverRoutine('button1')&quot; 
                                                                                onmouseOut=&quot;MouseOutRoutine('button1')&quot;</span>&gt;<br />
                                                                                &lt;Img Src=&quot;button1a.gif&quot; name=&quot;button1&quot; &gt;&lt;/a&gt;<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his is all you need to do in the HTML part of 
                                                        the page. The rest is done in javascript.<br />
                                                        <br />
                                                        <span class="note"><span class="fancyfirst">N</span>ote:
                                                        <br />
                                                        The mouse events are added to the <span class="style2">&lt;a href&gt;</span> tag - NOT 
                                                        the image tag. This is because browsers do not look for mouseover events on 
                                                        images. As stupid as it may sound it is nevertheless true. Therefore we can only 
                                                        make images animated by turning them into links. Since browsers understand 
                                                        mouseover events on links, they will register a mouse event on an image, if that 
                                                        image is a link. </span>
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">T</span>HE JAVASCRIPT CODE</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he following javascript should be added to the 
                                                        head part of your webpage.
                                                        <br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;Script&gt;<br />
                                                                                <br />
                                                                                <span class="style1">
                                                                                <br />
                                                                                &lt;!--
                                                                                <br />
                                                                                // The previous line hides the script from
                                                                                <br />
                                                                                // old browsers that can't interpret it</span><br />
                                                                                <br />
                                                                                <span class="style1">// Assuming the image of the up button is called 
                                                                                &quot;button1a.gif&quot;<br />
                                                                                // And that the image of the down button is called &quot;button1b.gif&quot;<br />
                                                                                // We can now read these two images into variables
                                                                                <br />
                                                                                // called button1up and button1down.</span><br />
                                                                                <br />
                                                                                button1up = new Image; button1up.src = &quot;button1a.gif&quot;;<br />
                                                                                button1down = new Image; button1down.src = &quot;button1b.gif&quot;;<br />
                                                                                <br />
                                                                                <span class="style1">// Now the two images are defined.<br />
                                                                                <br />
                                                                                // Next step is the two functions needed.<br />
                                                                                // The first function is called MouseOverRoutine,<br />
                                                                                // and causes button1up to shift to button1down.</span><br />
                                                                                <br />
                                                                                function MouseOverRoutine(ButtonName)<br />
                                                                                {<br />
                                                                                if (ButtonName==&quot;button1&quot;)
                                                                                <br />
                                                                                {document.button1.src = button1down.src;}<br />
                                                                                }<br />
                                                                                <br />
                                                                                <span class="style1">// Now our button will shift from button1up to button1down<br />
                                                                                // when a mouseover event occurs.<br />
                                                                                // To complete the script all we need to do<br />
                                                                                // is make the inverse function, that will do exactly the opposite<br />
                                                                                // when a mouseout event occurs.</span><br />
                                                                                <br />
                                                                                function MouseOutRoutine(ButtonName)<br />
                                                                                {<br />
                                                                                if (ButtonName==&quot;button1&quot;)
                                                                                <br />
                                                                                {document.button1.src = button1up.src;}<br />
                                                                                }<br />
                                                                                <br />
                                                                                <span class="style1">// Thats all there is.
                                                                                <br />
                                                                                // The final step is ending the script section which is done by two lines:</span><br />
                                                                                <br />
                                                                                <span class="style1">// The next line causes oldfashion browsers to<br />
                                                                                // start interpreting the code again.</span><br />
                                                                                //--&gt;<br />
                                                                                <br />
                                                                                &lt;/script&gt;<br />
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
                                                        <span class="fancyfirst">I</span>f you want more than one button on your page, 
                                                        all you need to do is double each line referring to button1 and change it to 
                                                        button2, button3 or whatever number of buttons you might have.<br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            EXAMPLE</div>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>y clicking the link below you will be taken to 
                                                        a page that<br />
                                                        shows the entire code for a four button menu based on the described technique.<br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>lick
                                                        <a href="http://www.echoecho.com/samplejavabuttons.htm"><span class="link">here</span></a> 
                                                        to see the sample page.<br />
                                                        <BLOCKQUOTE>
                                                        </BLOCKQUOTE>
                                                    </DIV>
                                                    <BR>
                                                    <br />
                                                    <p align="right">
                                                        <a href="javascript:window.external.AddFavorite(location.href, document.title);">
                                                        Add this Page to your Favorites</a>&nbsp; | &nbsp;<a 
                                                            href="javascript:window.print();">Print This Page</a></p>
                                                    <br />
                                                    <br />
                                                    <div align="right" style="color: #00FF00">
                                                        <a href="#top">Top
                                                        <br />
                                                        <br />
                                                        </a>
                                                    </div>
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
                    InsertCommand="INSERT JavaScript_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    
                      
                      
                      SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [JavaScript_tblComments]">
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
                    PostBackUrl="~/JavaScript_Contents.aspx">Back to JavaScript Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/JavaScript_L1.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/JavaScript_L3.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
                                            <br />
                                            <br />
                                            <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </TD></TR></TBODY></TABLE>
      <SCRIPT type=text/javascript>
var dc_UnitID = 14;
var dc_PublisherID = 9313;
var dc_AdLinkColor = '#009600';
var dc_adprod='ADL';
</SCRIPT>

     </DIV></TR></TBODY></TABLE>
    </form>
</BODY></HTML>
