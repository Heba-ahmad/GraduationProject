<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="PHP_L5.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>PHP Tutorial 5: Date, Include, File, File Upload, &`Cookies</TITLE>
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
        DestinationPageUrl="~/FLASH_L3.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                                                PostBackUrl="~/PHP_L4.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/PHP_Contents.aspx">Back to PHP Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="PHP_L6.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 5 - PHP Date, <br />Include, File, File Upload, &`Cookies
</H2>
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
                                                            Date() Function</div>
                                                          <HR>

                  <P class=intro>The PHP date() function is used to format a 
                  time and/or date.</P>
                  <HR>

                  <H2>The PHP Date() Function</H2>
                  <P>The PHP date() function formats a timestamp to a more 
                  readable date and time.</P>
                  <P>&nbsp;<img alt="" src="images/lamp.gif" style="width: 15px; height: 15px" />A timestamp is a sequence of characters, denoting the date 
                  and/or time at which a certain event occurred. </P>
                  <H3>Syntax</H3>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>date(<I>format</I>,<I>timestamp</I>) 
                  </TD></TR></TBODY></TABLE><BR>
                  <TABLE class=reference border=1 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TH vAlign=top width="20%" align=left>Parameter</TH>
                      <TH vAlign=top width="80%" align=left>Description</TH></TR>
                    <TR>
                      <TD vAlign=top>format</TD>
                      <TD vAlign=top>Required. Specifies the format of the 
                        timestamp</TD></TR>
                    <TR>
                      <TD vAlign=top>timestamp</TD>
                      <TD vAlign=top>Optional. Specifies a timestamp. Default 
                        is the current date and time</TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>PHP Date() - Format the Date</H2>
                  <P>The required <I>format</I> parameter in the date() function 
                  specifies how to format the date/time.</P>
                  <P>Here are some characters that can be used:</P>
                  <UL>
                    <LI>d - Represents the day of the month (01 to 31) </LI>
                    <LI>m - Represents a month (01 to 12)</LI>
                    <LI>Y - Represents a year (in four digits)</LI></UL>
                  <P>A list of all the characters that can be used in the 
                  <I>format</I> parameter, can be found in W3SCHOOL <A 
                  href="http://www.w3schools.com/PHP/php_ref_date.asp">PHP Date 
                  reference</A>.</P>
                  <P>Other characters, like"/", ".", or "-" can also be inserted 
                  between the letters to add additional formatting:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>echo date("Y/m/d") . "&lt;br 
                        /&gt;";<BR>echo date("Y.m.d") . "&lt;br /&gt;";<BR>echo 
                        date("Y-m-d")<BR>?&gt; </TD></TR></TBODY></TABLE>
                  <P>The output of the code above could be something like 
                  this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>2009/05/11<BR>2009.05.11<BR>2009-05-11 
                  </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>PHP Date() - Adding a Timestamp</H2>
                  <P>The optional <I>timestamp</I> parameter in the date() 
                  function specifies a timestamp. If you do not specify a 
                  timestamp, the current date and time will be used.</P>
                  <P>The mktime() function returns the Unix timestamp for a 
                  date.</P>
                  <P>The Unix timestamp contains the number of seconds between 
                  the Unix Epoch (January 1 1970 00:00:00 GMT) and the time 
                  specified.</P>
                  <H3>Syntax for mktime()</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>mktime(hour,minute,second,month,day,year,is_dst) 
                    </TD></TR></TBODY></TABLE>
                  <P>To go one day in the future we simply add one to the day 
                  argument of mktime():</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$tomorrow = 
                        mktime(0,0,0,date("m"),date("d")+1,date("Y"));<BR>echo 
                        "Tomorrow is ".date("Y/m/d", $tomorrow);<BR>?&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P>The output of the code above could be something like 
                  this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Tomorrow is 2009/05/12 </TD></TR></TBODY></TABLE><BR>
                  <HR>


 <H2>Server Side Includes (SSI)</H2>
                  <P>You can insert the content of one PHP file into another PHP 
                  file before the server executes it, with the include() or 
                  require() function.</P>
                  <P>The two functions are identical in every way, except how 
                  they handle errors:</P>
                  <UL>
                    <LI>include() generates a warning, but the script will 
                    continue execution</LI>
                    <LI>require() generates a fatal error, and the script will 
                    stop</LI></UL>
                  <P>These two functions are used to create functions, headers, 
                  footers, or elements that will be reused on multiple 
pages.</P>
                  <P>Server side includes saves a lot of work. This means that 
                  you can create a standard header, footer, or menu file for all 
                  your web pages. When the header needs to be updated, you can 
                  only update the include file, or when you add a new page to 
                  your site, you can simply change the menu file (instead of 
                  updating the links on all your web pages).</P>
                  <HR>

                  <H2>PHP include() Function</H2>
                  <P>The include() function takes all the content in a specified 
                  file and includes it in the current file.</P>
                  <P>If an error occurs, the include() function generates a 
                  warning, but the script will continue execution.</P>
                  <H3>Example 1</H3>
                  <P>Assume that you have a standard header file, called 
                  "header.php". To include the header file in a page, use the 
                  include() function:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php 
                        include("header.php"); ?&gt;<BR>&lt;h1&gt;Welcome to my 
                        home page!&lt;/h1&gt;<BR>&lt;p&gt;Some 
                        text.&lt;/p&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                    </TD></TR></TBODY></TABLE>
                  <H3>Example 2</H3>
                  <P>Assume we have a standard menu file, called "menu.php", 
                  that should be used on all pages:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;a href="/default.php"&gt;Home&lt;/a&gt;<BR>&lt;a 
                        href="/tutorials.php"&gt;Tutorials&lt;/a&gt;<BR>&lt;a 
                        href="/references.php"&gt;References&lt;/a&gt;<BR>&lt;a 
                        href="/examples.php"&gt;Examples&lt;/a&gt; <BR>&lt;a 
                        href="/about.php"&gt;About Us&lt;/a&gt; <BR>&lt;a 
                        href="/contact.php"&gt;Contact Us&lt;/a&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P>All pages in the Web site should include this menu file. 
                  Here is how it can be done:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;div 
                        class="leftmenu"&gt;<BR>&lt;?php include("menu.php"); 
                        ?&gt;<BR>&lt;/div&gt;<BR><BR>&lt;h1&gt;Welcome to my 
                        home page.&lt;/h1&gt;<BR>&lt;p&gt;Some 
                        text.&lt;/p&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P>If you look at the source code of the page above (in a 
                  browser), it will look like this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;div 
                        class="leftmenu"&gt;<BR>&lt;a 
                        href="/default.php"&gt;Home&lt;/a&gt;<BR>&lt;a 
                        href="/tutorials.php"&gt;Tutorials&lt;/a&gt;<BR>&lt;a 
                        href="/references.php"&gt;References&lt;/a&gt;<BR>&lt;a 
                        href="/examples.php"&gt;Examples&lt;/a&gt; <BR>&lt;a 
                        href="/about.php"&gt;About Us&lt;/a&gt; <BR>&lt;a 
                        href="/contact.php"&gt;Contact 
                        Us&lt;/a&gt;<BR>&lt;/div&gt;<BR><BR>&lt;h1&gt;Welcome to 
                        my home page!&lt;/h1&gt;<BR>&lt;p&gt;Some 
                        text.&lt;/p&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                    </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>PHP require() Function</H2>
                  <P>The require() function is identical to include(), except 
                  that it handles errors differently.</P>
                  <P>If an error occurs, the include() function generates a 
                  warning, but the script will continue execution. The require() 
                  generates a fatal error, and the script will stop.</P>
                  <H3>Error Example include() Function</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>include("wrongFile.php");<BR>echo 
                        "Hello 
                        World!";<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>Error message:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD><B>Warning:</B> include(wrongFile.php) 
                        [function.include]:<BR>failed to open stream:<BR>No such 
                        file or directory in C:\home\website\test.php on line 
                        5<BR><BR><B>Warning:</B> include() 
                        [function.include]:<BR>Failed opening 'wrongFile.php' 
                        for inclusion<BR>(include_path='.;C:\php5\pear')<BR>in 
                        C:\home\website\test.php on line 5<BR><BR>Hello World! 
                      </TD></TR></TBODY></TABLE>
                  <P>Notice that the echo statement is executed! This is because 
                  a Warning does not stop the script execution.</P>
                  <H3>Error Example require() Function</H3>
                  <P>Now, let's run the same example with the require() 
                  function.</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>require("wrongFile.php");<BR>echo 
                        "Hello 
                        World!";<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>Error message:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD><B>Warning:</B> require(wrongFile.php) 
                        [function.require]:<BR>failed to open stream:<BR>No such 
                        file or directory in C:\home\website\test.php on line 
                        5<BR><BR><B>Fatal error:</B> require() 
                        [function.require]:<BR>Failed opening required 
                        'wrongFile.php'<BR>(include_path='.;C:\php5\pear')<BR>in 
                        C:\home\website\test.php on line 5 </TD></TR></TBODY></TABLE>
                  <P>The echo statement is not executed, because the script 
                  execution stopped after the fatal error.</P>
                  <P>It is recommended to use the require() function instead of 
                  include(), because scripts should not continue after an 
                  error.</P><BR>

<HR>

                  <P class=intro>The fopen() function is used to open files in 
                  PHP.</P>
                  <HR>

                  <H2>Opening a File</H2>
                  <P>The fopen() function is used to open files in PHP.</P>
                  <P>The first parameter of this function contains the name of 
                  the file to be opened and the second parameter specifies in 
                  which mode the file should be opened:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>$file=fopen("welcome.txt","r");<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>The file may be opened in one of the following modes:</P>
                  <TABLE class=reference border=1 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR vAlign=top>
                      <TH width="20%" align=left>Modes</TH>
                      <TH width="80%" align=left>Description</TH></TR>
                    <TR vAlign=top>
                      <TD>r</TD>
                      <TD>Read only. Starts at the beginning of the file</TD></TR>
                    <TR vAlign=top>
                      <TD height=18>r+</TD>
                      <TD height=18>Read/Write. Starts at the beginning of the 
                        file</TD></TR>
                    <TR vAlign=top>
                      <TD>w</TD>
                      <TD>Write only. Opens and clears the contents of file; 
                        or creates a new file if it doesn't exist</TD></TR>
                    <TR vAlign=top>
                      <TD>w+</TD>
                      <TD>Read/Write. Opens and clears the contents of file; 
                        or creates a new file if it doesn't exist</TD></TR>
                    <TR vAlign=top>
                      <TD>a</TD>
                      <TD>Append. Opens and writes to the end of the file or 
                        creates a new file if it doesn't exist</TD></TR>
                    <TR>
                      <TD>a+</TD>
                      <TD>Read/Append. Preserves file content by writing to 
                        the end of the file</TD></TR>
                    <TR vAlign=top>
                      <TD>x</TD>
                      <TD>Write only. Creates a new file. Returns FALSE and an 
                        error if file already exists</TD></TR>
                    <TR vAlign=top>
                      <TD>x+</TD>
                      <TD>Read/Write. Creates a new file. Returns FALSE and an 
                        error if file already exists</TD></TR></TBODY></TABLE>
                  <P><B>Note:</B> If the fopen() function is unable to open the 
                  specified file, it returns 0 (false).</P>
                  <H3>Example</H3>
                  <P>The following example generates a message if the fopen() 
                  function is unable to open the specified file:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>$file=fopen("welcome.txt","r") 
                        or exit("Unable to open 
                        file!");<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>Closing a File</H2>
                  <P>The fclose() function is used to close an open file:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$file = 
                        fopen("test.txt","r");<BR><BR>//some code to be 
                        executed<BR><BR>fclose($file);<BR>?&gt; 
                  </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>Check End-of-file</H2>
                  <P>The feof() function checks if the "end-of-file" (EOF) has 
                  been reached.<BR><BR>The feof() function is useful for looping 
                  through data of unknown length.</P>
                  <P><B>Note:</B> You cannot read from files opened in w, a, and 
                  x mode!</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>if (feof($file)) echo "End of file"; 
                  </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>Reading a File Line by Line</H2>
                  <P>The fgets() function is used to read a single line from a 
                  file.</P>
                  <P><B>Note:</B> After a call to this function the file pointer 
                  has moved to the next line. </P>
                  <H3>Example</H3>
                  <P>The example below reads a file line by line, until the end 
                  of file is reached:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$file = fopen("welcome.txt", "r") or 
                        exit("Unable to open file!");<BR>//Output a line of the 
                        file until the end is 
                        reached<BR>while(!feof($file))<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 
                        fgets($file). "&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;}<BR>fclose($file);<BR>?&gt; 
                    </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>Reading a File Character by Character</H2>
                  <P>The fgetc() function is used to read a single character 
                  from a file.</P>
                  <P><B>Note:</B> After a call to this function the file pointer 
                  moves to the next character. </P>
                  <H3>Example</H3>
                  <P>The example below reads a file character by character, 
                  until the end of file is reached:</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$file=fopen("welcome.txt","r") or 
                        exit("Unable to open file!");<BR>while 
                        (!feof($file))<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 
                        fgetc($file);<BR>&nbsp;&nbsp;}<BR>fclose($file);<BR>?&gt; 
                      </TD></TR></TBODY></TABLE><BR>
                  <HR>
 <HR>

                  <P class=intro>With PHP, it is possible to upload files to the 
                  server.</P>
                  <HR>

                  <H2>Create an Upload-File Form</H2>
                  <P>To allow users to upload files from a form can be very 
                  useful. </P>
                  <P>Look at the following HTML form for uploading files:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;form 
                        action="upload_file.php" 
                        method="post"<BR>enctype="multipart/form-data"&gt;<BR>&lt;label 
                        for="file"&gt;Filename:&lt;/label&gt;<BR>&lt;input 
                        type="file" name="file" id="file" /&gt; <BR>&lt;br 
                        /&gt;<BR>&lt;input type="submit" name="submit" 
                        value="Submit" 
                        /&gt;<BR>&lt;/form&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>Notice the following about the HTML form above:</P>
                  <UL>
                    <LI>The enctype attribute of the &lt;form&gt; tag specifies 
                    which content-type to use when submitting the form. 
                    "multipart/form-data" is used when a form requires binary 
                    data, like the contents of a file, to be uploaded</LI>
                    <LI>The type="file" attribute of the &lt;input&gt; tag 
                    specifies that the input should be processed as a file. For 
                    example, when viewed in a browser, there will be a 
                    browse-button next to the input field</LI></UL>
                  <P><B>Note:</B> Allowing users to upload files is a big 
                  security risk. Only permit trusted users to perform file 
                  uploads.<BR></P>
                  <HR>

                  <H2>Create The Upload Script</H2>
                  <P>The "upload_file.php" file contains the code for uploading 
                  a file:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>if ($_FILES["file"]["error"] &gt; 
                        0)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo "Error: " . 
                        $_FILES["file"]["error"] . "&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;}<BR>else<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 
                        "Upload: " . $_FILES["file"]["name"] . "&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;echo "Type: " . 
                        $_FILES["file"]["type"] . "&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;echo "Size: " . 
                        ($_FILES["file"]["size"] / 1024) . " Kb&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;echo "Stored in: " . 
                        $_FILES["file"]["tmp_name"];<BR>&nbsp;&nbsp;}<BR>?&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>By using the global PHP $_FILES array you can upload files 
                  from a client computer to the remote server.</P>
                  <P>The first parameter is the form's input name and the second 
                  index can be either "name", "type", "size", "tmp_name" or 
                  "error". Like this:</P>
                  <UL>
                    <LI>$_FILES["file"]["name"] - the name of the uploaded 
                    file</LI>
                    <LI>$_FILES["file"]["type"] - the type of the uploaded 
                    file</LI>
                    <LI>$_FILES["file"]["size"] - the size in bytes of the 
                    uploaded file</LI>
                    <LI>$_FILES["file"]["tmp_name"] - the name of the temporary 
                    copy of the file stored on the server</LI>
                    <LI>$_FILES["file"]["error"] - the error code resulting from 
                    the file upload</LI></UL>
                  <P>This is a very simple way of uploading files. For security 
                  reasons, you should add restrictions on what the user is 
                  allowed to upload.<BR></P>
                  <HR>

                  <H2>Restrictions on Upload</H2>
                  <P>In this script we add some restrictions to the file upload. 
                  The user may only upload .gif or .jpeg files and the file size 
                  must be under 20 kb:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>if ((($_FILES["file"]["type"] == 
                        "image/gif")<BR>|| ($_FILES["file"]["type"] == 
                        "image/jpeg")<BR>|| ($_FILES["file"]["type"] == 
                        "image/pjpeg"))<BR>&amp;&amp; ($_FILES["file"]["size"] 
                        &lt; 20000))<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;if 
                        ($_FILES["file"]["error"] &gt; 
                        0)<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo 
                        "Error: " . $_FILES["file"]["error"] . "&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;else<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo 
                        "Upload: " . $_FILES["file"]["name"] . "&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo "Type: " . 
                        $_FILES["file"]["type"] . "&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo "Size: " . 
                        ($_FILES["file"]["size"] / 1024) . " Kb&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo "Stored in: " . 
                        $_FILES["file"]["tmp_name"];<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;}<BR>else<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 
                        "Invalid file";<BR>&nbsp;&nbsp;}<BR>?&gt; 
                  </TD></TR></TBODY></TABLE>
                  <P><B>Note:</B> For IE to recognize jpg files the type must be 
                  pjpeg, for FireFox it must be jpeg.</P>
                  <HR>

                  <H2>Saving the Uploaded File</H2>
                  <P>The examples above create a temporary copy of the uploaded 
                  files in the PHP temp folder on the server.</P>
                  <P>The temporary copied files disappears when the script ends. 
                  To store the uploaded file we need to copy it to a different 
                  location:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>if ((($_FILES["file"]["type"] == 
                        "image/gif")<BR>|| ($_FILES["file"]["type"] == 
                        "image/jpeg")<BR>|| ($_FILES["file"]["type"] == 
                        "image/pjpeg"))<BR>&amp;&amp; ($_FILES["file"]["size"] 
                        &lt; 20000))<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;if 
                        ($_FILES["file"]["error"] &gt; 
                        0)<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo 
                        "Return Code: " . $_FILES["file"]["error"] . "&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;else<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo 
                        "Upload: " . $_FILES["file"]["name"] . "&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo "Type: " . 
                        $_FILES["file"]["type"] . "&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo "Size: " . 
                        ($_FILES["file"]["size"] / 1024) . " Kb&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo "Temp file: " . 
                        $_FILES["file"]["tmp_name"] . "&lt;br 
                        /&gt;";<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;if 
                        (file_exists("upload/" . 
                        $_FILES["file"]["name"]))<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo 
                        $_FILES["file"]["name"] . " already exists. 
                        ";<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;&nbsp;&nbsp;else<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;move_uploaded_file($_FILES["file"]["tmp_name"],<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"upload/" 
                        . 
                        $_FILES["file"]["name"]);<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo 
                        "Stored in: " . "upload/" . 
                        $_FILES["file"]["name"];<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;}<BR>else<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 
                        "Invalid file";<BR>&nbsp;&nbsp;}<BR>?&gt; 
                  </TD></TR></TBODY></TABLE>
                  <P>The script above checks if the file already exists, if it 
                  does not, it copies the file to the specified folder.</P>
                  <P><B>Note:</B> This example saves the file to a new folder 
                  called "upload"</P><BR>

<HR>

                  <P class=intro>A cookie is often used to identify a user.</P>
                  <HR>

                  <H2>What is a Cookie? </H2>
                  <P>A cookie is often used to identify a user. A cookie is a 
                  small file that the server embeds on the user's computer. Each 
                  time the same computer requests a page with a browser, it will 
                  send the cookie too. With PHP, you can both create and 
                  retrieve cookie values.</P>
                  <HR>

                  <H2>How to Create a Cookie?</H2>
                  <P>The setcookie() function is used to set a cookie.</P>
                  <P><B>Note:</B> The setcookie() function must appear BEFORE 
                  the &lt;html&gt; tag. </P>
                  <H3>Syntax</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>setcookie(name, value, expire, path, domain); 
                    </TD></TR></TBODY></TABLE>
                  <H3>Example 1</H3>
                  <P>In the example below, we will create a cookie named "user" 
                  and assign the value "Alex Porter" to it. We also specify that 
                  the cookie should expire after one hour:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>setcookie("user", "Alex Porter", 
                        time()+3600);<BR>?&gt;<BR><BR>&lt;html&gt;<BR>..... 
                    </TD></TR></TBODY></TABLE>
                  <P><B>Note: </B>The value of the cookie is automatically 
                  URLencoded when sending the cookie, and automatically decoded 
                  when received (to prevent URLencoding, use setrawcookie() 
                  instead).</P>
                  <H3>Example 2</H3>
                  <P>You can also set the expiration time of the cookie in 
                  another way. It may be easier than using seconds.</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$expire=time()+60*60*24*30;<BR>setcookie("user", 
                        "Alex Porter", 
                        $expire);<BR>?&gt;<BR><BR>&lt;html&gt;<BR>..... 
                    </TD></TR></TBODY></TABLE>
                  <P>In the example above the expiration time is set to a month 
                  (<I>60 sec * 60 min * 24 hours * 30 days</I>).</P>
                  <HR>

                  <H2>How to Retrieve a Cookie Value?</H2>
                  <P>The PHP $_COOKIE variable is used to retrieve a cookie 
                  value. <BR><BR>In the example below, we retrieve the value of 
                  the cookie named "user" and display it on a page:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>// Print a cookie<BR>echo 
                        $_COOKIE["user"];<BR><BR>// A way to view all 
                        cookies<BR>print_r($_COOKIE);<BR>?&gt; 
                  </TD></TR></TBODY></TABLE>
                  <P>In the following example we use the isset() function to 
                  find out if a cookie has been set:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>if 
                        (isset($_COOKIE["user"]))<BR>&nbsp;&nbsp;echo "Welcome " 
                        . $_COOKIE["user"] . "!&lt;br 
                        /&gt;";<BR>else<BR>&nbsp;&nbsp;echo "Welcome 
                        guest!&lt;br 
                        /&gt;";<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>How to Delete a Cookie?</H2>
                  <P>When deleting a cookie you should assure that the 
                  expiration date is in the past.</P>
                  <P>Delete example:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>// set the expiration date to one hour 
                        ago<BR>setcookie("user", "", time()-3600);<BR>?&gt; 
                    </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>What if a Browser Does NOT Support Cookies?</H2>
                  <P>If your application deals with browsers that do not support 
                  cookies, you will have to use other methods to pass 
                  information from one page to another in your application. One 
                  method is to pass the data through forms (forms and user input 
                  are described earlier in this tutorial).</P>
                  <P>The form below passes the user input to "welcome.php" when 
                  the user clicks on the "Submit" button:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;form 
                        action="welcome.php" method="post"&gt;<BR>Name: 
                        &lt;input type="text" name="name" /&gt;<BR>Age: 
                        &lt;input type="text" name="age" /&gt;<BR>&lt;input 
                        type="submit" 
                        /&gt;<BR>&lt;/form&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>Retrieve the values in the "welcome.php" file like 
this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>Welcome &lt;?php 
                        echo $_POST["name"]; ?&gt;.&lt;br /&gt;<BR>You are 
                        &lt;?php echo $_POST["age"]; ?&gt; years 
                        old.<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                  </TD></TR></TBODY></TABLE><BR>
<span class="text"><br />
                                                            <hr align="center" width="300" />
                                                            </span></p>
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
            <DIV align=right style="color: #00FF00">
                <asp:LinkButton ID="LinkButton8" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/PHP_Contents.aspx">Back to PHPContents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_L4.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_L6.aspx">Next &gt;&gt;</asp:LinkButton>
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
