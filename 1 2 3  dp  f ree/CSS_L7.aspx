<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="CSS_L7.aspx.cs" Inherits="_Default" %>

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

.text {font-family:"arial","helvetica"; font-size:14px; color:#000000;}
.fancyfirst {font-size:150%; font-family:"times","times new roman"}

.note {font-weight:bold; font-size:90%;}
.style4 {color:#990000;font-weight:bold; font-size:16px;font-family:"times","times new roman"}
.style1 {color:#aa0000;}
        .style5
        {
            font-family: Courier, "Courier New", arial, helvetica;
            font-size: 11px;
            color: #222222;
            background-color: #dddddd;
        }
        .style6
        {
            font-family: arial, helvetica;
            font-size: 12px;
            color: #000000;
            background-color: #ffffff;
        }
    .style2 {color:#000000;}
LI.list1 {list-style: circle outside; color:green;} .blacktext {color:black} LI.list2 {list-style: square inside; color:blue} 

.boxborder{background-color:#000000;}

        .style7
        {
            font-family: arial, helvetica;
            font-size: 12px;
            color: #000000;
            font-weight: bold;
            background-color: #eeeeee;
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
  href="Signup.aspx">Signup</A> <SPAN class=author>to add comment, &amp; to Rate The Tutorials 
          YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/CSS_L7.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                                                PostBackUrl="~/CSS_L6.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/CSS_Contents.aspx">Back to CSS Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="CSS_L8.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 7 - CSS Lists</H2>
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
                                                            CSS Lists</div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">C</span>SS allows you to customize 
                                                            the lists that can be made
                                                            <br />
                                                            with HTML.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he good news is that there are many powerful 
                                                            properties for doing so.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he bad news is that Netscape and Internet 
                                                            Explorer often support these properties in different ways. Both browsers have 
                                                            limitations in their support of list styles.<br />
                                                            <br />
                                                            <span class="fancyfirst">N</span>etscape browsers only let you add the list CSS 
                                                            to <span class="style2">&lt;LI&gt;</span> tags - not just any tag.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>nternet Explorer's support of CSS with relation 
                                                            to lists is only fully supported for browsers on the Windows platform.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>n any case, be careful about using CSS for 
                                                            lists since it might not show the way you want it to on all browsers. However, 
                                                            most things won't ruin anything if the browser doesn't support it - it just 
                                                            shows as a normal list - so it will be okay to define lists that only work for 
                                                            the most widely used browser.<br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">L</span>IST PROPERTIES</span><br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="style7">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>Property</td>
                                                                                <td class="style7">
                                                                                    Values</td>
                                                                                <td class="style7">
                                                                                    NS</td>
                                                                                <td class="style7">
                                                                                    IE</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="style5">
                                                                                    list-style type</td>
                                                                                <td class="style6">
                                                                                    disc<br />
                                                                                    circle<br />
                                                                                    square<br />
                                                                                    decimal<br />
                                                                                    lower-roman<br />
                                                                                    upper-roman<br />
                                                                                    lower-alpha<br />
                                                                                    upper-alpha<br />
                                                                                    none</td>
                                                                                <td class="style6">
                                                                                    4+<br />
                                                                                    4+<br />
                                                                                    4+<br />
                                                                                    4+<br />
                                                                                    4+<br />
                                                                                    4+<br />
                                                                                    4+<br />
                                                                                    4+<br />
                                                                                    &nbsp;</td>
                                                                                <td class="style6">
                                                                                    4W<br />
                                                                                    4W<br />
                                                                                    4W<br />
                                                                                    4W<br />
                                                                                    4W<br />
                                                                                    4W<br />
                                                                                    4W<br />
                                                                                    4W<br />
                                                                                    4W</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="style5">
                                                                                    list-style image<br />
                                                                                </td>
                                                                                <td class="style6">
                                                                                    none<br />
                                                                                    url(&lt;url&gt;)</td>
                                                                                <td class="style6">
                                                                                    &nbsp;<br />
                                                                                    &nbsp;</td>
                                                                                <td class="style6">
                                                                                    4W<br />
                                                                                    4W</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="style5">
                                                                                    list-style position<br />
                                                                                </td>
                                                                                <td class="style6">
                                                                                    outside<br />
                                                                                    inside</td>
                                                                                <td class="style6">
                                                                                    &nbsp;<br />
                                                                                    &nbsp;</td>
                                                                                <td class="style6">
                                                                                    4W<br />
                                                                                    4W</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="style5">
                                                                                    list-style<br />
                                                                                </td>
                                                                                <td class="style6">
                                                                                    &lt;list-style type&gt;<br />
                                                                                    &lt;list style position&gt;<br />
                                                                                    &lt;list-style image&gt;</td>
                                                                                <td class="style6">
                                                                                    &nbsp;<br />
                                                                                    &nbsp;</td>
                                                                                <td class="style6">
                                                                                    4W<br />
                                                                                    4W<br />
                                                                                    4w<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="note"><span class="fancyfirst">4</span>+: Browser version 4 or 
                                                            newer.<br />
                                                            4W: Browser version 4 or newer, windows only.</span><br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">D</span>EFINING STYLES FOR LINKS</span><br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>s mentioned in the above table, we have four 
                                                            unique selectors with respect to lists. The fourth selector, <span class="note">
                                                            <span class="style4">list-style</span></span> is an overall selector that let 
                                                            you define all list related styles at once.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he three basic selectors are:<br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="style6">
                                                                                    <!-- perl mysql php web host --><span class="style4">list-style type</span><br />
                                                                                    Defines the look of the bullets used in your list.<br />
                                                                                    <br />
                                                                                    <span class="style4">list-style image</span><br />
                                                                                    Let's you use a custom graphic for bullets.<br />
                                                                                    <br />
                                                                                    <span class="style4">list-style position</span><br />
                                                                                    Often the text in a list is longer than one line.<br />
                                                                                    <span class="style1">list-style position:outer</span> lets the second line align 
                                                                                    with the first line. That is: the bullet is to the left of both lines.<br />
                                                                                    <span class="style1">list-style position:inner</span> lets the second line align 
                                                                                    with the bullet.<br />
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
                                                            <span class="style4"><span class="fancyfirst">A</span>ssigning several 
                                                            properties at once</span><br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>nstead of using different selectors for each
                                                            <span class="note"></span>list-style</span> you can specify them all at once 
                                                            using the <span class="note"><span class="style4">list-style</span></span> 
                                                            property.<br />
                                                            <br />
                                                            <span class="fancyfirst">F</span>or example:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="style5">
                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                    &lt;head&gt;<br />
                                                                                    <span class="style1">&lt;style type=&quot;text/css&quot;&gt;<br />
                                                                                    LI.list1 {list-style: circle outside; color:green;}
                                                                                    <br />
                                                                                    LI.list2 {list-style: square inside; color:blue}<br />
                                                                                    .blacktext {color:black}<br />
                                                                                    &lt;/style&gt;</span><br />
                                                                                    &lt;/head&gt;<br />
                                                                                    <br />
                                                                                    &lt;body&gt;<br />
                                                                                    <br />
                                                                                    &lt;ul&gt;<br />
                                                                                    &lt;li class=&quot;list1&quot;&gt;&lt;span class=&quot;blacktext&quot;&gt;This is one black line&lt;/span&gt;<br />
                                                                                    &lt;li class=&quot;list1&quot;&gt;This is another line that is much longer than the first. But 
                                                                                    it isn't a black line since we did not specify a style for the text that goes 
                                                                                    here other than the style we defined for the list.<br />
                                                                                    &lt;/ul&gt;<br />
                                                                                    &lt;br&gt;<br />
                                                                                    &lt;br&gt;<br />
                                                                                    &lt;ul&gt;<br />
                                                                                    &lt;li class=&quot;list2&quot;&gt;&lt;span class=&quot;blacktext&quot;&gt;This is one black line&lt;/span&gt;<br />
                                                                                    &lt;li class=&quot;list2&quot;&gt;This is another line that is much longer than the first. But 
                                                                                    it isn't a black line since we did not specify a style for the text that goes 
                                                                                    here other than the style we defined for the list.<br />
                                                                                    <br />
                                                                                    &lt;/ul&gt;<br />
                                                                                    <br />
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
                                                            <span class="fancyfirst">T</span>he lists from the above example would look like 
                                                            this:<br />
                                                            <br />
                                                            <table align="center" border="1" cellpadding="10">
                                                                <tr>
                                                                    <td bgcolor="#ffffff" width="200">
                                                                        <style type="text/css">
LI.list1 {list-style: circle outside; color:green;} LI.list2 {list-style: square inside; color:blue} .blacktext {color:black}</style>
                                                                        <ul>
                                                                            <li class="list1"><span class="blacktext">This is one black line</span> </li>
                                                                            <li class="list1">This is another line that is much longer than the first. But it 
                                                                                isn't a black line since we did not specify a style for the text that goes here 
                                                                                other than the style we defined for the list.</li>
                                                                        </ul>
                                                                        <br />
                                                                        <ul>
                                                                            <li class="list2"><span class="blacktext">This is one black line</span> </li>
                                                                            <li class="list2">This is another line that is much longer than the first. But it 
                                                                                isn't a black line since we did not specify a style for the text that goes here 
                                                                                other than the style we defined for
                                                                                <br />
                                                                                the list.</li>
                                                                        </ul>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <br />
                                                            <hr align="center" style="height: -12px" width="300" />
                                                            <br />
                                                        <BLOCKQUOTE>
                                                        </BLOCKQUOTE>
                                                    </DIV>
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
                                                PostBackUrl="~/CSS_L6.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/CSS_L8.aspx">Next &gt;&gt;</asp:LinkButton>
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
