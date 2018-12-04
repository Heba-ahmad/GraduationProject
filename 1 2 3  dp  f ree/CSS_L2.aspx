<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="CSS_L2.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>CSS Tutorials</TITLE>
<META content="text/html; charset=windows-1256" http-equiv=Content-Type>
<META name=Description 
content="Lesson 1 on the VB IDE, the environment, creating a Project, creating a form">
<META name=Keywords 
content="VB 6, IT training, course, application, computer programming, file processing, database">
<META name=Distribution content=Global>
<META name=Rating content=General><LINK rel=StyleSheet type=text/css 
href="images\LessonsImages\CSSLessons\newstyles2.css">
<META name=GENERATOR content="MSHTML 8.00.6001.18904">
        <style type="text/css">
            .style1
            {
                width: 457px;
            }
B.headline {color:red; font-size:22px; font-family:arial; text-decoration:underline}
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
        DestinationPageUrl="~/CSS_L2.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;<img alt="" src="images/CSS.JPG" 
                    style="width: 204px; height: 86px" />&nbsp;<br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/CSS_L1.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/CSS_Contents.aspx">Back to CSS Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="CSS_L3.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 2 - CSS SELECTORS</H2>
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
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            <div align="center" class="headline" style="font-size: 22px; color: #800000">
                                                                SELECTORS</div>
                                                        </div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">S</span>electors are the names that 
                                                            you give to your different styles.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>n the style definition you define how each 
                                                            selector should work (font, color etc.).<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>hen, in the body of your pages, you refer to 
                                                            these selectors to activate the styles.<br />
                                                            <br />
                                                            <span class="fancyfirst">F</span>or example:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host -->&lt;HTML&gt;<br />
                                                                                    &lt;HEAD&gt;<br />
                                                                                    &lt;style type=&quot;text/css&quot;&gt;<br />
                                                                                    B.headline {color:red; font-size:22px; font-family:arial; 
                                                                                    text-decoration:underline}<br />
                                                                                    &lt;/style&gt;<br />
                                                                                    <br />
                                                                                    &lt;/HEAD&gt;<br />
                                                                                    <br />
                                                                                    &lt;BODY&gt;<br />
                                                                                    &lt;b&gt;This is normal bold&lt;/b&gt;&lt;br&gt;<br />
                                                                                    &lt;b class=&quot;headline&quot;&gt;This is headline style bold&lt;/b&gt;<br />
                                                                                    &lt;/BODY&gt;<br />
                                                                                    <br />
                                                                                    &lt;/HTML&gt;<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>n this case <span class="style4">B.headline</span> 
                                                            is the selector.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he above example would result in this output:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table5">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span><b>This is 
                                                                                    normal bold</b><br />
                                                                                    <b class="headline">This is headline style bold</b><br />
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
                                                            <span class="fancyfirst">T</span>here are three types of selectors:<br />
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
                                                                                    <span class="style4">HTML selectors</span><br />
                                                                                    Used to define styles associated to HTML tags. (A way to redefine the look of 
                                                                                    tags)<br />
                                                                                    <br />
                                                                                    <span class="style4">Class selectors</span><br />
                                                                                    Used to define styles that can be used without redefining plain HTML tags.<br />
                                                                                    <br />
                                                                                    <span class="style4">ID selectors</span><br />
                                                                                    Used to define styles relating to objects with a unique ID (most often layers)<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">P</span>roceed to learn about each of these types...<br />
                                                            </span>
                                                        </p>
                                                        <p align="center" style="font-size: 22px; font-weight: bold; color: #800000">
                                                            TAG SELECTORS</p>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">T</span>he general syntax for an 
                                                            HTML selector is:<br />
                                                            <br />
                                                            <span class="note">HTMLSelector {<span class="style4">Property</span>:<span 
                                                                class="style4">Value</span>;}</span><br />
                                                            <br />
                                                            <span class="fancyfirst">F</span>or example:<br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99" class="style1" style="background-color: #FFFFFF">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host -->&lt;HTML&gt;<br />
                                                                                    &lt;HEAD&gt;<br />
                                                                                    &lt;style type=&quot;text/css&quot;&gt;<br />
                                                                                    <span class="style1">B {font-family:arial; font-size:14px; color:red}</span><br />
                                                                                    &lt;/style&gt;<br />
                                                                                    <br />
                                                                                    &lt;/HEAD&gt;<br />
                                                                                    <br />
                                                                                    &lt;BODY&gt;<br />
                                                                                    &lt;b&gt;This is a customized headline style bold&lt;/b&gt;<br />
                                                                                    &lt;/BODY&gt;<br />
                                                                                    <br />
                                                                                    &lt;/HTML&gt;<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">C</span>lick
                                                            <a href="http://www.echoecho.com/samplecssselectors01.htm" 
                                                                target="&quot;_blank&quot;"><span class="link">here</span></a> to open a 
                                                            window that shows the result of the above example.<br />
                                                            <br />
                                                            <span class="fancyfirst">H</span>TML selectors are used when you want to 
                                                            redefine the general look for an entire HTML tag</span></p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            CLASS SELECTORS</div>
                                                        <p>
                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                <tr>
                                                                    <td class="main">
                                                                        <div align="left">
                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <span class="text"><span class="fancyfirst">T</span>he general syntax for a 
                                                                            Class selector is:<br />
                                                                            <br />
                                                                            <span class="note"><span class="fancyfirst">.</span>ClassSelector {<span 
                                                                                class="style4">Property</span>:<span class="style4">Value</span>;}</span><br />
                                                                            <br />
                                                                            <span class="fancyfirst">F</span>or example:<br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;HTML&gt;<br />
                                                                                                    &lt;HEAD&gt;<br />
                                                                                                    &lt;style type=&quot;text/css&quot;&gt;<br />
                                                                                                    <span class="style1">.headline {font-family:arial; font-size:14px; color:red}</span><br />
                                                                                                    &lt;/style&gt;<br />
                                                                                                    <br />
                                                                                                    &lt;/HEAD&gt;<br />
                                                                                                    <br />
                                                                                                    &lt;BODY&gt;<br />
                                                                                                    &lt;b <span class="style1">class=&quot;headline&quot;</span>&gt;This is a bold tag carrying the 
                                                                                                    headline class&lt;/b&gt;<br />
                                                                                                    &lt;br&gt;<br />
                                                                                                    &lt;i <span class="style1">class=&quot;headline&quot;</span>&gt;This is an italics tag carrying 
                                                                                                    the headline class&lt;/i&gt;<br />
                                                                                                    &lt;/BODY&gt;<br />
                                                                                                    <br />
                                                                                                    &lt;/HTML&gt;<br />
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
                                                                            <span class="fancyfirst">C</span>lick
                                                                            <a href="http://www.echoecho.com/samplecssselectors02.htm" 
                                                                                target="&quot;_blank&quot;"><span class="link">here</span></a> to open a 
                                                                            window that shows the result of the above example.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">C</span>lass selectors are used when you want to define 
                                                                            a style that does not redefine an HTML tag entirely.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">W</span>hen referring to a Class selector you simply 
                                                                            add the class to an HTML tag like in the above example (<span class="note"><span 
                                                                                class="style4">class=&quot;headline&quot;</span></span>).<br />
                                                                            <br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="style3"><span class="style4">SPAN</span> and <span class="style4">
                                                                            DIV</span> as carriers</span><br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>wo tags are particularly useful in combination 
                                                                            with class selectors: <span class="note"><span class="style4">&lt;SPAN&gt;</span></span> 
                                                                            and <span class="note"><span class="style4">&lt;DIV&gt;</span></span>.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">B</span>oth are &quot;dummy&quot; tags that don't do anything in 
                                                                            themselves. Therefore, they are excellent for carrying CSS styles.<br />
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
                                                                                                    <span class="note"><span class="style4">&lt;SPAN&gt;</span></span> is an &quot;inline-tag&quot; 
                                                                                                    in HTML, meaning that no line breaks are inserted before or after the use of it.<br />
                                                                                                    <br />
                                                                                                    <span class="note"><span class="style4">&lt;DIV&gt;</span></span> is a &quot;block tag&quot;, 
                                                                                                    meaning that line breaks are automatically inserted to distance the block from 
                                                                                                    the surrounding content (like &lt;P&gt; or &lt;TABLE&gt; tags).<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <!-- perl mysql php web host-->
                                                                            <br />
                                                                            <span class="note"><span class="style4">&lt;DIV&gt;</span></span> has a particular 
                                                                            importance for layers. Since layers are separate blocks of information.
                                                                            <span class="note"><span class="style4">&lt;DIV&gt;</span></span> is an obvious choice 
                                                                            when defining layers on your pages.<br />
                                                                            </span>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            ID SELECTORS</div>
                                                        <p>
                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                <tr>
                                                                    <td class="main">
                                                                        <div align="left">
                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <span class="text"><span class="fancyfirst">T</span>he general syntax for an ID 
                                                                            selector is:<br />
                                                                            <br />
                                                                            <span class="note">#IDSelector {<span class="style4">Property</span>:<span 
                                                                                class="style4">Value</span>;}</span><br />
                                                                            <br />
                                                                            <span class="fancyfirst">F</span>or example:<br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="height: 342px; width: 450px; background-color: #FFFFFF;">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;HTML&gt;<br />
                                                                                                    &lt;HEAD&gt;<br />
                                                                                                    <span class="style1">&lt;style type=&quot;text/css&quot;&gt;<br />
                                                                                                    #layer1 {position:absolute; left:100;top:100; z-Index:0}<br />
                                                                                                    #layer2 {position:absolute; left:140;top:140; z-Index:1}<br />
                                                                                                    &lt;/style&gt;</span><br />
                                                                                                    &lt;/HEAD&gt;<br />
                                                                                                    <br />
                                                                                                    &lt;BODY&gt;<br />
                                                                                                    <span class="style1">&lt;div ID=&quot;layer1&quot;&gt;</span><br />
                                                                                                    &lt;table border=&quot;1&quot; bgcolor=&quot;#FFCC00&quot;&gt;&lt;tr&gt;&lt;td&gt;THIS IS LAYER 1&lt;br&gt;POSITIONED AT 
                                                                                                    100,100&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;<br />
                                                                                                    <span class="style1">&lt;/div&gt;<br />
                                                                                                    <br />
                                                                                                    &lt;div ID=&quot;layer2&quot;&gt;</span><br />
                                                                                                    &lt;table border=&quot;1&quot; bgcolor=&quot;#00CCFF&quot;&gt;&lt;tr&gt;&lt;td&gt;THIS IS LAYER 2&lt;br&gt;POSITIONED AT 
                                                                                                    140,140&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;<br />
                                                                                                    <span class="style1">&lt;/div&gt;</span><br />
                                                                                                    &lt;/BODY&gt;<br />
                                                                                                    &lt;/HTML&gt;<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <!-- perl mysql php web host-->
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">C</span>lick
                                                                            <a href="http://www.echoecho.com/samplecssselectors03.htm" 
                                                                                target="&quot;_blank&quot;"><span class="link">here</span></a> to open a 
                                                                            window that shows the result of the above example.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>D selectors are used when you want to define a 
                                                                            style relating to an object with a unique ID.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>his selector is most widely used with layers 
                                                                            (as in the above example), since layers are always defined with a unique ID.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            </span>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            GROUPED SELECTORS</div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">M</span>ost often selectors will 
                                                            share some of the same styles, for example, being based on the same font.<br />
                                                            In these cases, rather than defining the font for each and every selector, one 
                                                            by one, you can group them, and thus assign the font to all the selectors at 
                                                            once.<br />
                                                            <br />
                                                            <span class="fancyfirst">L</span>ook at this example, made without grouping:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host -->.headlines{<br />
                                                                                    <span class="style1">font-family:arial; color:black; background:yellow; 
                                                                                    font-size:14pt;</span><br />
                                                                                    }<br />
                                                                                    <br />
                                                                                    .sublines {<br />
                                                                                    <span class="style1">font-family:arial; color:black; background:yellow; 
                                                                                    font-size:12pt;</span><br />
                                                                                    }<br />
                                                                                    <br />
                                                                                    .infotext {<br />
                                                                                    <span class="style1">font-family:arial; color:black; background:yellow; 
                                                                                    font-size:10pt;</span><br />
                                                                                    }<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>s you can see, the only style that varies is 
                                                            the <span class="style3">font-size</span>.<br />
                                                            In the next example we have grouped the selectors, and defined the common styles 
                                                            at once.<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host -->.headlines, .sublines, .infotext {<br />
                                                                                    <span class="style1">font-family:arial; color:black; background:yellow;</span><br />
                                                                                    }<br />
                                                                                    <br />
                                                                                    .headlines {<span class="style1">font-size:14pt;</span>}<br />
                                                                                    .sublines {<span class="style1">font-size:12pt;</span>}<br />
                                                                                    .infotext {<span class="style1">font-size: 10pt;</span>}<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">L</span>ess to type, easier to change and guaranteed to 
                                                            be the same for all styles.<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            </span></p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            CONTEXT DEPENDANT SELECTORS</div>
                                                        <p>
                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                <tr>
                                                                    <td class="main">
                                                                        <div align="left">
                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <span class="text"><span class="fancyfirst">I</span>t is possible to make 
                                                                            selectors that will only work in certain contexts.
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">F</span>or example, you can define a style for the
                                                                            <span class="note"><span class="style4">&lt;B&gt;</span></span> tag that is only 
                                                                            triggered if the text is not only bold but also written in italics.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">F</span>or example, the style should be in effect here:
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
                                                                                                    <!-- perl mysql php web host -->&lt;i&gt;&lt;b&gt;example&lt;/b&gt;&lt;/i&gt;
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
                                                                            but not here :<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF; margin-bottom: 0px;" width="450">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;b&gt;example&lt;/b&gt;.<br />
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
                                                                            <span class="style4"><span class="fancyfirst">T</span>HE SYNTAX</span><br />
                                                                            Simply adding a normal style to the <span class="note"><span class="style4">&lt;B&gt;</span></span> 
                                                                            tag is done like this:<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->B {font-size:16px}<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <!-- perl mysql php web host-->
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">A</span>dding a context dependent style, like the one 
                                                                            described above is done like this:
                                                                            <br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="height: 38px; width: 450px; background-color: #FFFFFF;">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->I B {font-size:16px;}<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <!-- perl mysql php web host-->
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">W</span>e simply separated the contextual
                                                                            <span class="note"><span class="style4">&lt;I&gt;</span></span> tag from the
                                                                            <span class="note"><span class="style4">&lt;B&gt; </span></span>tag with a space.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="style4"><span class="fancyfirst">U</span>SING GROUPED AND CONTEXT 
                                                                            DEPENDENT SELECTORS AT THE SAME TIME:</span><br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>t is possible to use context dependent and 
                                                                            grouped selectors at the same time.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">F</span>or example, like this:<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->I B, .headlines, B .sublines {font-size:16px;}<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <!-- perl mysql php web host-->
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>n the example the font-size of 16 pixels is in 
                                                                            effect on:<br />
                                                                            1) All <span class="note"><span class="style4">&lt;B&gt;</span></span> tags enclosed 
                                                                            by <span class="note"><span class="style4">&lt;I&gt;</span></span> tags<br />
                                                                            2) All headlines classes.<br />
                                                                            3) sublines classes enclosed by <span class="note"><span class="style4">&lt;B&gt;</span></span> 
                                                                            tags.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            </span>
                                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </p>
                                                        <p>
                                                            &nbsp;</p>
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
                                                        <p>
                                                            <BR>
                                                        </p>
                                                        <BLOCKQUOTE>
                                                        </BLOCKQUOTE>
                                                    </DIV>
                                                    <BR>
                                                    <BR>
      </DIV>
                                                <BR>
                                            <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
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
                    InsertCommand="INSERT CSS_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    
                      
                      
                      
                      
                      
                      
                      SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [CSS_tblComments]">
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
                    PostBackUrl="~/CSS_Contents.aspx">Back to CSS Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/CSS_L1.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/CSS_L3.aspx">Next &gt;&gt;</asp:LinkButton>
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
