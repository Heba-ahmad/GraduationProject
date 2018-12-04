<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="JavaScript_L3.aspx.cs" Inherits="_Default" %>

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
        DestinationPageUrl="~/JavaScript_L3.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;<img alt="" src="images/JAVASCRIPT.PNG" 
                    style="width: 204px; height: 87px" /><br />
                &nbsp;
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/JavaScript_L2.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/JavaScript_Contents.aspx">Back to JavaScript Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="JavaScript_L4.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 3 -  COOKIES & DROP DOWN MENU</H2>
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
                                                            style="font-size: 22px; color: #800000; font-weight: bold">
                                                            COOKIES<br />
                                                        </div>
                                                        <span class="text"><span class="fancyfirst">A</span> cookie is simply a variable 
                                                        that your webpage can store on or retrieve from the user's computer.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he idea is that the next time the user arrives 
                                                        at your page, the value of the cookie can be read by your page, and then used 
                                                        for whatever purpose you choose.<br />
                                                        <br />
                                                        <span class="fancyfirst">E</span>xamples of cookies could be:
                                                        <br />
                                                        <br />
                                                        <ul>
                                                            <li><span class="style2">First time the visitor arrives the name is entered.</span><br />
                                                                (for example &quot;John Wayne&quot;).
                                                                <br />
                                                                The username is then stored in a cookie.
                                                                <br />
                                                                Next time he arrives at your page, it writes something like:
                                                                <br />
                                                                &quot;Welcome to my page John Wayne!!
                                                                <br />
                                                                Good to see you again&quot;.
                                                                <br />
                                                                The name is simply retrieved from the stored cookie.<br />
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">First time the user arrives at your page she enters the 
                                                                desired language.</span><br />
                                                                The chosen language is stored in a cookie.
                                                                <br />
                                                                Next time she visits your site, she will simply be taken to the pages in the 
                                                                desired language without asking, since the desired language is retrieved from 
                                                                the cookie.<br />
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">First time the user arrives at your page he is asked to 
                                                                fill in a password.</span><br />
                                                                The password is saved in a cookie.
                                                                <br />
                                                                Next time he arrives at your page, the password is retrieved from the cookie.<br />
                                                            </li>
                                                        </ul>
                                                        </span>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; color: #800000; font-weight: bold">
                                                            THE TECHNIQUE<br />
                                                        </div>
                                                        <span class="text" style="background-color: #FFFFFF">
                                                        <br />
                                                        <span class="fancyfirst">C</span>ookies can be stored and retrieved using 
                                                        javascript.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he script first checks to see if a cookie has 
                                                        already been set.<br />
                                                        <ul>
                                                            <li>If so, it uses the cookie for some purpose.<br />
                                                            </li>
                                                            <li>If not, it sets a cookie and uses it the next time the user arrives at the page.<br />
                                                            </li>
                                                        </ul>
                                                        <span class="fancyfirst">C</span>ookies are stored until a specified expiration 
                                                        date.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f a cookie is present when a user arrives at 
                                                        your page it is stored in the <span class="note"><span class="style4">
                                                        document.cookie</span> object</span>.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his article will teach you how to read the 
                                                        cookie from the <span class="note"><span class="style4">document.cookie</span> 
                                                        object</span>, as well as how to specify the variables used in the
                                                        <span class="note"><span class="style4">setCookie</span> command</span>.<br />
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; color: #800000; font-weight: bold">
                                                            THE CODE</div>
                                                        <br />
                                                        <br />
                                                        <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                            <tr>
                                                                <td class="main">
                                                                    <div align="left">
                                                                        <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                        <span class="text"><span class="fancyfirst">I</span>n order to use cookies on a 
                                                                        page you need:<br />
                                                                        <ul>
                                                                            <li>a function that reads the cookie (if present)<br />
                                                                            </li>
                                                                            <li>a function that stores the cookie
                                                                                <br />
                                                                            </li>
                                                                            <li>a function that deletes the cookie<br />
                                                                            </li>
                                                                        </ul>
                                                                        <br />
                                                                        <span class="fancyfirst">B</span>elow are three functions that perform these 
                                                                        tasks:<br />
                                                                        <ul>
                                                                            <li><span class="note"><span class="style4">getCookie</span></span><br />
                                                                            </li>
                                                                            <li><span class="note"><span class="style4">setCookie</span></span><br />
                                                                            </li>
                                                                            <li><span class="note"><span class="style4">delCookie</span></span><br />
                                                                            </li>
                                                                        </ul>
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1">
                                                                                                <!-- perl mysql php web host -->function getCookie(NameOfCookie)<br />
                                                                                                {<br />
                                                                                                <br />
                                                                                                <span class="style1">// First we check to see if there is a cookie stored.<br />
                                                                                                // Otherwise the length of document.cookie would be zero.</span><br />
                                                                                                <br />
                                                                                                if (document.cookie.length &gt; 0)
                                                                                                <br />
                                                                                                {
                                                                                                <br />
                                                                                                <br />
                                                                                                <span class="style1">// Second we check to see if the cookie's name is stored in 
                                                                                                the<br />
                                                                                                // &quot;document.cookie&quot; object for the page.<br />
                                                                                                <br />
                                                                                                // Since more than one cookie can be set on a<br />
                                                                                                // single page it is possible that our cookie<br />
                                                                                                // is not present, even though the &quot;document.cookie&quot; object<br />
                                                                                                // is not just an empty text.<br />
                                                                                                // If our cookie name is not present the value -1 is stored<br />
                                                                                                // in the variable called &quot;begin&quot;.</span><br />
                                                                                                <br />
                                                                                                begin = document.cookie.indexOf(NameOfCookie+&quot;=&quot;);
                                                                                                <br />
                                                                                                if (begin != -1) // Note: != means &quot;is not equal to&quot;<br />
                                                                                                {
                                                                                                <br />
                                                                                                <br />
                                                                                                <span class="style1">// Our cookie was set.
                                                                                                <br />
                                                                                                // The value stored in the cookie is returned from the function.</span><br />
                                                                                                <br />
                                                                                                begin += NameOfCookie.length+1;
                                                                                                <br />
                                                                                                end = document.cookie.indexOf(&quot;;&quot;, begin);<br />
                                                                                                if (end == -1) end = document.cookie.length;<br />
                                                                                                return unescape(document.cookie.substring(begin, end)); }
                                                                                                <br />
                                                                                                }<br />
                                                                                                return null;
                                                                                                <br />
                                                                                                <br />
                                                                                                <span class="style1">// Our cookie was not set.
                                                                                                <br />
                                                                                                // The value &quot;null&quot; is returned from the function.</span><br />
                                                                                                <br />
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
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1">
                                                                                                <!-- perl mysql php web host -->function setCookie(NameOfCookie, value, 
                                                                                                expiredays)
                                                                                                <br />
                                                                                                {<br />
                                                                                                <br />
                                                                                                <span class="style1">// Three variables are used to set the new cookie.
                                                                                                <br />
                                                                                                // The name of the cookie, the value to be stored,<br />
                                                                                                // and finally the number of days until the cookie expires.<br />
                                                                                                // The first lines in the function convert
                                                                                                <br />
                                                                                                // the number of days to a valid date.</span><br />
                                                                                                <br />
                                                                                                var ExpireDate = new Date ();<br />
                                                                                                ExpireDate.setTime(ExpireDate.getTime() + (expiredays * 24 * 3600 * 1000));<br />
                                                                                                <br />
                                                                                                <span class="style1">// The next line stores the cookie, simply by assigning
                                                                                                <br />
                                                                                                // the values to the &quot;document.cookie&quot; object.<br />
                                                                                                // Note the date is converted to Greenwich Mean time using<br />
                                                                                                // the &quot;toGMTstring()&quot; function.</span><br />
                                                                                                <br />
                                                                                                document.cookie = NameOfCookie + &quot;=&quot; + escape(value) +
                                                                                                <br />
                                                                                                ((expiredays == null) ? &quot;&quot; : &quot;; expires=&quot; + ExpireDate.toGMTString());<br />
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
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1" style="background-color: #FFFFFF">
                                                                                                <!-- perl mysql php web host -->function delCookie (NameOfCookie)
                                                                                                <br />
                                                                                                {<br />
                                                                                                <br />
                                                                                                <span class="style1">// The function simply checks to see if the cookie is set.<br />
                                                                                                // If so, the expiration date is set to Jan. 1st 1970.</span><br />
                                                                                                <br />
                                                                                                if (getCookie(NameOfCookie)) {<br />
                                                                                                document.cookie = NameOfCookie + &quot;=&quot; +<br />
                                                                                                &quot;; expires=Thu, 01-Jan-70 00:00:01 GMT&quot;;<br />
                                                                                                }<br />
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
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                                        <br />
                                                                        <br />
                                                                        <span class="style4"><span class="fancyfirst">M</span>AKING IT WORK</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">S</span>imply adding the above code to a page does not 
                                                                        set any cookies. The functions are the tools you need in order to read, set, and 
                                                                        delete cookies on your page.
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he final step in adding a cookie to your page 
                                                                        is to add a purpose to the cookie. Decide whether you want the cookie to store 
                                                                        the user's name, the date of his last visit to your page or the preferred 
                                                                        language. Or use the cookie for whatever purpose you wish.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">I</span>n any case, the codes you need to add to the 
                                                                        cookie scripts will be different.<br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <br />
                                                                        <span class="style4"><span class="fancyfirst">R</span>AW SCRIPT</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">B</span>elow is the cookie script without the comments. 
                                                                        Copy and paste to use the script on your own site.<br />
                                                                        <br />
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1">
                                                                                                <!-- perl mysql php web host -->function getCookie(NameOfCookie)<br />
                                                                                                { if (document.cookie.length &gt; 0)
                                                                                                <br />
                                                                                                { begin = document.cookie.indexOf(NameOfCookie+&quot;=&quot;);
                                                                                                <br />
                                                                                                if (begin != -1)
                                                                                                <br />
                                                                                                { begin += NameOfCookie.length+1;
                                                                                                <br />
                                                                                                end = document.cookie.indexOf(&quot;;&quot;, begin);<br />
                                                                                                if (end == -1) end = document.cookie.length;<br />
                                                                                                return unescape(document.cookie.substring(begin, end)); }
                                                                                                <br />
                                                                                                }<br />
                                                                                                return null;
                                                                                                <br />
                                                                                                }<br />
                                                                                                <br />
                                                                                                <br />
                                                                                                <br />
                                                                                                function setCookie(NameOfCookie, value, expiredays)
                                                                                                <br />
                                                                                                { var ExpireDate = new Date ();<br />
                                                                                                ExpireDate.setTime(ExpireDate.getTime() + (expiredays * 24 * 3600 * 1000));<br />
                                                                                                document.cookie = NameOfCookie + &quot;=&quot; + escape(value) +
                                                                                                <br />
                                                                                                ((expiredays == null) ? &quot;&quot; : &quot;; expires=&quot; + ExpireDate.toGMTString());<br />
                                                                                                }<br />
                                                                                                <br />
                                                                                                <br />
                                                                                                <br />
                                                                                                function delCookie (NameOfCookie)
                                                                                                <br />
                                                                                                { if (getCookie(NameOfCookie)) {<br />
                                                                                                document.cookie = NameOfCookie + &quot;=&quot; +<br />
                                                                                                &quot;; expires=Thu, 01-Jan-70 00:00:01 GMT&quot;;<br />
                                                                                                }<br />
                                                                                                <br />
                                                                                                }<br />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        </span>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; color: #800000; font-weight: bold">
                                                            EXAMPLE</div>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>lick
                                                        <a href="http://www.echoecho.com/samplecookie1.htm"><span class="link">here</span></a> 
                                                        to see a sample page showing how to make the cookie store the user's name.<br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>lick
                                                        <a href="http://www.echoecho.com/samplecookie2.htm"><span class="link">here</span></a> 
                                                        to see a sample page showing how to make the cookie store the date of user's 
                                                        last visit.<br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>lick
                                                        <a href="http://www.echoecho.com/samplecookie2a.htm"><span class="link">here</span></a> 
                                                        to see an extended version of the above cookie script:<br />
                                                        <ul>
                                                            <li>it detects if the site has been updated since the user's
                                                                <br />
                                                                last visit.<br />
                                                            </li>
                                                            <li>If so, a confirm box gives the option to go to an update page to see what's new.<br />
                                                            </li>
                                                        </ul>
                                                        <span class="fancyfirst">C</span>lick
                                                        <a href="http://www.echoecho.com/samplecookie3.htm"><span class="link">here</span></a> 
                                                        to see a sample page showing how to make the cookie store a user preference.<br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>lick
                                                        <a href="http://www.echoecho.com/samplecookie4.htm"><span class="link">here</span></a> 
                                                        to see a sample page showing how to make the cookie launch a window the first 
                                                        time a visitor arrives - but not the following times.<br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>lick
                                                        <a href="http://www.echoecho.com/samplecookie5.htm"><span class="link">here</span></a> 
                                                        to see a sample page showing how to make the cookie count the number of visits, 
                                                        and launch a window the first 3 times a visitor arrives - but not the following 
                                                        times.<br />
                                                        <br />
                                                        <br />
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; color: #800000; font-weight: bold">
                                                            DROP-DOWN MENU</div>
                                                        <br />
                                                        <span class="fancyfirst">C</span>onsider these menu buttons
                                                        <br />
                                                        (Note: the menus are not activated on this page):<br />
                                                        <br />
                                                        <center>
                                                            <select name="D1" size="1">
                                                                <option selected="" value="FALSE">SEARCH ENGINES</option>
                                                                <option value="false">AltaVista</option>
                                                                <option value="false">HotBot</option>
                                                                <option value="false">InfoSeek</option>
                                                                <option value="false">MetaCrawler</option>
                                                                <option value="false">Yahoo</option>
                                                            </select>
                                                            <select name="D2" size="1">
                                                                <option selected="" value="FALSE">THIS SITE</option>
                                                                <option value="false">Home</option>
                                                                <option value="false">School</option>
                                                                <option value="false">School-&gt;HTML</option>
                                                                <option value="false">School-&gt;JavaScript</option>
                                                                <option value="false">School-&gt;Applets</option>
                                                                <option value="false">School-&gt;Flash</option>
                                                            </select></center>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">W</span>hen you choose an option from one of them, you 
                                                        will be taken to the referring page.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you have many links on a single page it can 
                                                        be very useful to bundle the links into drop-down menus rather than covering the 
                                                        entire page with links.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he script that makes the drop-down menus work 
                                                        as links is very simple, yet, extremely powerful.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>t works with framesets also, giving you the 
                                                        option to open links in new windows.<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>urthermore, you can add as many drop-down menus 
                                                        as you'd like to the script. It is not necessary to add a new script each time 
                                                        you include a new menu.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you're not particulary interested in the 
                                                        javascript itself, but would rather just have a menu on your page, click the 
                                                        link to go to the <a href="http://www.echoecho.com/tooldropdown.htm">
                                                        <span class="link">Drop-Down Menu Tool</span></a><br />
                                                        <br />
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; color: #800000; font-weight: bold">
                                                            THE TECHNIQUE<br />
                                                        </div>
                                                        <br />
                                                        <span class="fancyfirst">E</span>ach field in the drop-down menu has a name that 
                                                        will show in the menu.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he value attached to each of the fields are the 
                                                        URLs that should be called when the option is selected.<br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>y adding <span class="note">
                                                        <span class="style4">onChange=</span>&quot;DropDownMenu(this)&quot;</span> to the
                                                        <span class="style2">&lt;select&gt;</span> tags we force the browser to run our script 
                                                        when a field is picked from a menu. The script then reads which option is 
                                                        picked, and loads the referring page.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>t is possible to add a <span class="style2">
                                                        target</span> to the URL which means that the referring page can either be 
                                                        loaded into the same window, into a specific frame, or into a new window.<br />
                                                        <br />
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                            <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; color: #800000; font-weight: bold">
                                                            THE CODE</div>
                                                        <br />
                                                        <span class="fancyfirst">T</span>o make this script work on your page you need 
                                                        to add it to the <span class="style2">&lt;head&gt;</span> section of your document.<br />
                                                        <br />
                                                        <span class="fancyfirst">N</span>ext you need to add <span class="note">
                                                        <span class="style4">onChange=</span>&quot;DropDownMenu(this)&quot;</span> to each 
                                                        drop-down menu that should call the script.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he <span class="note"><span class="style4">
                                                        onChange</span></span> is added to the <span class="style2">&lt;select&gt;</span> tag 
                                                        of the desired<br />
                                                        drop-down menu.<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>inally you need to add the desired URL and the 
                                                        optional target to each of the options in the menus.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>o do this use the following syntax:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;option 
                                                                                value=&quot;http://www.yahoo.com&quot;&gt;Yahoo&lt;/option&gt;
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
                                                        <span class="fancyfirst">I</span>f you want to add a target to the link use this 
                                                        syntax:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;option value=&quot;http://www.yahoo.com<span 
                                                                                    class="style1">&amp;target</span>&quot;&gt;Yahoo&lt;/option&gt;
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        where &quot;<span class="style2">target</span>&quot; is replaced by the target you want to 
                                                        use.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you wanted the link to open in a frame called 
                                                        &quot;<span class="style2">main</span>&quot; you would add:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;option value=&quot;http://www.yahoo.com<span 
                                                                                    class="style1">&amp;main</span>&quot;&gt;Yahoo&lt;/option&gt;
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
                                                        <span class="note"><span class="fancyfirst">N</span>ote:
                                                        <br />
                                                        You can also use the reserved targets:<br />
                                                        <ul>
                                                            <li>&quot;_blank&quot;<br />
                                                            </li>
                                                            <li>&quot;_top&quot;<br />
                                                            </li>
                                                            <li>&quot;_parent&quot;<br />
                                                            </li>
                                                            <li>&quot;_self&quot;<br />
                                                            </li>
                                                        </ul>
                                                        </span>
                                                        <br />
                                                        Click <a href="http://www.echoecho.com/htmlframes07.htm"><span class="link">here</span></a> 
                                                        to get an explanation of these targets.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>inally, you can enter FALSE in the URL field to 
                                                        let the script know that the option shouldn't load a page.
                                                        <br />
                                                        This is what you do if you want one of the options to be a header for the 
                                                        drop-down menu - for example &quot;SEARCH ENGINES&quot; and &quot;THIS SITE&quot; in the two 
                                                        examples shown at the top of this page.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he script looks like this:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;script&gt;<br />
                                                                                function DropDownMenu(entered)<br />
                                                                                {<br />
                                                                                <span class="style1">// *********************************
                                                                                <br />
                                                                                // DROP DOWN MENU (c) Henrik Petersen / NetKontoret 1998 - All rights reserved
                                                                                <br />
                                                                                // Explained along with other useful scripts at: 
                                                                                http://www.echoecho.com/javascript.htm<br />
                                                                                // You may freely use this script as long as you do not remove this line and the 
                                                                                2 lines above.<br />
                                                                                // ****************************************** </span>
                                                                                <br />
                                                                                with (entered)<br />
                                                                                {<br />
                                                                                <span class="style1">// Store the selected option in a variable called ref</span><br />
                                                                                ref=options[selectedIndex].value;
                                                                                <br />
                                                                                <span class="style1">// Count the position of the optional &amp;</span><br />
                                                                                splitcharacter=ref.lastIndexOf(&quot;&amp;&quot;);
                                                                                <br />
                                                                                <br />
                                                                                <span class="style1">// The three lines below checks if a target goes along with 
                                                                                the URL
                                                                                <br />
                                                                                // That is: (if a &quot;&amp;&quot; is in the option-value).<br />
                                                                                // If so, the URL is stored in a variable called loc and the target<br />
                                                                                // is stored in a variable called target.<br />
                                                                                // If not the URL is stored in a variable called loc and &quot;_self&quot; is<br />
                                                                                // stored in the variable called target.</span><br />
                                                                                if (splitcharacter!=-1) {loc=ref.substring(0,splitcharacter); 
                                                                                target=ref.substring(splitcharacter+1,1000).toLowerCase();}<br />
                                                                                else {loc=ref; target=&quot;_self&quot;;};<br />
                                                                                <br />
                                                                                <span class="style1">// create a varible called lowloc to store loc in lowercase 
                                                                                characters.</span><br />
                                                                                lowloc=loc.toLowerCase();
                                                                                <br />
                                                                                <br />
                                                                                <span class="style1">// Skip the rest of this function if the selected 
                                                                                optionvalue is &quot;false&quot;.</span><br />
                                                                                if (lowloc==&quot;false&quot;) {return;}
                                                                                <br />
                                                                                <br />
                                                                                <span class="style1">// Open link in current document</span><br />
                                                                                if (target==&quot;_self&quot;) {document.location=loc;}<br />
                                                                                <br />
                                                                                <span class="style1">// Cancel eventual framesets and open link in current 
                                                                                window</span><br />
                                                                                else {if (target==&quot;_top&quot;) {top.location=loc;}
                                                                                <br />
                                                                                <br />
                                                                                <span class="style1">// Open link in new window</span><br />
                                                                                else {if (target==&quot;_blank&quot;) {window.open(loc);}
                                                                                <br />
                                                                                <br />
                                                                                <span class="style1">// Open link in parent frame</span><br />
                                                                                else{if (target==&quot;_parent&quot;) {parent.location=loc;}
                                                                                <br />
                                                                                <br />
                                                                                <span class="style1">// Open link in the specified frame</span><br />
                                                                                else {parent.frames[target].location=loc;};
                                                                                <br />
                                                                                }}}}<br />
                                                                                }<br />
                                                                                &lt;/script&gt;<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; color: #800000; font-weight: bold">
                                                            EXAMPLE</div>
                                                        <br />
                                                        <span class="fancyfirst">C</span>lick
                                                        <a href="http://www.echoecho.com/sampledropdownmenu.htm"><span class="link">here</span></a> 
                                                        to see a sample page using this script.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">S</span>CRIPT WITHOUT COMMENTS</span><br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you'd prefer to copy the code without 
                                                        comments, you may copy the script entered below:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;script&gt;<br />
                                                                                function DropDownMenu(entered)<br />
                                                                                {<br />
                                                                                <span class="style1">// 
                                                                                ***************************************************************************
                                                                                <br />
                                                                                // DROP DOWN MENU (c) Henrik Petersen / NetKontoret 1998 - All rights reserved
                                                                                <br />
                                                                                // Explained along with other useful scripts at: 
                                                                                http://www.echoecho.com/javascript.htm<br />
                                                                                // You may freely use this script as long as you do not remove this line and the 
                                                                                2 lines above.<br />
                                                                                // ***************************************************************************
                                                                                </span>
                                                                                <br />
                                                                                with (entered)<br />
                                                                                {<br />
                                                                                ref=options[selectedIndex].value;
                                                                                <br />
                                                                                splitcharacter=ref.lastIndexOf(&quot;&amp;&quot;);
                                                                                <br />
                                                                                if (splitcharacter!=-1) {loc=ref.substring(0,splitcharacter); 
                                                                                target=ref.substring(splitcharacter+1,1000).toLowerCase();}<br />
                                                                                else {loc=ref; target=&quot;_self&quot;;};<br />
                                                                                lowloc=loc.toLowerCase();
                                                                                <br />
                                                                                if (lowloc==&quot;false&quot;) {return;}
                                                                                <br />
                                                                                if (target==&quot;_self&quot;) {document.location=loc;}
                                                                                <br />
                                                                                else {if (target==&quot;_top&quot;) {top.location=loc;}
                                                                                <br />
                                                                                else {if (target==&quot;_blank&quot;) {window.open(loc);}
                                                                                <br />
                                                                                else{if (target==&quot;_parent&quot;) {parent.location=loc;}<br />
                                                                                else {parent.frames[target].location=loc;};
                                                                                <br />
                                                                                }}}}<br />
                                                                                }<br />
                                                                                &lt;/script&gt;
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <br />
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
                                                PostBackUrl="~/JavaScript_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/JavaScript_L4.aspx">Next &gt;&gt;</asp:LinkButton>
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
