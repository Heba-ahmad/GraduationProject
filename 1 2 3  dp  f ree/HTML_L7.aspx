<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="HTML_L7.aspx.cs" Inherits="_Default" %>

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
  href="Signup.aspx">Signup</A>                                
                                                    <SPAN class=author>to add comment, &amp; 
          to Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/HTML_L7.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                                                PostBackUrl="~/HTML_L6.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/HTML_Contents.aspx">Back to HTML Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="HTML_L8.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 7 - HTML Tables</H2>
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
                                                            <BR>
                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                <tr>
                                                                    <td class="main">
                                                                        <div align="left">
                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <span class="text"><span class="fancyfirst">T</span>ables are used on websites 
                                                                            for two major purposes:<br />
                                                                            <ul>
                                                                                <li>The obvious purpose of arranging information in a table<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>The less obvious - but more widely used - purpose of creating a page layout with 
                                                                                    the use of hidden tables.<br />
                                                                                </li>
                                                                            </ul>
                                                                            <br />
                                                                            <span class="fancyfirst">U</span>sing tables to divide the page into different 
                                                                            sections is an extremely powerful tool.<br />
                                                                            Almost all major sites on the web are using invisible tables to layout the 
                                                                            pages.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he most important layout aspects that can be 
                                                                            done with tables are:<br />
                                                                            <ul>
                                                                                <li>Dividing the page into separate sections.<br />
                                                                                    An invisible table is excellent for this purpose.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>Creating menus.<br />
                                                                                    Typically with one color for the header and another for the links following in 
                                                                                    the next lines.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>Adding interactive form fields.<br />
                                                                                    Typically a gray area containing a search option.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>Creating fast loading headers for the page.<br />
                                                                                    A colored table with a text on it loads like a bullet compared to even a small 
                                                                                    banner.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>Easy alignment of images that have been cut into smaller pieces.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>A simple way to allow text to be written in two or more columns next to each 
                                                                                    other.<br />
                                                                                </li>
                                                                            </ul>
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he importance of using tables for these layout 
                                                                            purposes can't be overrated. However there are a few things to keep in mind when 
                                                                            doing so.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">M</span>ost important is, that the content of a table 
                                                                            is not shown until the entire table is loaded. If you have extremely long pages, 
                                                                            you should divide it into two or more tables - allowing the user to start 
                                                                            reading the upper content while the rest of the page is loading.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">N</span>ow let's proceed with learning about the 
                                                                            different techniques...<br />
                                                                            </span>
                                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline">
                                                                                BASIC TABLES</div>
                                                                            <br />
                                                                            <span class="text"><span class="fancyfirst">T</span>ables are defined with the
                                                                            <span class="style2">&lt;table&gt;</span> tag.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>o insert a table on your page you simply add 
                                                                            these tags where you want the table to occur:<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;table&gt;<br />
                                                                                                    &lt;/table&gt;
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
                                                                            <span class="fancyfirst">T</span>he above table would be of no use since it has 
                                                                            no rows and no columns.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="style4"><span class="fancyfirst">R</span>OWS:</span><br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>o add rows to your table use the
                                                                            <span class="style2">&lt;tr&gt;</span> and <span class="style2">&lt;/tr&gt;</span> tags.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">E</span>xample:<br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;table&gt;<br />
                                                                                                    &lt;tr&gt;&lt;/tr&gt;<br />
                                                                                                    &lt;tr&gt;&lt;/tr&gt;<br />
                                                                                                    &lt;/table&gt;
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
                                                                            <span class="fancyfirst">I</span>t doesn't make sense to write the above lines 
                                                                            in itself, cause you can't write content outside of table cells.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>f you do write things outside of cells it will 
                                                                            appear right above the table.<br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="style4"><span class="fancyfirst">C</span>OLUMNS:</span><br />
                                                                            <br />
                                                                            <span class="fancyfirst">Y</span>ou can divide rows into columns with
                                                                            <span class="style2">&lt;td&gt;</span> and <span class="style2">&lt;/td&gt;</span> tags:<br />
                                                                            <br />
                                                                            <span class="fancyfirst">E</span>xample:<br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;table&gt;<br />
                                                                                                    &lt;tr&gt; &lt;td&gt;This is row one, left side.&lt;/td&gt; &lt;td&gt;This is row one, right side.&lt;/td&gt; 
                                                                                                    &lt;/tr&gt;<br />
                                                                                                    &lt;tr&gt; &lt;td&gt;This is row two, left side.&lt;/td&gt; &lt;td&gt;This is row two, right side.&lt;/td&gt; 
                                                                                                    &lt;/tr&gt;<br />
                                                                                                    &lt;/table&gt;<br />
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
                                                                            <span class="fancyfirst">R</span>esult:<br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table6">
                                                                                                    <!-- perl mysql php web host -->This is row one, left side.<br />
                                                                                                </td>
                                                                                                <td class="table6">
                                                                                                    This is row one, right side.<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table6">
                                                                                                    This is row two, left side.<br />
                                                                                                </td>
                                                                                                <td class="table6">
                                                                                                    This is row two, right side.
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
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>his page has shown the core basics of tables. 
                                                                            In addition to these, there are different options for customizing your tables.<br />
                                                                            The following pages will focus on the different settings for
                                                                            <span class="style2">&lt;table&gt;</span>, <span class="style2">&lt;tr&gt;</span> and
                                                                            <span class="style2">&lt;td&gt;</span> tags.<br />
                                                                            </span>
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline">
                                                                                TABLE TAGS<br />
                                                                            </div>
                                                                            <br />
                                                                            <span class="text"><span class="fancyfirst">T</span>he following properties can 
                                                                            be added to the <span class="style2">&lt;table&gt;</span> tag:<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table8">
                                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>Property</td>
                                                                                                <td class="table8">
                                                                                                    Description<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    align=<br />
                                                                                                    left<br />
                                                                                                    center<br />
                                                                                                    right<br />
                                                                                                </td>
                                                                                                <td class="table5">
                                                                                                    <br />
                                                                                                    left align table<br />
                                                                                                    center table<br />
                                                                                                    right align table<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    background=filename</td>
                                                                                                <td class="table5">
                                                                                                    image inserted behind the table<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    bgcolor=#rrggbb</td>
                                                                                                <td class="table5">
                                                                                                    background color<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    border=n</td>
                                                                                                <td class="table5">
                                                                                                    border thickness<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    bordercolor=#rrggbb</td>
                                                                                                <td class="table5">
                                                                                                    border color<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    bordercolordark=#rrggbb</td>
                                                                                                <td class="table5">
                                                                                                    border shadow<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    cellpadding=n</td>
                                                                                                <td class="table5">
                                                                                                    distance between cell and content<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    cellspacing=n</td>
                                                                                                <td class="table5">
                                                                                                    space between cells<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    nowrap</td>
                                                                                                <td class="table5">
                                                                                                    protects agains linebreaks, even though the content might be wider than the 
                                                                                                    browser window.<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    frame=<br />
                                                                                                    void,<br />
                                                                                                    above,<br />
                                                                                                    below,<br />
                                                                                                    lhs,<br />
                                                                                                    rhs,<br />
                                                                                                    hsides,<br />
                                                                                                    vsides,<br />
                                                                                                    box<br />
                                                                                                </td>
                                                                                                <td class="table5">
                                                                                                    <br />
                                                                                                    removes all outer borders<br />
                                                                                                    shows border on top of table<br />
                                                                                                    shows border on bottom of table<br />
                                                                                                    shows border on left side of table<br />
                                                                                                    shows border on right side of table<br />
                                                                                                    shows border on both horizontal sides<br />
                                                                                                    shows border on both vertical sides<br />
                                                                                                    shows border on all sides of table
                                                                                                    <br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    valign=<br />
                                                                                                    top<br />
                                                                                                    bottom<br />
                                                                                                </td>
                                                                                                <td class="table5">
                                                                                                    <br />
                                                                                                    aligns content to top of cells<br />
                                                                                                    aligns content to bottom of cells<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    width=<br />
                                                                                                    n,n<br />
                                                                                                    n,n%<br />
                                                                                                </td>
                                                                                                <td class="table5">
                                                                                                    <br />
                                                                                                    minimum width of table in pixels<br />
                                                                                                    minimum width in percentage of window size<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <!-- perl mysql php web host-->
                                                                            <br />
                                                                            <br />
                                                                            <span class="note"><span class="fancyfirst">N</span>ote:
                                                                            <br />
                                                                            Table properties are set for the entire table.
                                                                            <br />
                                                                            If certain properties are set for single cells, they will have higher priority 
                                                                            than the settings for the table as a whole. </span>
                                                                            <br />
                                                                            </span>
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline">
                                                                                ROW/CELL TAGS</div>
                                                                            <br />
                                                                            <br />
                                                                            <span class="text"><span class="fancyfirst">T</span>hese settings can be added 
                                                                            to both <span class="style2">&lt;tr&gt;</span> and <span class="style2">&lt;td&gt;</span> 
                                                                            tags.
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
                                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>PROPERTY</td>
                                                                                                <td class="table8">
                                                                                                    DESCRIPTION<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    align=<br />
                                                                                                    left<br />
                                                                                                    right<br />
                                                                                                    center<br />
                                                                                                </td>
                                                                                                <td class="table5">
                                                                                                    <br />
                                                                                                    aligns content to the left of cells<br />
                                                                                                    aligns content to the right of cells<br />
                                                                                                    aligns content to the center of the cells<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    background=filename</td>
                                                                                                <td class="table5">
                                                                                                    sets a background image for the cells<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    bgcolor=#rrggbb</td>
                                                                                                <td class="table5">
                                                                                                    sets a background color for the cells<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    bordercolor=#rrggbb</td>
                                                                                                <td class="table5">
                                                                                                    sets color for the border of cells<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    bordercolordark=#rrggbb</td>
                                                                                                <td class="table5">
                                                                                                    sets color for the border shadow of cells<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    valign=<br />
                                                                                                    top<br />
                                                                                                    middle<br />
                                                                                                    bottom<br />
                                                                                                </td>
                                                                                                <td class="table5">
                                                                                                    <br />
                                                                                                    aligns to the top of cells<br />
                                                                                                    aligns to the middle of the cells<br />
                                                                                                    aligns to the bottom of cells<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    width=<br />
                                                                                                    n<br />
                                                                                                    n%<br />
                                                                                                </td>
                                                                                                <td class="table5">
                                                                                                    <br />
                                                                                                    specify a minimum width for the cells in pixels<br />
                                                                                                    specify a minimum width for the cells in percent of the table width<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    height=<br />
                                                                                                    n<br />
                                                                                                    n%<br />
                                                                                                </td>
                                                                                                <td class="table5">
                                                                                                    <br />
                                                                                                    minimum height of cells in pixels<br />
                                                                                                    minimum height of cells in percentage of table height
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
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>hese settings are only valid for
                                                                            <span class="style2">&lt;td&gt;</span> tags.<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table8">
                                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>PROPERTY</td>
                                                                                                <td class="table8">
                                                                                                    DESCRIPTION<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    colspan=n</td>
                                                                                                <td class="table5">
                                                                                                    number of columns a cell should span<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    nowrap</td>
                                                                                                <td class="table5">
                                                                                                    protects agains linebreaks, even though the content<br />
                                                                                                    of a cell might be wider than the browser window<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    rowspan=n</td>
                                                                                                <td class="table5">
                                                                                                    number of rows a cell should span
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
                                                                            <span class="note"><span class="fancyfirst">N</span>ote:<br />
                                                                            Settings for columns(&lt;td&gt; tag) have higher priority than settings for rows(&lt;tr&gt; 
                                                                            tag).<br />
                                                                            <br />
                                                                            <span class="fancyfirst">S</span>ettings for cells (&lt;tr&gt; or &lt;td&gt; tags) have 
                                                                            higher priority than settings for the table as a whole(&lt;table&gt; tag).</span><br />
                                                                            </span>
                                                                            <br />
                                                                            <br />
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </p>
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
                                                PostBackUrl="~/HTML_L6.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L8.aspx">Next &gt;&gt;</asp:LinkButton>
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
