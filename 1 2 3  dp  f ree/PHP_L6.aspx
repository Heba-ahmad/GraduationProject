<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="PHP_L6.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>PHP Tutorial 6: PHP Sessions, PHP E-mail, PHP Secure E-mail, PHP Error, PHP Exception & PHP Filter </TITLE>
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
                                                PostBackUrl="~/PHP_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/PHP_Contents.aspx">Back to PHP Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 6 - PHP Sessions,<br /> E-mail, Secure E-mail, Error, Exception & Filter</H2>
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
                      PHP Sessions<br /></div>
                      
                      
                                                       
                                                       <span class="text"><br />
                                                            <hr align="center" width="300" />
                                                            </span></p>
                                                            
                                                            <HR>

                  <P class=intro>A PHP session variable is used to store 
                  information about, or change settings for a user session. 
                  Session variables hold information about one single user, and 
                  are available to all pages in one application.</P>
                  <HR>

                  <H2>PHP Session Variables</H2>
                  <P>When you are working with an application, you open it, do 
                  some changes and then you close it. This is much like a 
                  Session. The computer knows who you are. It knows when you 
                  start the application and when you end. But on the internet 
                  there is one problem: the web server does not know who you are 
                  and what you do because the HTTP address doesn't maintain 
                  state.</P>
                  <P>A PHP session solves this problem by allowing you to store 
                  user information on the server for later use (i.e. username, 
                  shopping items, etc). However, session information is 
                  temporary and will be deleted after the user has left the 
                  website. If you need a permanent storage you may want to store 
                  the data in a database.</P>
                  <P>Sessions work by creating a unique id (UID) for each 
                  visitor and store variables based on this UID. The UID is 
                  either stored in a cookie or is propagated in the URL.</P>
                  <HR>

                  <H2>Starting a PHP Session</H2>
                  <P>Before you can store user information in your PHP session, 
                  you must first start up the session.</P>
                  <P><B>Note:</B> The session_start() function must appear 
                  BEFORE the &lt;html&gt; tag:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php session_start(); 
                        ?&gt;<BR><BR>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>The code above will register the user's session with the 
                  server, allow you to start saving user information, and assign 
                  a UID for that user's session.</P>
                  <HR>

                  <H2>Storing a Session Variable</H2>
                  <P>The correct way to store and retrieve session variables is 
                  to use the PHP $_SESSION variable:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>session_start();<BR>// store session 
                        data<BR>$_SESSION['views']=1;<BR>?&gt;<BR><BR>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>//retrieve 
                        session data<BR>echo "Pageviews=". 
                        $_SESSION['views'];<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>Output:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Pageviews=1 </TD></TR></TBODY></TABLE>
                  <P>In the example below, we create a simple page-views 
                  counter. The isset() function checks if the "views" variable 
                  has already been set. If "views" has been set, we can 
                  increment our counter. If "views" doesn't exist, we create a 
                  "views" variable, and set it to 1:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>session_start();<BR><BR>if(isset($_SESSION['views']))<BR>$_SESSION['views']=$_SESSION['views']+1;<BR>else<BR>$_SESSION['views']=1;<BR>echo 
                        "Views=". $_SESSION['views'];<BR>?&gt; 
                  </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>Destroying a Session</H2>
                  <P>If you wish to delete some session data, you can use the 
                  unset() or the session_destroy() function.</P>
                  <P>The unset() function is used to free the specified session 
                  variable:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>unset($_SESSION['views']);<BR>?&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P>You can also completely destroy the session by calling the 
                  session_destroy() function:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>session_destroy();<BR>?&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P><B>Note:</B> session_destroy() will reset your session and 
                  you will lose all your stored session data.</P><BR>
                                                            
                      
                                                       
                                                       <span class="text">
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            </span>
                 

