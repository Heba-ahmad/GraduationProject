<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="PHP_L1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>PHP Tutorial 1 : Introduction, Installation &amp; Syntax</TITLE>
<META content="text/html; charset=windows-1256" http-equiv=Content-Type>
<META name=Description 
content="Lesson 1 on the VB IDE, the environment, creating a Project, creating a form">
<META name=Keywords 
content="VB 6, IT training, course, application, computer programming, file processing, database">
<META name=Distribution content=Global>
<META name=Rating content=General><LINK rel=StyleSheet type=text/css 
href="images\LessonsImages\FLASHLessons\newstyles2.css">
<META name=GENERATOR content="MSHTML 8.00.6001.18904">
    <style type="text/css">

.text {font-family:"arial","helvetica"; font-size:14px; color:#000000;}
.fancyfirst {font-size:150%; font-family:"times","times new roman"}

.note {font-weight:bold; font-size:90%;}
        .code
        {
            width: 29%;
        }
        .style1
        {
            width: 168px;
        }
        .style2
        {
            width: 294px;
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
                                                    <SPAN class=author>to add comment &amp; to 
          Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/PHP_L1.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;&nbsp;<img alt="" src="images/PHP.JPG" 
                    style="width: 204px; height: 82px" /><br />
                &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_Contents.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/PHP_Contents.aspx">Back to PHP Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_L2.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 1 - PHP <br />Introduction, Installation &amp; Syntax</H2>
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
                                                            Introduction</div>
                                                        <span class="text"><span class="fancyfirst">
                                                        <br />
                                                        What You Should Already Know</span> <br /><br />
                                                        
                                                        Before you continue you should have a basic understanding of the following:<br />

                                                        •HTML/XHTML<br />
                                                        •JavaScript<br />
                                                        If you want to study these subjects first, find the tutorials on our Home page.<br /><br />


                                                        <hr align="center" width="300" />
                                                        <br />


<span class="text"><span class="fancyfirst">
                                                        <br />
                                                        What is PHP?</span> <br /><br /> 
                                                        •PHP stands for PHP: Hypertext Preprocessor <br />
                                                        •PHP is a server-side scripting language, like ASP <br />
                                                        •PHP scripts are executed on the server <br />
                                                        •PHP supports many databases (MySQL, Informix, Oracle, Sybase, Solid, 
                                                        PostgreSQL, Generic ODBC, etc.)<br />
                                                        •PHP is an open source software <br />
                                                        •PHP is free to download and use <br /><br />

<span class="text"><span class="fancyfirst">
                                                        <br />
                                                        What is a PHP File?</span>

<br />•PHP files can contain text, HTML tags and scripts<br />
                                                        •PHP files are returned to the browser as plain HTML <br />
                                                        •PHP files have a file extension of &quot;.php&quot;, &quot;.php3&quot;, or &quot;.phtml&quot;<br /><br />
 <span class="text"><span class="fancyfirst">
                                                        <br />
                                                        What is MySQL?</span>  <br /><br />
                                                        •MySQL is a database server<br />
                                                        •MySQL is ideal for both small and large applications<br />
                                                        •MySQL supports standard SQL<br />
                                                        •MySQL compiles on a number of platforms<br />
                                                        •MySQL is free to download and use<br /><br />
  <span class="text"><span class="fancyfirst">
                                                        <br />
                                                        PHP + MySQL</span><br /><br />
                                                        •PHP combined with MySQL are cross-platform (you can develop in Windows and 
                                                        serve on a Unix platform) he only object type in Flash, that can detect mouse 
                                                        events is the Button object.<br />
                                                        <br />
                                                        
                                                        
                                                        <hr align="center" width="300" />

                                                        
                                        
                                                                &nbsp;<div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            What do you Need?<br />
                                                        </div>
                                                              <br />
                                                      
                                                      <span class="text"><span class="fancyfirst">
  
                                                        Download PHP</span><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Download PHP for free here: <a href="http://www.php.net/downloads.php">
                                                        From Here</a> <br /> 
                                                        <br />
                                                        <span class="text"><span class="fancyfirst">
  
                                                        Download MySQL Database</span><br /><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Download MySQL for free here: <a href="http://www.mysql.com/downloads/index.html">
                                                        From Here</a> <br/>
                                                        <span class="text"><span class="fancyfirst"><br />
  
                                                        Download Apache Server</span><br /><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Download Apache for free here:  <a href="http://httpd.apache.org/download.cgi"> 
                                                        From Here</a>
                                                      <br /><br />  

                                                        
                                                        
                                                        
                   <hr align="center" width="300" />
                                                        
                        <br />
                                                        
                 <P class=intro>PHP code is executed on the server, and the plain HTML result is sent 
                     to the browser.</P> <br />
                  
<div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            Basic PHP Syntax<br />
                                                        </div> <br />
                  
                  <P>A PHP scripting block always starts with <B>&lt;?php</B> 
                      and ends with <B>?&gt;</B>. A PHP scripting block can be placed anywhere in the 
                      document.</P>
                  <P>On servers with shorthand support enabled you can start a scripting block with &lt;? 
                      and end with ?&gt;.</P>
                  <P>For maximum compatibility, we recommend that you use the standard form (&lt;?php) 
                      rather than the shorthand form.</P>
                 
                 
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>?&gt; </TD></TR></TBODY></TABLE>
                  
                  
                  <P>A PHP file normally contains HTML tags, just like an HTML file, and some PHP 
                      scripting code.</P>
                  <P>Below, we have an example of a simple PHP script which sends the text &quot;Hello 
                      World&quot; to the browser:</P>
                  
                  
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD class="style1">&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>echo &quot;Hello World&quot;;<BR>?&gt;<BR><BR>
                          &lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                      
                      
                  <P>Each code line in PHP must end with a semicolon. The semicolon is a separator and 
                      is used to distinguish one set of instructions from another.</P>
                  <P>There are two basic statements to output text with PHP: 
                  <B>echo</B> and <B>print</B>. In the example above we have used the echo statement 
                      to output the text &quot;Hello World&quot;.</P>
                  <P><B>Note:</B> The file must have a .php extension. If the file has a .html 
                      extension, the PHP code will not be executed.</P>

                                                        
                                                        
                                                        
                   <hr align="center" width="300" />
                      <br /> <br />
                                                         
                    <div align="center" class="headline" 
                     style="font-size: 22px; font-weight: bold; color: #800000">
                        Comments in PHP<br /></div>   <br /> <br />                                  
                     <P>In PHP, we use // to make a single-line comment or /* and */ to make a large 
                         comment block.</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0>
                    <TBODY>
                    <TR>
                      <TD class="style2">&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>//This is a comment<BR><BR>/*<BR>
                          This is<BR>a comment<BR>block<BR>*/<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                      
                      <br /><br />  <hr align="center" width="300" />
                      <br />
                                                            <br />

                  <P class=intro>A variable is used to store information.</P>

                  <div align="center" class="headline" 
                     style="font-size: 22px; font-weight: bold; color: #800000">
                      Variables in PHP<br /></div>
                  <P>Variables are used for storing a values, like text strings, numbers or arrays.</P>
                  <P>When a variable is declared, it can be used over and over again in your script.</P>
                  <P>All variables in PHP start with a $ sign symbol.</P>
                  <P>The correct way of declaring a variable in PHP:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>$var_name = value; </TD></TR></TBODY></TABLE>
                  <P>New PHP programmers often forget the $ sign at the beginning of the variable. In 
                      that case it will not work.</P>
                  <P>Let's try creating a variable containing a string, and a variable containing a 
                      number:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$txt=&quot;Hello World!&quot;;<BR>$x=16;<BR>?&gt; 
                      </TD></TR></TBODY></TABLE><BR>
                                                           <hr align="center" width="300" />
<br /><br />
                  <div align="center" class="headline" 
                     style="font-size: 22px; font-weight: bold; color: #800000">
                      PHP is a Loosely Typed Language<br /></div> <br />
                  <P>In PHP, a variable does not need to be declared before adding a value to it.</P>
                  <P>In the example above, you see that you do not have to tell PHP which data type 
                      the variable is.</P>
                  <P>PHP automatically converts the variable to the correct data type, depending on 
                      its value.</P>
                  <P>In a strongly typed programming language, you have to declare (define) the type 
                      and name of the variable before using it.</P>
                  <P>In PHP, the variable is declared automatically when you use it.</P>
                                                           <hr align="center" width="300" />
<br /> <br />
                  <div align="center" class="headline" 
                     style="font-size: 22px; font-weight: bold; color: #800000">
                      Naming Rules for Variables<br /></div>
                  <UL> <br />
                    <LI>A variable name must start with a letter or an underscore &quot;_&quot;</LI>
                    <LI>A variable name can only contain alpha-numeric characters and underscores (a-z, 
                        A-Z, 0-9, and _ )</LI>
                    <LI>A variable name should not contain spaces. If a variable name is more than one 
                        word, it should be separated with an underscore ($my_string), or with 
                        capitalization ($myString)</LI></UL><BR>
                  
                                                          <br /><br />
                                                           <hr align="center" width="300" />
                                                        <br />
                                                        
                                                       
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
                    InsertCommand="INSERT PHP_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    
                      
                      
                      
                      
                      
                      
                      
                      SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [PHP_tblComments]">
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

                                            <BR>
            <DIV align=right style="color: #00FF00">
                <asp:LinkButton ID="LinkButton8" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/PHP_Contents.aspx">Back to PHP Contents</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_Contents.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_L2.aspx">Next &gt;&gt;</asp:LinkButton>
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
