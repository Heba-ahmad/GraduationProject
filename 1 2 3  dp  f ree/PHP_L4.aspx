<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="PHP_L4.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>PHP Tutorial 4 : Functions, PHP Forms, PHP $_GET & PHP $_POST
</TITLE>
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
        DestinationPageUrl="~/PHP_L4.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                                                PostBackUrl="~/PHP_L3.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/PHP_Contents.aspx">Back to PHP Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_L5.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 4 - PHP Functions,<br /> 
        PHP Forms, PHP $_GET & PHP $_POST</H2>
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
                                                            PHP Functions</div>
                                                        <HR>

                  <P class=intro>The real power of PHP comes from its 
                  functions.</P>
                  <P class=intro>In PHP, there are more than 700 built-in 
                  functions.</P>
                  <HR>

                  <H2>PHP Built-in Functions</H2>
                  <P>For a complete reference and examples of the built-in 
                  functions, please visit our <A 
                  href="http://www.w3schools.com/PHP/default.asp">PHP 
                  Reference.</A></P>
                  <HR>

                  <H2>PHP Functions</H2>
                  <P>In this chapter we will show you how to create your own 
                  functions.</P>
                  <P>To keep the script from being executed when the page loads, 
                  you can put it into a function.</P>
                  <P>A function will be executed by a call to the function.</P>
                  <P>You may call a function from anywhere within a page.</P>
                  <HR>

                  <H2>Create a PHP Function</H2>
                  <P>A function will be executed by a call to the function.</P>
                  <H3>Syntax</H3>
                  <TABLE id=table1 class=code border=3 cellSpacing=0 
                  cellPadding=0 width="100%">
                    <TBODY>
                    <TR>
                      <TD>function <I>functionName</I>()<BR>{<BR><I>code to be 
                        executed</I>;<BR>}</TD></TR></TBODY></TABLE>
                  <P>PHP function guidelines:</P>
                  <UL>
                    <LI>Give the function a name that reflects what the function 
                    does</LI>
                    <LI>The function name can start with a letter or underscore 
                    (not a number)</LI></UL>
                  <H3>Example</H3>
                  <P>A simple function that writes my name when it is 
called:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>function 
                        writeName()<BR>{<BR>echo "Kai Jim 
                        Refsnes";<BR>}<BR><BR>echo "My name is 
                        ";<BR>writeName();<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>Output:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>My name is Kai Jim Refsnes</TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>PHP Functions - Adding parameters</H2>
                  <P>To add more functionality to a function, we can add 
                  parameters. A parameter is just like a variable.</P>
                  <P>Parameters are specified after the function name, inside 
                  the parentheses.</P>
                  <H3>Example 1</H3>
                  <P>The following example will write different first names, but 
                  equal last name:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>function 
                        writeName($fname)<BR>{<BR>echo $fname . " Refsnes.&lt;br 
                        /&gt;";<BR>}<BR><BR>echo "My name is 
                        ";<BR>writeName("Kai Jim");<BR>echo "My sister's name is 
                        ";<BR>writeName("Hege");<BR>echo "My brother's name is 
                        ";<BR>writeName("Stale");<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>Output:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>My name is Kai Jim Refsnes.<BR>My sister's name is 
                        Hege Refsnes.<BR>My brother's name is Stale Refsnes. 
                    </TD></TR></TBODY></TABLE>
                  <H3>Example 2</H3>
                  <P>The following function has two parameters:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>function 
                        writeName($fname,$punctuation)<BR>{<BR>echo $fname . " 
                        Refsnes" . $punctuation . "&lt;br 
                        /&gt;";<BR>}<BR><BR>echo "My name is 
                        ";<BR>writeName("Kai Jim",".");<BR>echo "My sister's 
                        name is ";<BR>writeName("Hege","!");<BR>echo "My 
                        brother's name is 
                        ";<BR>writeName("Stهle","?");<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>Output:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>My name is Kai Jim Refsnes.<BR>My sister's name is 
                        Hege Refsnes!<BR>My brother's name is Stهle Refsnes? 
                    </TD></TR></TBODY></TABLE>&nbsp;
                  <HR>
                   
                  <H2>PHP Functions - Return values</H2>
                  <P>To let a function return a value, use the return 
                  statement.</P>
                  <H3>Example</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>function 
                        add($x,$y)<BR>{<BR>$total=$x+$y;<BR>return 
                        $total;<BR>}<BR><BR>echo "1 + 16 = " . 
                        add(1,16);<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>Output:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>1 + 16 = 17</TD></TR></TBODY></TABLE><BR>

<HR>

                  <P class=intro>The PHP $_GET and $_POST variables are used to 
                  retrieve information from forms, like user input.</P>
                  <HR>

                  <H2>PHP Form Handling</H2>
                  <P>The most important thing to notice when dealing with HTML 
                  forms and PHP is that any form element in an HTML page will 
                  <B>automatically</B> be available to your PHP scripts.</P>
                  <H3>Example</H3>
                  <P>The example below contains an HTML form with two input 
                  fields and a submit button:</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;form 
                        action="welcome.php" method="post"&gt;<BR>Name: 
                        &lt;input type="text" name="fname" /&gt;<BR>Age: 
                        &lt;input type="text" name="age" /&gt;<BR>&lt;input 
                        type="submit" 
                        /&gt;<BR>&lt;/form&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>When a user fills out the form above and click on the 
                  submit button, the form data is sent to a PHP file, called 
                  "welcome.php":</P>
                  <P>"welcome.php" looks like this:</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>Welcome &lt;?php 
                        echo $_POST["fname"]; ?&gt;!&lt;br /&gt;<BR>You are 
                        &lt;?php echo $_POST["age"]; ?&gt; years 
                        old.<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                  </TD></TR></TBODY></TABLE>
                  <P>Output could be something like this:</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Welcome John!<BR>You are 28 years 
                  old.</TD></TR></TBODY></TABLE>
                  <P>The PHP $_GET and $_POST functions will be explained in the 
                  next chapters.</P>
                  <HR>

                  <H2>Form Validation</H2>
                  <P>User input should be validated on the browser whenever 
                  possible (by client scripts). Browser validation is faster and 
                  reduces the server load.</P>
                  <P>You should consider server validation if the user input 
                  will be inserted into a database. A good way to validate a 
                  form on the server is to post the form to itself, instead of 
                  jumping to a different page. The user will then get the error 
                  messages on the same page as the form. This makes it easier to 
                  discover the error.</P><BR>

<HR>

                  <P class=intro>The built-in $_GET function is used to collect 
                  values in a form with method="get".</P>
                  <HR>

                  <H2>The $_GET Function</H2>
                  <P>The built-in $_GET function is used to collect values from 
                  a form sent with method="get".</P>
                  <P>Information sent from a form with the GET method is visible 
                  to everyone (it will be displayed in the browser's address 
                  bar) and has limits on the amount of information to send (max. 
                  100 characters).</P>
                  <H3>Example</H3>
                  <TABLE id=table1 class=code border=3 cellSpacing=0 
                  cellPadding=0 width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;form action="welcome.php" 
                        method="get"&gt;<BR>Name: &lt;input type="text" 
                        name="fname" /&gt;<BR>Age: &lt;input type="text" 
                        name="age" /&gt;<BR>&lt;input type="submit" 
                        /&gt;<BR>&lt;/form&gt; </TD></TR></TBODY></TABLE>
                  <P>When the user clicks the "Submit" button, the URL sent to 
                  the server could look something like this:</P>
                  <TABLE id=table2 class=code border=3 cellSpacing=0 
                  cellPadding=0 width="100%">
                    <TBODY>
                    <TR>
                      <TD>http://www.w3schools.com/welcome.php?fname=Peter&amp;age=37 
                      </TD></TR></TBODY></TABLE>
                  <P>The "welcome.php" file can now use the $_GET function to 
                  collect form data (the names of the form fields will 
                  automatically be the keys in the $_GET array):</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Welcome &lt;?php echo $_GET["fname"]; ?&gt;.&lt;br 
                        /&gt;<BR>You are &lt;?php echo $_GET["age"]; ?&gt; years 
                        old! </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>When to use method="get"?</H2>
                  <P>When using method="get" in HTML forms, all variable names 
                  and values are displayed in the URL.</P>
                  <P><B>Note:</B> This method should not be used when sending 
                  passwords or other sensitive information!</P>
                  <P>However, because the variables are displayed in the URL, it 
                  is possible to bookmark the page. This can be useful in some 
                  cases.</P>
                  <P><B>Note:</B> The get method is not suitable for large 
                  variable values; the value cannot exceed 100 
                  characters.<BR></P><BR>

<HR>

                  <P class=intro>The built-in $_POST function is used to collect 
                  values in a form with method="post".</P>
                  <HR>

                  <H2>The $_POST Function</H2>
                  <P>The built-in $_POST function is used to collect values from 
                  a form sent with method="post".</P>
                  <P>Information sent from a form with the POST method is 
                  invisible to others and has no limits on the amount of 
                  information to send.</P>
                  <P><B>Note:</B> However, there is an 8 Mb max size for the 
                  POST method, by default (can be changed by setting the 
                  post_max_size in the php.ini file).</P>
                  <H3>Example</H3>
                  <TABLE id=table1 class=code border=3 cellSpacing=0 
                  cellPadding=0 width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;form action="welcome.php" 
                        method="post"&gt;<BR>Name: &lt;input type="text" 
                        name="fname" /&gt;<BR>Age: &lt;input type="text" 
                        name="age" /&gt;<BR>&lt;input type="submit" 
                        /&gt;<BR>&lt;/form&gt; </TD></TR></TBODY></TABLE>
                  <P>When the user clicks the "Submit" button, the URL will look 
                  like this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>http://www.w3schools.com/welcome.php 
                  </TD></TR></TBODY></TABLE>
                  <P>The "welcome.php" file can now use the $_POST function to 
                  collect form data (the names of the form fields will 
                  automatically be the keys in the $_POST array):</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Welcome &lt;?php echo $_POST["fname"]; ?&gt;!&lt;br 
                        /&gt;<BR>You are &lt;?php echo $_POST["age"]; ?&gt; 
                        years old.</TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>When to use method="post"?</H2>
                  <P>Information sent from a form with the POST method is 
                  invisible to others and has no limits on the amount of 
                  information to send.</P>
                  <P>However, because the variables are not displayed in the 
                  URL, it is not possible to bookmark the page.</P>
                  <HR>

                  <H2>The PHP $_REQUEST Function</H2>
                  <P>The PHP built-in $_REQUEST function contains the contents 
                  of both $_GET, $_POST, and $_COOKIE.</P>
                  <P>The $_REQUEST function can be used to collect form data 
                  sent with both the GET and POST methods.</P>
                  <H3>Example</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Welcome &lt;?php echo $_REQUEST["fname"]; 
                        ?&gt;!&lt;br /&gt;<BR>You are &lt;?php echo 
                        $_REQUEST["age"]; ?&gt; years 
                  old.</TD></TR></TBODY></TABLE><BR>
                                                            &nbsp;<span class="text"><br />
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
                                                PostBackUrl="~/PHP_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_L4.aspx">Next &gt;&gt;</asp:LinkButton>
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