<div align="center" class="headline" 
                     style="font-size: 22px; font-weight: bold; color: #800000">
                      PHP Sending E-mails<br /></div> <br />
                                                                                  
                      
                                                       
                                                       <span class="text">
                                                            <hr align="center" width="300" />
                                                            </span>
                 
 <P class=intro>PHP allows you to send e-mails directly from a 
                  script.</P>
                  <HR>

                  <H2>The PHP mail() Function</H2>
                  <P>The PHP mail() function is used to send emails from inside 
                  a script.</P>
                  <P><B>Syntax</B></P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>mail(to,subject,message,headers,parameters) 
                    </TD></TR></TBODY></TABLE><BR>
                  <TABLE class=reference border=1 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TH vAlign=top width="20%" align=left>Parameter</TH>
                      <TH vAlign=top width="80%" align=left>Description</TH></TR>
                    <TR>
                      <TD vAlign=top>to</TD>
                      <TD vAlign=top>Required. Specifies the receiver / 
                        receivers of the email</TD></TR>
                    <TR>
                      <TD vAlign=top>subject</TD>
                      <TD vAlign=top>Required. Specifies the subject of the 
                        email. <B>Note:</B> This parameter cannot contain any 
                        newline characters</TD></TR>
                    <TR>
                      <TD vAlign=top>message</TD>
                      <TD vAlign=top>Required. Defines the message to be sent. 
                        Each line should be separated with a LF (\n). Lines 
                        should not exceed 70 characters</TD></TR>
                    <TR>
                      <TD vAlign=top>headers</TD>
                      <TD vAlign=top>Optional. Specifies additional headers, 
                        like From, Cc, and Bcc. The additional headers should be 
                        separated with a CRLF (\r\n)</TD></TR>
                    <TR>
                      <TD vAlign=top>parameters</TD>
                      <TD vAlign=top>Optional. Specifies an additional 
                        parameter to the sendmail program</TD></TR></TBODY></TABLE>
                  <P><B>Note:</B> For the mail functions to be available, PHP 
                  requires an installed and working email system. The program to 
                  be used is defined by the configuration settings in the 
                  php.ini file. Read more in our <A 
                  href="http://www.w3schools.com/PHP/php_ref_mail.asp">PHP Mail 
                  reference</A>.</P>
                  <HR>

                  <H2>PHP Simple E-Mail</H2>
                  <P>The simplest way to send an email with PHP is to send a 
                  text email.</P>
                  <P>In the example below we first declare the variables ($to, 
                  $subject, $message, $from, $headers), then we use the 
                  variables in the mail() function to send an e-mail:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$to = "someone@example.com";<BR>$subject 
                        = "Test mail";<BR>$message = "Hello! This is a simple 
                        email message.";<BR>$from = 
                        "someonelse@example.com";<BR>$headers = "From: 
                        $from";<BR>mail($to,$subject,$message,$headers);<BR>echo 
                        "Mail Sent.";<BR>?&gt; </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>PHP Mail Form</H2>
                  <P>With PHP, you can create a feedback-form on your website. 
                  The example below sends a text message to a specified e-mail 
                  address:</P>
                  <TABLE class=code border= 1 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>if 
                        (isset($_REQUEST['email']))<BR>//if "email" is filled 
                        out, send email<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;//send 
                        email<BR>&nbsp;&nbsp;$email = $_REQUEST['email'] 
                        ;<BR>&nbsp;&nbsp;$subject = $_REQUEST['subject'] 
                        ;<BR>&nbsp;&nbsp;$message = $_REQUEST['message'] 
                        ;<BR>&nbsp;&nbsp;mail( "someone@example.com", "Subject: 
                        $subject",<BR>&nbsp;&nbsp;$message, "From: $email" 
                        );<BR>&nbsp;&nbsp;echo "Thank you for using our mail 
                        form";<BR>&nbsp;&nbsp;}<BR>else<BR>//if "email" is not 
                        filled out, display the 
                        form<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo "&lt;form 
                        method='post' 
                        action='mailform.php'&gt;<BR>&nbsp;&nbsp;Email: 
                        &lt;input name='email' type='text' /&gt;&lt;br 
                        /&gt;<BR>&nbsp;&nbsp;Subject: &lt;input name='subject' 
                        type='text' /&gt;&lt;br 
                        /&gt;<BR>&nbsp;&nbsp;Message:&lt;br 
                        /&gt;<BR>&nbsp;&nbsp;&lt;textarea name='message' 
                        rows='15' 
                        cols='40'&gt;<BR>&nbsp;&nbsp;&lt;/textarea&gt;&lt;br 
                        /&gt;<BR>&nbsp;&nbsp;&lt;input type='submit' 
                        /&gt;<BR>&nbsp;&nbsp;&lt;/form&gt;";<BR>&nbsp;&nbsp;}<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE><BR>This is how the example above 
                  works:
                  <UL>
                    <LI>First, check if the email input field is filled out</LI>
                    <LI>If it is not set (like when the page is first visited); 
                    output the HTML form</LI>
                    <LI>If it is set (after the form is filled out); send the 
                    email from the form</LI>
                    <LI>When submit is pressed after the form is filled out, the 
                    page reloads, sees that the email input is set, and sends 
                    the email</LI></UL>
                  <P><B>Note:</B> This is the simplest way to send e-mail, but 
                  it is not secure. In the next chapter of this tutorial you can 
                  read more about vulnerabilities in e-mail scripts, and how to 
                  validate user input to make it more secure.</P>
                  <HR>

                  <H2>PHP Mail Reference</H2>
                  <P>For more information about the PHP mail() function, visit 
                  W3SCHOOL <A 
                  href="http://www.w3schools.com/PHP/php_ref_mail.asp">PHP Mail 
                  Reference</A>.</P><BR>

                      <span class="text"><br />
                                                            <hr align="center" width="300" />
                                                            </span></p>
                     <div align="center" class="headline" 
                     style="font-size: 22px; font-weight: bold; color: #800000">
                      PHP Secure E-mail<br /></div>
                      
                      
                                                       
                                                       <span class="text"><br />
                                                            <hr align="center" width="300" />
                                                            </span></p>    
                      
                      
                                                        <HR>

                  <P class=intro>There is a weakness in the PHP e-mail script in 
                  the previous chapter.</P>
                  <HR>

                  <H2>PHP E-mail Injections</H2>
                  <P>First, look at the PHP code from the previous chapter:</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>if 
                        (isset($_REQUEST['email']))<BR>//if "email" is filled 
                        out, send email<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;//send 
                        email<BR>&nbsp;&nbsp;$email = $_REQUEST['email'] 
                        ;<BR>&nbsp;&nbsp;$subject = $_REQUEST['subject'] 
                        ;<BR>&nbsp;&nbsp;$message = $_REQUEST['message'] 
                        ;<BR>&nbsp;&nbsp;mail("someone@example.com", "Subject: 
                        $subject",<BR>&nbsp;&nbsp;$message, "From: $email" 
                        );<BR>&nbsp;&nbsp;echo "Thank you for using our mail 
                        form";<BR>&nbsp;&nbsp;}<BR>else<BR>//if "email" is not 
                        filled out, display the 
                        form<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo "&lt;form 
                        method='post' 
                        action='mailform.php'&gt;<BR>&nbsp;&nbsp;Email: 
                        &lt;input name='email' type='text' /&gt;&lt;br 
                        /&gt;<BR>&nbsp;&nbsp;Subject: &lt;input name='subject' 
                        type='text' /&gt;&lt;br 
                        /&gt;<BR>&nbsp;&nbsp;Message:&lt;br 
                        /&gt;<BR>&nbsp;&nbsp;&lt;textarea name='message' 
                        rows='15' 
                        cols='40'&gt;<BR>&nbsp;&nbsp;&lt;/textarea&gt;&lt;br 
                        /&gt;<BR>&nbsp;&nbsp;&lt;input type='submit' 
                        /&gt;<BR>&nbsp;&nbsp;&lt;/form&gt;";<BR>&nbsp;&nbsp;}<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>The problem with the code above is that unauthorized users 
                  can insert data into the mail headers via the input form.</P>
                  <P>What happens if the user adds the following text to the 
                  email input field in the form?</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>someone@example.com%0ACc:person2@example.com<BR>%0ABcc:person3@example.com,person3@example.com,<BR>anotherperson4@example.com,person5@example.com<BR>%0ABTo:person6@example.com 
                      </TD></TR></TBODY></TABLE>
                  <P>The mail() function puts the text above into the mail 
                  headers as usual, and now the header has an extra Cc:, Bcc:, 
                  and To: field. When the user clicks the submit button, the 
                  e-mail will be sent to all of the addresses above!</P>
                  <HR>

                  <H2>PHP Stopping E-mail Injections</H2>
                  <P>The best way to stop e-mail injections is to validate the 
                  input.</P>
                  <P>The code below is the same as in the previous chapter, but 
                  now we have added an input validator that checks the email 
                  field in the form:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR>&lt;?php<BR>function 
                        spamcheck($field)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;//filter_var() 
                        sanitizes the e-mail<BR>&nbsp;&nbsp;//address using 
                        FILTER_SANITIZE_EMAIL<BR>&nbsp;&nbsp;$field=filter_var($field, 
                        FILTER_SANITIZE_EMAIL);<BR><BR>&nbsp;&nbsp;//filter_var() 
                        validates the e-mail<BR>&nbsp;&nbsp;//address using 
                        FILTER_VALIDATE_EMAIL<BR>&nbsp;&nbsp;if(filter_var($field, 
                        FILTER_VALIDATE_EMAIL))<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;return 
                        TRUE;<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;else<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;return 
                        FALSE;<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;}<BR><BR>if 
                        (isset($_REQUEST['email']))<BR>&nbsp;&nbsp;{//if "email" 
                        is filled out, proceed<BR><BR>&nbsp;&nbsp;//check if the 
                        email address is invalid<BR>&nbsp;&nbsp;$mailcheck = 
                        spamcheck($_REQUEST['email']);<BR>&nbsp;&nbsp;if 
                        ($mailcheck==FALSE)<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo 
                        "Invalid 
                        input";<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;else<BR>&nbsp;&nbsp;&nbsp;&nbsp;{//send 
                        email<BR>&nbsp;&nbsp;&nbsp;&nbsp;$email = 
                        $_REQUEST['email'] ;<BR>&nbsp;&nbsp;&nbsp;&nbsp;$subject 
                        = $_REQUEST['subject'] 
                        ;<BR>&nbsp;&nbsp;&nbsp;&nbsp;$message = 
                        $_REQUEST['message'] 
                        ;<BR>&nbsp;&nbsp;&nbsp;&nbsp;mail("someone@example.com", 
                        "Subject: 
                        $subject",<BR>&nbsp;&nbsp;&nbsp;&nbsp;$message, "From: 
                        $email" );<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo "Thank you 
                        for using our mail 
                        form";<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;}<BR>else<BR>&nbsp;&nbsp;{//if 
                        "email" is not filled out, display the 
                        form<BR>&nbsp;&nbsp;echo "&lt;form method='post' 
                        action='mailform.php'&gt;<BR>&nbsp;&nbsp;Email: 
                        &lt;input name='email' type='text' /&gt;&lt;br 
                        /&gt;<BR>&nbsp;&nbsp;Subject: &lt;input name='subject' 
                        type='text' /&gt;&lt;br 
                        /&gt;<BR>&nbsp;&nbsp;Message:&lt;br 
                        /&gt;<BR>&nbsp;&nbsp;&lt;textarea name='message' 
                        rows='15' 
                        cols='40'&gt;<BR>&nbsp;&nbsp;&lt;/textarea&gt;&lt;br 
                        /&gt;<BR>&nbsp;&nbsp;&lt;input type='submit' 
                        /&gt;<BR>&nbsp;&nbsp;&lt;/form&gt;";<BR>&nbsp;&nbsp;}<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>In the code above we use PHP filters to validate input:</P>
                  <UL>
                    <LI>The FILTER_SANITIZE_EMAIL filter removes all illegal 
                    e-mail characters from a string</LI>
                    <LI>The FILTER_VALIDATE_EMAIL filter validates value as an 
                    e-mail address</LI></UL>
                  <BR></P><BR>
                  
                  <div align="center" class="headline" 
                     style="font-size: 22px; font-weight: bold; color: #800000">
                      PHP Error Handling<br /></div>
                      
                      
                      <HR>

                  <P class=intro>The default error handling in PHP is very 
                  simple. An error message with filename, line number and a 
                  message describing the error is sent to the browser.</P>
                  <HR>

                  <H2>PHP Error Handling</H2>
                  <P>When creating scripts and web applications, error handling 
                  is an important part. If your code lacks error checking code, 
                  your program may look very unprofessional and you may be open 
                  to security risks.</P>
                  <P>This tutorial contains some of the most common error 
                  checking methods in PHP.</P>
                  <P>We will show different error handling methods:</P>
                  <UL>
                    <LI>Simple "die()" statements</LI>
                    <LI>Custom errors and error triggers</LI>
                    <LI>Error reporting</LI></UL>
                  <HR>

                  <H2>Basic Error Handling: Using the die() function</H2>
                  <P>The first example shows a simple script that opens a text 
                  file:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$file=fopen("welcome.txt","r");<BR>?&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>If the file does not exist you might get an error like 
                  this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD><B>Warning</B>: fopen(welcome.txt) [function.fopen]: 
                        failed to open stream:<BR>No such file or directory in 
                        <B>C:\webfolder\test.php</B> on line <B>2</B> 
                    </TD></TR></TBODY></TABLE>
                  <P>To avoid that the user gets an error message like the one 
                  above, we test if the file exist before we try to access 
                  it:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>if(!file_exists("welcome.txt"))<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;die("File 
                        not 
                        found");<BR>&nbsp;&nbsp;}<BR>else<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;$file=fopen("welcome.txt","r");<BR>&nbsp;&nbsp;}<BR>?&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>Now if the file does not exist you get an error like 
                  this:</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>File not found </TD></TR></TBODY></TABLE>
                  <P>The code above is more efficient than the earlier code, 
                  because it uses a simple error handling mechanism to stop the 
                  script after the error.</P>
                  <P>However, simply stopping the script is not always the right 
                  way to go. Let's take a look at alternative PHP functions for 
                  handling errors.</P>
                  <HR>

                  <H2>Creating a Custom Error Handler</H2>
                  <P>Creating a custom error handler is quite simple. We simply 
                  create a special function that can be called when an error 
                  occurs in PHP.</P>
                  <P>This function must be able to handle a minimum of two 
                  parameters (error level and error message) but can accept up 
                  to five parameters (optionally: file, line-number, and the 
                  error context): </P>
                  <H2>Syntax</H2>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>error_function(error_level,error_message,<BR>error_file,error_line,error_context) 
                      </TD></TR></TBODY></TABLE><BR>
                  <TABLE class=reference border=1 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TH vAlign=top width="20%" align=left>Parameter</TH>
                      <TH vAlign=top width="80%" align=left>Description</TH></TR>
                    <TR>
                      <TD vAlign=top>error_level</TD>
                      <TD vAlign=top>Required. Specifies the error report 
                        level for the user-defined error. Must be a value 
                        number. See table below for possible error report 
                      levels</TD></TR>
                    <TR>
                      <TD vAlign=top>error_message</TD>
                      <TD vAlign=top>Required. Specifies the error message for 
                        the user-defined error</TD></TR>
                    <TR>
                      <TD vAlign=top>error_file</TD>
                      <TD vAlign=top>Optional. Specifies the filename in which 
                        the error occurred</TD></TR>
                    <TR>
                      <TD vAlign=top>error_line</TD>
                      <TD vAlign=top>Optional. Specifies the line number in 
                        which the error occurred</TD></TR>
                    <TR>
                      <TD vAlign=top>error_context</TD>
                      <TD vAlign=top>Optional. Specifies an array containing 
                        every variable, and their values, in use when the error 
                        occurred</TD></TR></TBODY></TABLE>
                  <H2>Error Report levels</H2>
                  <P>These error report levels are the different types of error 
                  the user-defined error handler can be used for:</P>
                  <TABLE class=reference border=1 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TH width="5%" align=left>Value</TH>
                      <TH width="30%" align=left>Constant</TH>
                      <TH width="65%" align=left>Description</TH></TR>
                    <TR>
                      <TD vAlign=top>2</TD>
                      <TD vAlign=top>E_WARNING</TD>
                      <TD vAlign=top>Non-fatal run-time errors. Execution of 
                        the script is not halted</TD></TR>
                    <TR>
                      <TD vAlign=top>8</TD>
                      <TD vAlign=top>E_NOTICE</TD>
                      <TD vAlign=top>Run-time notices. The script found 
                        something that might be an error, but could also happen 
                        when running a script normally</TD></TR>
                    <TR>
                      <TD vAlign=top>256</TD>
                      <TD vAlign=top>E_USER_ERROR</TD>
                      <TD vAlign=top>Fatal user-generated error. This is like 
                        an E_ERROR set by the programmer using the PHP function 
                        trigger_error()</TD></TR>
                    <TR>
                      <TD vAlign=top>512</TD>
                      <TD vAlign=top>E_USER_WARNING</TD>
                      <TD vAlign=top>Non-fatal user-generated warning. This is 
                        like an E_WARNING set by the programmer using the PHP 
                        function trigger_error()</TD></TR>
                    <TR>
                      <TD vAlign=top>1024</TD>
                      <TD vAlign=top>E_USER_NOTICE</TD>
                      <TD vAlign=top>User-generated notice. This is like an 
                        E_NOTICE set by the programmer using the PHP function 
                        trigger_error()</TD></TR>
                    <TR>
                      <TD vAlign=top>4096</TD>
                      <TD vAlign=top>E_RECOVERABLE_ERROR</TD>
                      <TD vAlign=top>Catchable fatal error. This is like an 
                        E_ERROR but can be caught by a user defined handle (see 
                        also set_error_handler())</TD></TR>
                    <TR>
                      <TD vAlign=top>8191</TD>
                      <TD vAlign=top>E_ALL</TD>
                      <TD vAlign=top>All errors and warnings, except level 
                        E_STRICT (E_STRICT will be part of E_ALL as of PHP 
                      6.0)</TD></TR></TBODY></TABLE>
                  <P>Now lets create a function to handle errors:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>function customError($errno, 
                        $errstr)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 
                        "&lt;b&gt;Error:&lt;/b&gt; [$errno] $errstr&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;echo "Ending 
                        Script";<BR>&nbsp;&nbsp;die();<BR>&nbsp;&nbsp;} 
                    </TD></TR></TBODY></TABLE>
                  <P>The code above is a simple error handling function. When it 
                  is triggered, it gets the error level and an error message. It 
                  then outputs the error level and message and terminates the 
                  script.</P>
                  <P>Now that we have created an error handling function we need 
                  to decide when it should be triggered.</P>
                  <HR>

                  <H2>Set Error Handler</H2>
                  <P>The default error handler for PHP is the built in error 
                  handler. We are going to make the function above the default 
                  error handler for the duration of the script.</P>
                  <P>It is possible to change the error handler to apply for 
                  only some errors, that way the script can handle different 
                  errors in different ways. However, in this example we are 
                  going to use our custom error handler for all errors:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>set_error_handler("customError"); 
                  </TD></TR></TBODY></TABLE>
                  <P>Since we want our custom function to handle all errors, the 
                  set_error_handler() only needed one parameter, a second 
                  parameter could be added to specify an error level.</P>
                  <H2>Example</H2>
                  <P>Testing the error handler by trying to output variable that 
                  does not exist:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>//error handler function<BR>function 
                        customError($errno, 
                        $errstr)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 
                        "&lt;b&gt;Error:&lt;/b&gt; [$errno] 
                        $errstr";<BR>&nbsp;&nbsp;}<BR><BR>//set error 
                        handler<BR>set_error_handler("customError");<BR><BR>//trigger 
                        error<BR>echo($test);<BR>?&gt; </TD></TR></TBODY></TABLE>
                  <P>The output of the code above should be something like 
                  this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD><B>Error:</B> [8] Undefined variable: test 
                    </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>Trigger an Error</H2>
                  <P>In a script where users can input data it is useful to 
                  trigger errors when an illegal input occurs. In PHP, this is 
                  done by the trigger_error() function.</P>
                  <H2>Example</H2>
                  <P>In this example an error occurs if the "test" variable is 
                  bigger than "1":</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$test=2;<BR>if 
                        ($test&gt;1)<BR>{<BR>trigger_error("Value must be 1 or 
                        below");<BR>}<BR>?&gt; </TD></TR></TBODY></TABLE>
                  <P>The output of the code above should be something like 
                  this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD><B>Notice</B>: Value must be 1 or below<BR>in 
                        <B>C:\webfolder\test.php</B> on line <B>6</B> 
                    </TD></TR></TBODY></TABLE>
                  <P>An error can be triggered anywhere you wish in a script, 
                  and by adding a second parameter, you can specify what error 
                  level is triggered.</P>
                  <P>Possible error types:</P>
                  <UL>
                    <LI>E_USER_ERROR - Fatal user-generated run-time error. 
                    Errors that can not be recovered from. Execution of the 
                    script is halted </LI>
                    <LI>E_USER_WARNING - Non-fatal user-generated run-time 
                    warning. Execution of the script is not halted </LI>
                    <LI>E_USER_NOTICE - Default. User-generated run-time notice. 
                    The script found something that might be an error, but could 
                    also happen when running a script normally </LI></UL>
                  <H2>Example</H2>
                  <P>In this example an E_USER_WARNING occurs if the "test" 
                  variable is bigger than "1". If an E_USER_WARNING occurs we 
                  will use our custom error handler and end the script:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>//error handler function<BR>function 
                        customError($errno, 
                        $errstr)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 
                        "&lt;b&gt;Error:&lt;/b&gt; [$errno] $errstr&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;echo "Ending 
                        Script";<BR>&nbsp;&nbsp;die();<BR>&nbsp;&nbsp;}<BR><BR>//set 
                        error 
                        handler<BR>set_error_handler("customError",E_USER_WARNING);<BR><BR>//trigger 
                        error<BR>$test=2;<BR>if 
                        ($test&gt;1)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;trigger_error("Value 
                        must be 1 or 
                        below",E_USER_WARNING);<BR>&nbsp;&nbsp;}<BR>?&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P>The output of the code above should be something like 
                  this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD><B>Error:</B> [512] Value must be 1 or 
                        below<BR>Ending Script </TD></TR></TBODY></TABLE>
                  <P>Now that we have learned to create our own errors and how 
                  to trigger them, lets take a look at error logging.</P>
                  <HR>

                  <H2>Error Logging</H2>
                  <P>By default, PHP sends an error log to the servers logging 
                  system or a file, depending on how the error_log configuration 
                  is set in the php.ini file. By using the error_log() function 
                  you can send error logs to a specified file or a remote 
                  destination.</P>
                  <P>Sending errors messages to yourself by e-mail can be a good 
                  way of getting notified of specific errors.</P>
                  <H2>Send an Error Message by E-Mail</H2>
                  <P>In the example below we will send an e-mail with an error 
                  message and end the script, if a specific error occurs:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>//error handler function<BR>function 
                        customError($errno, 
                        $errstr)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 
                        "&lt;b&gt;Error:&lt;/b&gt; [$errno] $errstr&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;echo "Webmaster has been 
                        notified";<BR>&nbsp;&nbsp;error_log("Error: [$errno] 
                        $errstr",1,<BR>&nbsp;&nbsp;"someone@example.com","From: 
                        webmaster@example.com");<BR>&nbsp;&nbsp;}<BR><BR>//set 
                        error 
                        handler<BR>set_error_handler("customError",E_USER_WARNING);<BR><BR>//trigger 
                        error<BR>$test=2;<BR>if 
                        ($test&gt;1)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;trigger_error("Value 
                        must be 1 or 
                        below",E_USER_WARNING);<BR>&nbsp;&nbsp;}<BR>?&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P>The output of the code above should be something like 
                  this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD><B>Error:</B> [512] Value must be 1 or 
                        below<BR>Webmaster has been notified 
</TD></TR></TBODY></TABLE>
                  <P>And the mail received from the code above looks like 
                  this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Error: [512] Value must be 1 or below 
                  </TD></TR></TBODY></TABLE>
                  <P>This should not be used with all errors. Regular errors 
                  should be logged on the server using the default PHP logging 
                  system.</P><BR>
                  
                  <div align="center" class="headline" 
                     style="font-size: 22px; font-weight: bold; color: #800000">
                      PHP Exception Handling<br /></div>
                      
                      <HR>

                  <P class=intro>Exceptions are used to change the normal flow 
                  of a script if a specified error occurs</P>
                  <HR>

                  <H2>What is an Exception</H2>
                  <P>With PHP 5 came a new object oriented way of dealing with 
                  errors.</P>
                  <P>Exception handling is used to change the normal flow of the 
                  code execution if a specified error (exceptional) condition 
                  occurs. This condition is called an exception.<BR><BR>This is 
                  what normally happens when an exception is triggered:</P>
                  <UL>
                    <LI>The current code state is saved</LI>
                    <LI>The code execution will switch to a predefined (custom) 
                    exception handler function</LI>
                    <LI>Depending on the situation, the handler may then resume 
                    the execution from the saved code state, terminate the 
                    script execution or continue the script from a different 
                    location in the code</LI></UL>
                  <P>We will show different error handling methods:</P>
                  <UL>
                    <LI>Basic use of Exceptions</LI>
                    <LI>Creating a custom exception handler</LI>
                    <LI>Multiple exceptions</LI>
                    <LI>Re-throwing an exception</LI>
                    <LI>Setting a top level exception handler</LI></UL>
                  <P><B>Note:</B> Exceptions should only be used with error 
                  conditions, and should not be used to jump to another place in 
                  the code at a specified point.</P>
                  <HR>

                  <H2>Basic Use of Exceptions</H2>
                  <P>When an exception is thrown, the code following it will not 
                  be executed, and PHP will try to find the matching "catch" 
                  block.</P>
                  <P>If an exception is not caught, a fatal error will be issued 
                  with an "Uncaught Exception" message.</P>
                  <P>Lets try to throw an exception without catching it:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>//create function with an 
                        exception<BR>function 
                        checkNum($number)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;if($number&gt;1)<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;throw 
                        new Exception("Value must be 1 or 
                        below");<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;return 
                        true;<BR>&nbsp;&nbsp;}<BR><BR>//trigger 
                        exception<BR>checkNum(2);<BR>?&gt; </TD></TR></TBODY></TABLE>
                  <P>The code above will get an error like this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD><B>Fatal error</B>: Uncaught exception 
                        'Exception'<BR>with message 'Value must be 1 or below' 
                        in C:\webfolder\test.php:6<BR>Stack trace: #0 
                        C:\webfolder\test.php(12):<BR>checkNum(28) #1 {main} 
                        thrown in <B>C:\webfolder\test.php</B> on line <B>6</B> 
                      </TD></TR></TBODY></TABLE>
                  <H2>Try, throw and catch</H2>
                  <P>To avoid the error from the example above, we need to 
                  create the proper code to handle an exception. </P>
                  <P>Proper exception code should include:</P>
                  <OL>
                    <LI>Try - A function using an exception should be in a "try" 
                    block. If the exception does not trigger, the code will 
                    continue as normal. However if the exception triggers, an 
                    exception is "thrown"</LI>
                    <LI>Throw - This is how you trigger an exception. Each 
                    "throw" must have at least one "catch"</LI>
                    <LI>Catch - A "catch" block retrieves an exception and 
                    creates an object containing the exception 
                  information</LI></OL>
                  <P>Lets try to trigger an exception with valid code:</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>//create function with an 
                        exception<BR>function 
                        checkNum($number)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;if($number&gt;1)<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;throw 
                        new Exception("Value must be 1 or 
                        below");<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;return 
                        true;<BR>&nbsp;&nbsp;}<BR><BR>//trigger exception in a 
                        "try" 
                        block<BR>try<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;checkNum(2);<BR>&nbsp;&nbsp;//If 
                        the exception is thrown, this text will not be 
                        shown<BR>&nbsp;&nbsp;echo 'If you see this, the number 
                        is 1 or below';<BR>&nbsp;&nbsp;}<BR><BR>//catch 
                        exception<BR>catch(Exception 
                        $e)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 'Message: ' 
                        .$e-&gt;getMessage();<BR>&nbsp;&nbsp;}<BR>?&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P>The code above will get an error like this:</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Message: Value must be 1 or below 
                  </TD></TR></TBODY></TABLE>
                  <H2>Example explained:</H2>
                  <P>The code above throws an exception and catches it:</P>
                  <OL>
                    <LI>The checkNum() function is created. It checks if a 
                    number is greater than 1. If it is, an exception is 
                    thrown</LI>
                    <LI>The checkNum() function is called in a "try" block</LI>
                    <LI>The exception within the checkNum() function is 
                    thrown</LI>
                    <LI>The "catch" block retrives the exception and creates an 
                    object ($e) containing the exception information</LI>
                    <LI>The error message from the exception is echoed by 
                    calling $e-&gt;getMessage() from the exception 
object</LI></OL>
                  <P>However, one way to get around the "every throw must have a 
                  catch" rule is to set a top level exception handler to handle 
                  errors that slip through.</P>
                  <HR>

                  <H2>Creating a Custom Exception Class</H2>
                  <P>Creating a custom exception handler is quite simple. We 
                  simply create a special class with functions that can be 
                  called when an exception occurs in PHP. The class must be an 
                  extension of the exception class.</P>
                  <P>The custom exception class inherits the properties from 
                  PHP's exception class and you can add custom functions to 
                  it.</P>
                  <P>Lets create an exception class:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>class customException extends 
                        Exception<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;public 
                        function 
                        errorMessage()<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;//error 
                        message<BR>&nbsp;&nbsp;&nbsp;&nbsp;$errorMsg = 'Error on 
                        line '.$this-&gt;getLine().' in 
                        '.$this-&gt;getFile()<BR>&nbsp;&nbsp;&nbsp;&nbsp;.': 
                        &lt;b&gt;'.$this-&gt;getMessage().'&lt;/b&gt; is not a 
                        valid E-Mail address';<BR>&nbsp;&nbsp;&nbsp;&nbsp;return 
                        $errorMsg;<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;}<BR><BR>$email 
                        = 
                        "someone@example...com";<BR><BR>try<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;//check 
                        if<BR>&nbsp;&nbsp;if(filter_var($email, 
                        FILTER_VALIDATE_EMAIL) === 
                        FALSE)<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;//throw 
                        exception if email is not 
                        valid<BR>&nbsp;&nbsp;&nbsp;&nbsp;throw new 
                        customException($email);<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;}<BR><BR>catch 
                        (customException 
                        $e)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;//display custom 
                        message<BR>&nbsp;&nbsp;echo 
                        $e-&gt;errorMessage();<BR>&nbsp;&nbsp;}<BR>?&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P>The new class is a copy of the old exception class with an 
                  addition of the errorMessage() function. Since it is a copy of 
                  the old class, and it inherits the properties and methods from 
                  the old class, we can use the exception class methods like 
                  getLine() and getFile() and getMessage().</P>
                  <H2>Example explained:</H2>
                  <P>The code above throws an exception and catches it with a 
                  custom exception class:</P>
                  <OL>
                    <LI>The customException() class is created as an extension 
                    of the old exception class. This way it inherits all methods 
                    and properties from the old exception class</LI>
                    <LI>The errorMessage() function is created. This function 
                    returns an error message if an e-mail address is 
invalid</LI>
                    <LI>The $email variable is set to a string that is not a 
                    valid e-mail address</LI>
                    <LI>The "try" block is executed and an exception is thrown 
                    since the e-mail address is invalid</LI>
                    <LI>The "catch" block catches the exception and displays the 
                    error message</LI></OL>
                  <HR>

                  <H2>Multiple Exceptions</H2>
                  <P>It is possible for a script to use multiple exceptions to 
                  check for multiple conditions.</P>
                  <P>It is possible to use several if..else blocks, a switch, or 
                  nest multiple exceptions. These exceptions can use different 
                  exception classes and return different error messages:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>class customException extends 
                        Exception<BR>{<BR>public function 
                        errorMessage()<BR>{<BR>//error message<BR>$errorMsg = 
                        'Error on line '.$this-&gt;getLine().' in 
                        '.$this-&gt;getFile()<BR>.': 
                        &lt;b&gt;'.$this-&gt;getMessage().'&lt;/b&gt; is not a 
                        valid E-Mail address';<BR>return 
                        $errorMsg;<BR>}<BR>}<BR><BR>$email = 
                        "someone@example.com";<BR><BR>try<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;//check 
                        if<BR>&nbsp;&nbsp;if(filter_var($email, 
                        FILTER_VALIDATE_EMAIL) === 
                        FALSE)<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;//throw 
                        exception if email is not 
                        valid<BR>&nbsp;&nbsp;&nbsp;&nbsp;throw new 
                        customException($email);<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;//check 
                        for "example" in mail 
                        address<BR>&nbsp;&nbsp;if(strpos($email, "example") !== 
                        FALSE)<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;throw 
                        new Exception("$email is an example 
                        e-mail");<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;}<BR><BR>catch 
                        (customException 
                        $e)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 
                        $e-&gt;errorMessage();<BR>&nbsp;&nbsp;}<BR><BR>catch(Exception 
                        $e)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 
                        $e-&gt;getMessage();<BR>&nbsp;&nbsp;}<BR>?&gt; 
                    </TD></TR></TBODY></TABLE>
                  <H2>Example explained:</H2>
                  <P>The code above tests two conditions and throws an exception 
                  if any of the conditions are not met:</P>
                  <OL>
                    <LI>The customException() class is created as an extension 
                    of the old exception class. This way it inherits all methods 
                    and properties from the old exception class</LI>
                    <LI>The errorMessage() function is created. This function 
                    returns an error message if an e-mail address is 
invalid</LI>
                    <LI>The $email variable is set to a string that is a valid 
                    e-mail address, but contains the string "example"</LI>
                    <LI>The "try" block is executed and an exception is not 
                    thrown on the first condition</LI>
                    <LI>The second condition triggers an exception since the 
                    e-mail contains the string "example"</LI>
                    <LI>The "catch" block catches the exception and displays the 
                    correct error message</LI></OL>
                  <P>If there was no customException catch, only the base 
                  exception catch, the exception would be handled there</P>
                  <HR>

                  <H2>Re-throwing Exceptions</H2>
                  <P>Sometimes, when an exception is thrown, you may wish to 
                  handle it differently than the standard way. It is possible to 
                  throw an exception a second time within a "catch" block.</P>
                  <P>A script should hide system errors from users. System 
                  errors may be important for the coder, but is of no interest 
                  to the user. To make things easier for the user you can 
                  re-throw the exception with a user friendly message:</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>class customException extends 
                        Exception<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;public 
                        function 
                        errorMessage()<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;//error 
                        message<BR>&nbsp;&nbsp;&nbsp;&nbsp;$errorMsg = 
                        $this-&gt;getMessage().' is not a valid E-Mail 
                        address.';<BR>&nbsp;&nbsp;&nbsp;&nbsp;return 
                        $errorMsg;<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;}<BR><BR>$email 
                        = 
                        "someone@example.com";<BR><BR>try<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;try<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;//check 
                        for "example" in mail 
                        address<BR>&nbsp;&nbsp;&nbsp;&nbsp;if(strpos($email, 
                        "example") !== 
                        FALSE)<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//throw 
                        exception if email is not 
                        valid<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;throw new 
                        Exception($email);<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;catch(Exception 
                        $e)<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;//re-throw 
                        exception<BR>&nbsp;&nbsp;&nbsp;&nbsp;throw new 
                        customException($email);<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;}<BR><BR>catch 
                        (customException 
                        $e)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;//display custom 
                        message<BR>&nbsp;&nbsp;echo 
                        $e-&gt;errorMessage();<BR>&nbsp;&nbsp;}<BR>?&gt; 
                    </TD></TR></TBODY></TABLE>
                  <H2>Example explained:</H2>
                  <P>The code above tests if the email-address contains the 
                  string "example" in it, if it does, the exception is 
                  re-thrown:</P>
                  <OL>
                    <LI>The customException() class is created as an extension 
                    of the old exception class. This way it inherits all methods 
                    and properties from the old exception class</LI>
                    <LI>The errorMessage() function is created. This function 
                    returns an error message if an e-mail address is 
invalid</LI>
                    <LI>The $email variable is set to a string that is a valid 
                    e-mail address, but contains the string "example"</LI>
                    <LI>The "try" block contains another "try" block to make it 
                    possible to re-throw the exception</LI>
                    <LI>The exception is triggered since the e-mail contains the 
                    string "example"</LI>
                    <LI>The "catch" block catches the exception and re-throws a 
                    "customException"</LI>
                    <LI>The "customException" is caught and displays an error 
                    message</LI></OL>
                  <P>If the exception is not caught in its current "try" block, 
                  it will search for a catch block on "higher levels".</P>
                  <HR>

                  <H2>Set a Top Level Exception Handler</H2>
                  <P>The set_exception_handler() function sets a user-defined 
                  function to handle all uncaught exceptions. </P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>function 
                        myException($exception)<BR>{<BR>echo 
                        "&lt;b&gt;Exception:&lt;/b&gt; " , 
                        $exception-&gt;getMessage();<BR>}<BR><BR>set_exception_handler('myException');<BR><BR>throw 
                        new Exception('Uncaught Exception occurred');<BR>?&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>The output of the code above should be something like 
                  this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD><B>Exception:</B> Uncaught Exception occurred 
                    </TD></TR></TBODY></TABLE>
                  <P>In the code above there was no "catch" block. Instead, the 
                  top level exception handler triggered. This function should be 
                  used to catch uncaught exceptions.<BR></P>
                  <HR>

                  <H2>Rules for exceptions</H2>
                  <UL>
                    <LI>Code may be surrounded in a try block, to help catch 
                    potential exceptions</LI>
                    <LI>Each try block or "throw" must have at least one 
                    corresponding catch block</LI>
                    <LI>Multiple catch blocks can be used to catch different 
                    classes of exceptions</LI>
                    <LI>Exceptions can be thrown (or re-thrown) in a catch block 
                    within a try block</LI></UL>
                  <P>A simple rule: If you throw something, you have to catch 
                  it.</P>
               <BR>
               <div align="center" class="headline" 
                     style="font-size: 22px; font-weight: bold; color: #800000">
                      PHP Filter<br /></div>
                      
                       <HR>

                  <P class=intro>PHP filters are used to validate and filter 
                  data coming from insecure sources, like user input.</P>
                  <HR>

                  <H2>What is a PHP Filter? </H2>
                  <P>A PHP filter is used to validate and filter data coming 
                  from insecure sources.</P>
                  <P>To test, validate and filter user input or custom data is 
                  an important part of any web application.</P>
                  <P>The PHP filter extension is designed to make data filtering 
                  easier and quicker.</P>
                  <HR>

                  <H2>Why use a Filter?</H2>
                  <P>Almost all web applications depend on external input. 
                  Usually this comes from a user or another application (like a 
                  web service). By using filters you can be sure your 
                  application gets the correct input type.</P>
                  <P><B>You should always filter all external data!</B></P>
                  <P>Input filtering is one of the most important application 
                  security issues.</P>
                  <P>What is external data?</P>
                  <UL>
                    <LI>Input data from a form</LI>
                    <LI>Cookies</LI>
                    <LI>Web services data</LI>
                    <LI>Server variables</LI>
                    <LI>Database query results</LI></UL>
                  <HR>

                  <H2>Functions and Filters</H2>
                  <P>To filter a variable, use one of the following filter 
                  functions:</P>
                  <UL>
                    <LI>filter_var() - Filters a single variable with a 
                    specified filter</LI>
                    <LI>filter_var_array() - Filter several variables with the 
                    same or different filters</LI>
                    <LI>filter_input - Get one input variable and filter it</LI>
                    <LI>filter_input_array - Get several input variables and 
                    filter them with the same or different filters</LI></UL>
                  <P>In the example below, we validate an integer using the 
                  filter_var() function:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$int = 123;<BR><BR>if(!filter_var($int, 
                        FILTER_VALIDATE_INT))<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo("Integer 
                        is not 
                        valid");<BR>&nbsp;&nbsp;}<BR>else<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo("Integer 
                        is valid");<BR>&nbsp;&nbsp;}<BR>?&gt; 
                  </TD></TR></TBODY></TABLE>
                  <P>The code above uses the "FILTER_VALIDATE_INT"&nbsp; filter 
                  to filter the variable. Since the integer is valid, the output 
                  of the code above will be: "Integer is valid".</P>
                  <P>If we try with a variable that is not an integer (like 
                  "123abc"), the output will be: "Integer is not valid".</P>
                  <P>For a complete list of functions and filters, visit our <A 
                  href="http://www.w3schools.com/PHP/php_ref_filter.asp">PHP 
                  Filter Reference.</A><BR></P>
                  <HR>

                  <H2>Validating and Sanitizing</H2>
                  <P>There are two kinds of filters:</P>
                  <P>Validating filters:</P>
                  <UL>
                    <LI>Are used to validate user input</LI>
                    <LI>Strict format rules (like URL or E-Mail validating)</LI>
                    <LI>Returns the expected type on success or FALSE on 
                    failure</LI></UL>
                  <P>Sanitizing filters:</P>
                  <UL>
                    <LI>Are used to allow or disallow specified characters in a 
                    string</LI>
                    <LI>No data format rules</LI>
                    <LI>Always return the string</LI></UL>
                  <HR>

                  <H2>Options and Flags</H2>
                  <P>Options and flags are used to add additional filtering 
                  options to the specified filters.</P>
                  <P>Different filters have different options and flags. </P>
                  <P>In the example below, we validate an integer using the 
                  filter_var() and the "min_range" and "max_range" options:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$var=300;<BR><BR>$int_options = 
                        array(<BR>"options"=&gt;array<BR>&nbsp;&nbsp;(<BR>&nbsp;&nbsp;"min_range"=&gt;0,<BR>&nbsp;&nbsp;"max_range"=&gt;256<BR>&nbsp;&nbsp;)<BR>);<BR><BR>if(!filter_var($var, 
                        FILTER_VALIDATE_INT, 
                        $int_options))<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo("Integer 
                        is not 
                        valid");<BR>&nbsp;&nbsp;}<BR>else<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo("Integer 
                        is valid");<BR>&nbsp;&nbsp;}<BR>?&gt; 
                  </TD></TR></TBODY></TABLE>
                  <P>Like the code above, options must be put in an associative 
                  array with the name "options". If a flag is used it does not 
                  need to be in an array.</P>
                  <P>Since the integer is "300" it is not in the specified 
                  range, and the output of the code above will be: "Integer is 
                  not valid".</P>
                  <P>For a complete list of functions and filters, visit our <A 
                  href="http://www.w3schools.com/PHP/php_ref_filter.asp">PHP 
                  Filter Reference.</A> Check each filter to see what options 
                  and flags are available.</P>
                  <HR>

                  <H2>Validate Input</H2>
                  <P>Let's try validating input from a form.</P>
                  <P>The first thing we need to do is to confirm that the input 
                  data we are looking for exists.</P>
                  <P>Then we filter the input data using the filter_input() 
                  function.</P>
                  <P>In the example below, the input variable "email" is sent to 
                  the PHP page:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>if(!filter_has_var(INPUT_GET, 
                        "email"))<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo("Input 
                        type does not 
                        exist");<BR>&nbsp;&nbsp;}<BR>else<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;if 
                        (!filter_input(INPUT_GET, "email", 
                        FILTER_VALIDATE_EMAIL))<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo 
                        "E-Mail is not 
                        valid";<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;else<BR>&nbsp;&nbsp;&nbsp;&nbsp;{<BR>&nbsp;&nbsp;&nbsp;&nbsp;echo 
                        "E-Mail is 
                        valid";<BR>&nbsp;&nbsp;&nbsp;&nbsp;}<BR>&nbsp;&nbsp;}<BR>?&gt; 
                      </TD></TR></TBODY></TABLE>
                  <H2>Example Explained</H2>
                  <P>The example above has an input (email) sent to it using the 
                  "GET" method:</P>
                  <OL>
                    <LI>Check if an "email" input variable of the "GET" type 
                    exist</LI>
                    <LI>If the input variable exists, check if it is a valid 
                    e-mail address</LI></OL>
                  <HR>

                  <H2>Sanitize Input</H2>
                  <P>Let's try cleaning up an URL sent from a form.</P>
                  <P>First we confirm that the input data we are looking for 
                  exists.</P>
                  <P>Then we sanitize the input data using the filter_input() 
                  function.</P>
                  <P>In the example below, the input variable "url" is sent to 
                  the PHP page:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>if(!filter_has_var(INPUT_POST, 
                        "url"))<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo("Input type 
                        does not 
                        exist");<BR>&nbsp;&nbsp;}<BR>else<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;$url 
                        = filter_input(INPUT_POST, <BR>&nbsp;&nbsp;"url", 
                        FILTER_SANITIZE_URL);<BR>&nbsp;&nbsp;}<BR>?&gt; 
                    </TD></TR></TBODY></TABLE>
                  <H2>Example Explained</H2>
                  <P>The example above has an input (url) sent to it using the 
                  "POST" method:</P>
                  <OL>
                    <LI>Check if the "url" input of the "POST" type exists</LI>
                    <LI>If the input variable exists, sanitize (take away 
                    invalid characters) and store it in the $url 
variable</LI></OL>
                  <P>If the input variable is a string like this 
                  "http://www.W3ههSchّّools.com/", the $url variable after the 
                  sanitizing will look like this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>http://www.W3Schools.com/ </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>Filter Multiple Inputs</H2>
                  <P>A form almost always consist of more than one input field. 
                  To avoid calling the filter_var or filter_input functions over 
                  and over, we can use the filter_var_array or the 
                  filter_input_array functions.</P>
                  <P>In this example we use the filter_input_array() function to 
                  filter three GET variables. The received GET variables is a 
                  name, an age and an e-mail address:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$filters = 
                        array<BR>&nbsp;&nbsp;(<BR>&nbsp;&nbsp;"name" =&gt; 
                        array<BR>&nbsp;&nbsp;&nbsp;&nbsp;(<BR>&nbsp;&nbsp;&nbsp;&nbsp;"filter"=&gt;FILTER_SANITIZE_STRING<BR>&nbsp;&nbsp;&nbsp;&nbsp;),<BR>&nbsp;&nbsp;"age" 
                        =&gt; 
                        array<BR>&nbsp;&nbsp;&nbsp;&nbsp;(<BR>&nbsp;&nbsp;&nbsp;&nbsp;"filter"=&gt;FILTER_VALIDATE_INT,<BR>&nbsp;&nbsp;&nbsp;&nbsp;"options"=&gt;array<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"min_range"=&gt;1,<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"max_range"=&gt;120<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)<BR>&nbsp;&nbsp;&nbsp;&nbsp;),<BR>&nbsp;&nbsp;"email"=&gt; 
                        FILTER_VALIDATE_EMAIL,<BR>&nbsp;&nbsp;);<BR><BR>$result 
                        = filter_input_array(INPUT_GET, $filters);<BR><BR>if 
                        (!$result["age"])<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo("Age 
                        must be a number between 1 and 120.&lt;br 
                        /&gt;");<BR>&nbsp;&nbsp;}<BR>elseif(!$result["email"])<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo("E-Mail 
                        is not valid.&lt;br 
                        /&gt;");<BR>&nbsp;&nbsp;}<BR>else<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo("User 
                        input is valid");<BR>&nbsp;&nbsp;}<BR>?&gt; 
                    </TD></TR></TBODY></TABLE>
                  <H2>Example Explained</H2>
                  <P>The example above has three inputs (name, age and email) 
                  sent to it using the "GET" method:</P>
                  <OL>
                    <LI>Set an array containing the name of input variables and 
                    the filters used on the specified input variables</LI>
                    <LI>Call the filter_input_array() function with the GET 
                    input variables and the array we just set</LI>
                    <LI>Check the "age" and "email" variables in the $result 
                    variable for invalid inputs. (If any of the input variables 
                    are invalid, that input variable will be FALSE after the 
                    filter_input_array() function)</LI></OL>
                  <P>The second parameter of the filter_input_array() function 
                  can be an array or a single filter ID.</P>
                  <P>If the parameter is a single filter ID all values in the 
                  input array are filtered by the specified filter.</P>
                  <P>If the parameter is an array it must follow these 
rules:</P>
                  <UL>
                    <LI>Must be an associative array containing an input 
                    variable as an array key (like the "age" input 
variable)</LI>
                    <LI>The array value must be a filter ID or an array 
                    specifying the filter, flags and options</LI></UL>
                  <HR>

                  <H2>Using Filter Callback</H2>
                  <P>It is possible to call a user defined function and use it 
                  as a filter using the FILTER_CALLBACK filter. This way, we 
                  have full control of the data filtering.</P>
                  <P>You can create your own user defined function or use an 
                  existing PHP function</P>
                  <P>The function you wish to use to filter is specified the 
                  same way as an option is specified. In an associative array 
                  with the name "options"</P>
                  <P>In the example below, we use a user created function to 
                  convert all&nbsp; "_" to whitespaces:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>function 
                        convertSpace($string)<BR>{<BR>return str_replace("_", " 
                        ", $string);<BR>}<BR><BR>$string = 
                        "Peter_is_a_great_guy!";<BR><BR>echo filter_var($string, 
                        FILTER_CALLBACK,<BR>array("options"=&gt;"convertSpace"));<BR>?&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>The result from the code above should look like this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Peter is a great guy! </TD></TR></TBODY></TABLE>
                  <H2>Example Explained</H2>
                  <P>The example above converts all "_" to whitespaces:</P>
                  <OL>
                    <LI>Create a function to replace "_" to whitespaces</LI>
                    <LI>Call the filter_var() function with the FILTER_CALLBACK 
                    filter and an array containing our function</LI></OL><BR>                                         <BLOCKQUOTE>
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
                                                PostBackUrl="~/PHP_L5.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            
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
