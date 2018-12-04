<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="JavaScript_L4.aspx.cs" Inherits="_Default" %>

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
        DestinationPageUrl="~/JavaScript_L4.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                    style="width: 204px; height: 87px" />&nbsp;
                <br />
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/JavaScript_L3.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/JavaScript_Contents.aspx">Back to JavaScript Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="JavaScript_L5.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 4 -  FORM VALIDATION & MULTIPLE LINK</H2>
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
        stuff to the people at M.I.T.<BR style="direction: ltr">
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            FORM VALIDATION<br />
                                                        </div>
                                                        <span class="text"><span class="fancyfirst">J</span>avascript is a strong tool 
                                                        for validating forms before sending the content.<br />
                                                        The most obvious things to check for are whether an emailaddress has valid 
                                                        syntax, or if fields meant for values have text entered, etc.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his page covers the 4 most important 
                                                        techniques.<br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>onsider this form:<br />
                                                        <br />
                                                        <center>
                                                            <table border="1">
                                                                <tr>
                                                                    <td align="right" bgcolor="#008080">
                                                                        <font color="#ffffff" face="Arial">EMAIL:</font></td>
                                                                    <td>
                                                                        <div align="left">
                                                                            <p>
                                                                                <font face="Arial">
                                                                                <input name="Email" onchange="emailvalidation(this,'Invalid Email');" /></font></p>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" bgcolor="#008080">
                                                                        <font color="#ffffff" face="Arial">VALUE (0-5):</font></td>
                                                                    <td>
                                                                        <font face="Arial">
                                                                        <input name="Value" 
                                                                            onchange="valuevalidation(this, 0, 5,'Value MUST be an Integer in the range: 0-5');" /></font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" bgcolor="#008080">
                                                                        <font color="#ffffff" face="Arial">VALUE (Integer, 3-4 digits):</font></td>
                                                                    <td>
                                                                        <font face="Arial">
                                                                        <input name="Digits" 
                                                                            onchange="digitvalidation(this, 3, 4,'You MUST enter 3 or 4 Integer Digits','Integer');" /></font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" bgcolor="#008080">
                                                                        <font color="#ffffff" face="Arial">Do not leave this field empty:</font></td>
                                                                    <td>
                                                                        <font face="Arial">
                                                                        <input name="Whatever" /></font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" bgcolor="#008080" colspan="2">
                                                                        <font color="#ffffff">
                                                                        <div align="center">
                                                                            <center>
                                                                                <p>
                                                                                    <font face="Arial">
                                                                                    <input name="Button1" type="submit" 
                                                                                        value="Click here to validate all fields at once" /></font></p>
                                                                            </center>
                                                                        </div>
                                                                        </font>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </center>
                                                        <br />
                                                        <span class="note">Note:<br />
                                                        The form is not activated - Try entering values to see what happens.</span><br />
                                                        </span>
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            THE TECHNIQUE</div>
                                                        <p>
                                                            &nbsp;</p>
                                                        <p>
                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                <tr>
                                                                    <td class="main">
                                                                        <div align="left">
                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <span class="text"><span class="fancyfirst">T</span>he javascript to validate 
                                                                            inputs to a form consists of four different functions:<br />
                                                                            <br />
                                                                            <ul>
                                                                                <li><span class="style2">emailvalidation</span> will check to see if a value lives 
                                                                                    up to the general syntax of an email.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li><span class="style2">valuevalidation</span> will check to see if a value is 
                                                                                    within a certain interval.<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li><span class="style2">digitvalidation</span> will check to see if a value consits 
                                                                                    of a certain number of digits.
                                                                                    <br />
                                                                                    <br />
                                                                                </li>
                                                                                <li><span class="style2">emptyvalidation</span> will check to see if a field is 
                                                                                    empty or not.<br />
                                                                                </li>
                                                                            </ul>
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he validation can take place as the visitor 
                                                                            enters values, or all at once upon clicking the submit button after entering the 
                                                                            values.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">E</span>ach validation function can easily be 
                                                                            customized to fit the needs of the fields they are checking.
                                                                            <br />
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
                                                            THE CODE</div>
                                                        <p>
                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                <tr>
                                                                    <td class="main">
                                                                        <div align="left">
                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <span class="text"><span class="fancyfirst">T</span>he script explained on this 
                                                                            page actually consists of the four functions listed below:<br />
                                                                            <ul>
                                                                                <li><span class="note">emailvalidation(this,text)</span><br />
                                                                                    <br />
                                                                                </li>
                                                                                <li><span class="note">valuevalidation(this,min,max,text,type)</span><br />
                                                                                    <br />
                                                                                </li>
                                                                                <li><span class="note">digitvalidation(this,min,max,text,type)</span><br />
                                                                                    <br />
                                                                                </li>
                                                                                <li><span class="note">emptyvalidation(this,text)</span><br />
                                                                                </li>
                                                                            </ul>
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                                            <br />
                                                                            <span class="fancyfirst">Y</span>ou can either validate each field whenever it 
                                                                            is changed or you can validate all fields at one time when the submit button is 
                                                                            clicked.
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">A</span>t the last half of this page you can learn how 
                                                                            to use either of these methods along with the scripts.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">F</span>irst, let's look at the different validation 
                                                                            scripts.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table7">
                                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                                    emailvalidation(this,text)<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table5">
                                                                                                    Checking if the content has the general syntax of an email.<br />
                                                                                                    Optional parameters are:
                                                                                                    <br />
                                                                                                    <span class="style4">text</span>--text that will show in an alertbox if content 
                                                                                                    is illegal.<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    function emailvalidation(entered, alertbox)<br />
                                                                                                    {<br />
                                                                                                    // E-mail Validation by Henrik Petersen / NetKontoret<br />
                                                                                                    // Explained at www.echoecho.com/jsforms.htm<br />
                                                                                                    // Please do not remove this line and the two lines above.<br />
                                                                                                    with (entered)<br />
                                                                                                    {<br />
                                                                                                    apos=value.indexOf(&quot;@&quot;);
                                                                                                    <br />
                                                                                                    dotpos=value.lastIndexOf(&quot;.&quot;);<br />
                                                                                                    lastpos=value.length-1;<br />
                                                                                                    if (apos&lt;1 || dotpos-apos&lt;2 || lastpos-dotpos&gt;3 || lastpos-dotpos&lt;2)
                                                                                                    <br />
                                                                                                    {if (alertbox) {alert(alertbox);} return false;}<br />
                                                                                                    else {return true;}<br />
                                                                                                    }<br />
                                                                                                    }
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
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table7">
                                                                                                    <!-- perl mysql php web host -->valuevalidation(this,min,max,text,type)<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table5">
                                                                                                    Checking if the content is a number in a limited area.<br />
                                                                                                    Optional parameters are:<br />
                                                                                                    <span class="style4">min</span> --minimum value allowed in the field.<br />
                                                                                                    <span class="style4">max</span> --maximum value allowed in the field.<br />
                                                                                                    <span class="style4">text</span> --text that will show in an alertbox if content 
                                                                                                    is illegal.<br />
                                                                                                    <span class="style4">type</span> --enter &quot;I&quot; if only integers are allowed.<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    function valuevalidation(entered, min, max, alertbox, datatype)<br />
                                                                                                    {<br />
                                                                                                    // Value Validation by Henrik Petersen / NetKontoret<br />
                                                                                                    // Explained at www.echoecho.com/jsforms.htm<br />
                                                                                                    // Please do not remove this line and the two lines above.<br />
                                                                                                    with (entered)<br />
                                                                                                    {<br />
                                                                                                    checkvalue=parseFloat(value);<br />
                                                                                                    if (datatype)<br />
                                                                                                    {smalldatatype=datatype.toLowerCase();<br />
                                                                                                    if (smalldatatype.charAt(0)==&quot;i&quot;) {checkvalue=parseInt(value)};<br />
                                                                                                    }<br />
                                                                                                    if ((parseFloat(min)==min &amp;&amp; checkvalue&lt;min) || (parseFloat(max)==max &amp;&amp; 
                                                                                                    checkvalue&gt;max) || value!=checkvalue)<br />
                                                                                                    {if (alertbox!=&quot;&quot;) {alert(alertbox);} return false;}<br />
                                                                                                    else {return true;}<br />
                                                                                                    }<br />
                                                                                                    }
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
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table7">
                                                                                                    <!-- perl mysql php web host -->digitvalidation(this,min,max,text,type)<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table5">
                                                                                                    Checking if the content has a certain number of digits.<br />
                                                                                                    Optional parameters are:<br />
                                                                                                    <span class="style4">min</span> --minimum number of digits allowed in the field.<br />
                                                                                                    <span class="style4">max</span> --maximum number of digits allowed in the field.<br />
                                                                                                    <span class="style4">text</span> --text that will show in an alertbox if content 
                                                                                                    is illegal.<br />
                                                                                                    <span class="style4">type</span> --enter &quot;I&quot; if only integers are allowed.<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <br />
                                                                                                    function digitvalidation(entered, min, max, alertbox, datatype)<br />
                                                                                                    {<br />
                                                                                                    // Digit Validation by Henrik Petersen / NetKontoret<br />
                                                                                                    // Explained at www.echoecho.com/jsforms.htm<br />
                                                                                                    // Please do not remove this line and the two lines above.<br />
                                                                                                    with (entered)<br />
                                                                                                    {<br />
                                                                                                    checkvalue=parseFloat(value);<br />
                                                                                                    if (datatype)<br />
                                                                                                    {smalldatatype=datatype.toLowerCase();<br />
                                                                                                    if (smalldatatype.charAt(0)==&quot;i&quot;)
                                                                                                    <br />
                                                                                                    {checkvalue=parseInt(value); if (value.indexOf(&quot;.&quot;)!=-1) 
                                                                                                    {checkvalue=checkvalue+1}};<br />
                                                                                                    }<br />
                                                                                                    if ((parseFloat(min)==min &amp;&amp; value.length&lt;min) || (parseFloat(max)==max &amp;&amp; 
                                                                                                    value.length&gt;max) || value!=checkvalue)<br />
                                                                                                    {if (alertbox!=&quot;&quot;) {alert(alertbox);} return false;}<br />
                                                                                                    else {return true;}<br />
                                                                                                    }<br />
                                                                                                    }
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
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table7">
                                                                                                    <!-- perl mysql php web host -->emptyvalidation(this,text)<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table5">
                                                                                                    Checking if the field is empty.<br />
                                                                                                    Optional parameters are:<br />
                                                                                                    <span class="style4">text</span> --text that will show in an alertbox if content 
                                                                                                    is illegal.<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    function emptyvalidation(entered, alertbox)<br />
                                                                                                    {<br />
                                                                                                    // Emptyfield Validation by Henrik Petersen / NetKontoret<br />
                                                                                                    // Explained at www.echoecho.com/jsforms.htm<br />
                                                                                                    // Please do not remove this line and the two lines above.<br />
                                                                                                    with (entered)<br />
                                                                                                    {<br />
                                                                                                    if (value==null || value==&quot;&quot;)<br />
                                                                                                    {if (alertbox!=&quot;&quot;) {alert(alertbox);} return false;}<br />
                                                                                                    else {return true;}<br />
                                                                                                    }<br />
                                                                                                    }
                                                                                                    <br />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <!-- perl mysql php web host-->
                                                                            <br />
                                                                            <span class="note">Note:
                                                                            <br />
                                                                            All functions require <span class="style4">this</span> to be entered as a 
                                                                            parameter.<br />
                                                                            Simply enter the word &quot;<span class="style4">this</span>&quot; as a parameter when 
                                                                            calling one of the functions. This will pass the content of the current field to 
                                                                            the function.</span><br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>f <span class="note"><span class="style4">text</span></span> 
                                                                            is not entered when you call the function, it will not launch a popup box if an 
                                                                            error is detected.<br />
                                                                            However, the function will still return the value &quot;<span class="style2">false</span>&quot;.
                                                                            <br />
                                                                            This option is used when we check for several possible errors at one time. That 
                                                                            is: when all fields are checked once the submit button is clicked.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="style4"><span class="fancyfirst">U</span>SING THE VALIDATION 
                                                                            SCRIPTS</span><br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>here are two different ways to call these 
                                                                            functions.
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">O</span>ne is used when you want to check the field 
                                                                            immediately after an input is made to it.
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he other is when you want to check all fields 
                                                                            at one time, when the user clicks the submit button.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="note"><span class="style4">onChange</span> Validation</span>:<br />
                                                                            To force the browser to check each field immediately, we add an
                                                                            <span class="note"><span class="style4">onChange</span></span> to each of the
                                                                            <span class="style2">&lt;input&gt;</span> tags in the form.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">F</span>or example: if we wanted to check if the value 
                                                                            of a certain text field had a valid e-mail address we would add this:<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;input type=&quot;<span class="style1">text</span>&quot; 
                                                                                                    name=&quot;<span class="style1">Email</span>&quot; size=&quot;<span class="style1">20</span>&quot; 
                                                                                                    onChange=&quot;<span class="style1">emailvalidation(this,'The E-mail is not valid');</span>&quot;&gt;
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
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="note"><span class="style4">onSubmit</span> Validation</span><br />
                                                                            You might prefer to check all fields at one time when the user hits the submit 
                                                                            button.<br />
                                                                            To do this you should add an <span class="note"><span class="style4">onSubmit</span></span> 
                                                                            event handler to the <span class="style2">&lt;form&gt;</span>tag.
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>f, for example you have a form called &quot;<span 
                                                                                class="style2">myform</span>&quot; and you want all fields checked when the user 
                                                                            clicks 'submit' you should create a function that checks all the fields.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>his function should then be called by an
                                                                            <span class="note"><span class="style4">onSubmit</span>-event</span> added to 
                                                                            the <span class="style2">&lt;form&gt;</span> tag.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>f this function was called &quot;<span class="note"><span 
                                                                                class="style4">formvalidation()</span></span>&quot; the <span class="style2">
                                                                            &lt;form&gt;</span> tag would look like this:<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                                            style="background-color: #FFFFFF">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;form onsubmit=<span class="style1">&quot;return 
                                                                                                    formvalidation(this)&quot;&gt;</span>
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
                                                                            <span class="fancyfirst">T</span>he function that checks the entire form will 
                                                                            either return a value of false or true. If it's true the form will be submitted 
                                                                            - if it's false the submission will be cancelled.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">A</span> script that checks all fields in a form could 
                                                                            look like this:<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table7">
                                                                                                    <!-- perl mysql php web host -->function formvalidation(thisform)<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table5">
                                                                                                    This function checks the entire form before it is submitted.<br />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    function formvalidation(thisform)<br />
                                                                                                    {<br />
                                                                                                    with (thisform)<br />
                                                                                                    {<br />
                                                                                                    if (emailvalidation(<span class="style1">Email</span>,&quot;Illegal E-mail&quot;)==false) 
                                                                                                    {<span class="style1">Email</span>.focus(); return false;};<br />
                                                                                                    if (valuevalidation(<span class="style1">Value</span>,0,5,&quot;Value MUST be in the 
                                                                                                    range 0-5&quot;)==false) {<span class="style1">Value</span>.focus(); return false;};<br />
                                                                                                    if (digitvalidation(<span class="style1">Digits</span>,3,4,&quot;You MUST enter 3 or 
                                                                                                    4 integer digits&quot;,&quot;I&quot;)==false) {<span class="style1">Digits</span>.focus(); 
                                                                                                    return false;};<br />
                                                                                                    if (emptyvalidation(<span class="style1">Whatever</span>,&quot;The textfield is 
                                                                                                    empty&quot;)==false) {<span class="style1">Whatever</span>.focus(); return false;};<br />
                                                                                                    }<br />
                                                                                                    }
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
                                                                            The above function works in addition to the four functions listed at the top of 
                                                                            this page.<br />
                                                                            Furthermore, the function needs to be customized to fit your form.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">Y</span>ou will need to enter the appropriate form 
                                                                            field names used on your own form. (Instead of &quot;<span class="style4">E-mail</span>&quot;, 
                                                                            &quot;<span class="style4">Value</span>&quot;, &quot;<span class="style4">Digits</span>&quot; and &quot;<span 
                                                                                class="style4">Whatever</span>&quot; in this example).<br />
                                                                            <br />
                                                                            <span class="fancyfirst">F</span>urthermore you would need to call the 
                                                                            appropriate functions depending on which check you would like to perform on each 
                                                                            form field.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">(</span>In the example each field is checked by a 
                                                                            different function. You could as well have each field checked by the same 
                                                                            function. If for example the form had 4 fields that should all contain an e-mail 
                                                                            address you would add an emailvalidation to each. )<br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            </span>
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                                                <br />
                                                                                </span>
                                                                            <div align="center" class="headline" 
                                                                                style="color: #800000; font-size: 22px; font-weight: bold">
                                                                                EXAMPLE</div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </p>
                                                        <p style="background-color: #FFFFFF">
                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                <tr>
                                                                    <td class="main">
                                                                        <div align="left">
                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <span class="text"><span class="fancyfirst">C</span>lick
                                                                            <a href="http://www.echoecho.com/samplejsforms.htm"><span class="link">here</span></a> 
                                                                            to see a sample page using this script.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="style4"><span class="fancyfirst">T</span>HE ENTIRE SCRIPT</span><br />
                                                                            If you want to use all four validation scripts and the script that will check 
                                                                            all fields at once, feel free to copy the entire code listed below to your page.<br />
                                                                            <br />
                                                                            <span class="note"><span class="fancyfirst">N</span>ote:
                                                                            <br />
                                                                            The function called <span class="style4">formvalidation()</span> needs to be 
                                                                            customized to fit your own form.</span><br />
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
                                                                                                    <br />
                                                                                                    function emailvalidation(entered, alertbox)<br />
                                                                                                    {<br />
                                                                                                    // E-mail Validation by Henrik Petersen / NetKontoret<br />
                                                                                                    // Explained at www.echoecho.com/jsforms.htm<br />
                                                                                                    // Please do not remove this line and the two lines above.<br />
                                                                                                    with (entered)<br />
                                                                                                    {<br />
                                                                                                    apos=value.indexOf(&quot;@&quot;);
                                                                                                    <br />
                                                                                                    dotpos=value.lastIndexOf(&quot;.&quot;);<br />
                                                                                                    lastpos=value.length-1;<br />
                                                                                                    if (apos&lt;1 || dotpos-apos&lt;2 || lastpos-dotpos&gt;3 || lastpos-dotpos&lt;2)
                                                                                                    <br />
                                                                                                    {if (alertbox) {alert(alertbox);} return false;}<br />
                                                                                                    else {return true;}<br />
                                                                                                    }<br />
                                                                                                    }<br />
                                                                                                    <br />
                                                                                                    function valuevalidation(entered, min, max, alertbox, datatype)<br />
                                                                                                    {<br />
                                                                                                    // Value Validation by Henrik Petersen / NetKontoret<br />
                                                                                                    // Explained at www.echoecho.com/jsforms.htm<br />
                                                                                                    // Please do not remove this line and the two lines above.<br />
                                                                                                    with (entered)<br />
                                                                                                    {<br />
                                                                                                    checkvalue=parseFloat(value);<br />
                                                                                                    if (datatype)<br />
                                                                                                    {smalldatatype=datatype.toLowerCase();<br />
                                                                                                    if (smalldatatype.charAt(0)==&quot;i&quot;) {checkvalue=parseInt(value)};<br />
                                                                                                    }<br />
                                                                                                    if ((parseFloat(min)==min &amp;&amp; checkvalue&lt;min) || (parseFloat(max)==max &amp;&amp; 
                                                                                                    checkvalue&gt;max) || value!=checkvalue)<br />
                                                                                                    {if (alertbox!=&quot;&quot;) {alert(alertbox);} return false;}<br />
                                                                                                    else {return true;}<br />
                                                                                                    }<br />
                                                                                                    }<br />
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    function digitvalidation(entered, min, max, alertbox, datatype)<br />
                                                                                                    {<br />
                                                                                                    // Digit Validation by Henrik Petersen / NetKontoret<br />
                                                                                                    // Explained at www.echoecho.com/jsforms.htm<br />
                                                                                                    // Please do not remove this line and the two lines above.<br />
                                                                                                    with (entered)<br />
                                                                                                    {<br />
                                                                                                    checkvalue=parseFloat(value);<br />
                                                                                                    if (datatype)<br />
                                                                                                    {smalldatatype=datatype.toLowerCase();<br />
                                                                                                    if (smalldatatype.charAt(0)==&quot;i&quot;)
                                                                                                    <br />
                                                                                                    {checkvalue=parseInt(value); if (value.indexOf(&quot;.&quot;)!=-1) 
                                                                                                    {checkvalue=checkvalue+1}};<br />
                                                                                                    }<br />
                                                                                                    if ((parseFloat(min)==min &amp;&amp; value.length&lt;min) || (parseFloat(max)==max &amp;&amp; 
                                                                                                    value.length&gt;max) || value!=checkvalue)<br />
                                                                                                    {if (alertbox!=&quot;&quot;) {alert(alertbox);} return false;}<br />
                                                                                                    else {return true;}<br />
                                                                                                    }<br />
                                                                                                    }<br />
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    function emptyvalidation(entered, alertbox)<br />
                                                                                                    {<br />
                                                                                                    // Emptyfield Validation by Henrik Petersen / NetKontoret<br />
                                                                                                    // Explained at www.echoecho.com/jsforms.htm<br />
                                                                                                    // Please do not remove this line and the two lines above.<br />
                                                                                                    with (entered)<br />
                                                                                                    {<br />
                                                                                                    if (value==null || value==&quot;&quot;)<br />
                                                                                                    {if (alertbox!=&quot;&quot;) {alert(alertbox);} return false;}<br />
                                                                                                    else {return true;}<br />
                                                                                                    }<br />
                                                                                                    }<br />
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    function formvalidation(thisform)<br />
                                                                                                    {<br />
                                                                                                    // This function checks the entire form before it is submitted<br />
                                                                                                    // Note: This function needs to be customized to fit your form<br />
                                                                                                    with (thisform)<br />
                                                                                                    {<br />
                                                                                                    if (emailvalidation(Email,&quot;Illegal E-mail&quot;)==false) {Email.focus(); return 
                                                                                                    false;};<br />
                                                                                                    if (valuevalidation(Value,0,5,&quot;Value MUST be in the range 0-5&quot;)==false) 
                                                                                                    {Value.focus(); return false;};<br />
                                                                                                    if (digitvalidation(Digits,3,4,&quot;You MUST enter 3 or 4 integer 
                                                                                                    digits&quot;,&quot;I&quot;)==false) {Digits.focus(); return false;};<br />
                                                                                                    if (emptyvalidation(Whatever,&quot;The textfield is empty&quot;)==false) 
                                                                                                    {Whatever.focus(); return false;};<br />
                                                                                                    }<br />
                                                                                                    }<br />
                                                                                                    &lt;/script&gt;<br />
                                                                                                    <br />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <!-- perl mysql php web host-->
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline" 
                                                                                style="font-size: 22px; font-weight: bold; color: #800000">
                                                                                MULTIPLE LINKS</div>
                                                                            <br />
                                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                                <tr>
                                                                                    <td class="main">
                                                                                        <div align="left">
                                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                                            <span class="text"><span class="fancyfirst">J</span>avascript can be used to 
                                                                                            open two pages at once.<br />
                                                                                            This is especially convenient when working with frames.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">Y</span>ou can easily make a single link change the 
                                                                                            content of two different frames.
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>his article will teach you how!<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline" 
                                                                                                style="font-size: 22px; font-weight: bold; color: #800000">
                                                                                                THE TECHNIQUE</div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>his script will let us open two or more pages 
                                                                                            when a single link is clicked.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">F</span>irst we neutralize the html link. This is done 
                                                                                            by letting the link point to &quot;<span class="style2">#</span>&quot; which means it 
                                                                                            points to nowhere and thus has no effect in HTML.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he trick is, that at the same time, we add an
                                                                                            <span class="note"><span class="style4">onClick</span> event</span> to the link. 
                                                                                            This event will, in return, execute our small javascript that opens the two 
                                                                                            pages.
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">I</span>n this article we will limit the script to open 
                                                                                            two pages.<br />
                                                                                            But as we said, the technique can easily be used to open as many pages as you 
                                                                                            like from a single link.
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            </span>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            </span>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            THE CODE</div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">A</span>ssuming you want a link to 
                                                            open Yahoo in a frame called bannerframe and AltaVista in a frame called 
                                                            mainframe the code looks like this:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host -->&lt;a href=&quot;#&quot; onClick=&quot;<br />
                                                                                    parent.<span class="style1">bannerframe</span>.location='<span class="style1">http://www.Yahoo.com</span>';<br />
                                                                                    parent.<span class="style1">mainframe</span>.location='<span class="style1">http://www.altavista.com</span>';<br />
                                                                                    return false;<br />
                                                                                    &quot;&gt;<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            As you can see, we simply add a:                                                             <br />
                                                            <br />
                                                            <center>
                                                                <span class="note">parent.<span class="style4">framename</span>.location='<span 
                                                                    class="style4">linkname</span>';</span></center>
                                                            <br />
                                                            for each page we want to open. You can, of course, add as many links as you 
                                                            like.
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <span class="note"><span class="fancyfirst">N</span>OTE:<br />
                                                            The <span class="style4">onClick event</span> is enclosed by double quotes.<br />
                                                            The javascript links are enclosed by single quotes.</span><br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he <span class="note"><span class="style4">
                                                            return false</span> statement</span> makes sure that the browser doesn't even 
                                                            try to interpret the html link (pointing to #).
                                                            <br />
                                                            TThis is necessary because sometimes a link to an unexisting anchor forces the 
                                                            browser to go to the top of the page (which might not be what we want).<br />
                                                            </span></p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            EXAMPLE</div>
                                                        <span class="text" style="font-weight: normal; color: #000000">
                                                        <br />

                                                        <br />
                                                                        <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                            <tr>
                                                                                <td class="main">
                                                                                    <div align="left">
                                                                                        <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                                        <span class="text"><span class="fancyfirst">T</span>o let you try out the script 
                                                                                        we produced a sample page.<br />
                                                                                        <br />
                                                                                        <span class="fancyfirst">C</span>lick
                                                                                        <a href="http://www.echoecho.com/samplepage2links.htm"><span class="link">here</span></a> 
                                                                                        to open the sample page.<br />
                                                                                        </span>
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
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
                                                PostBackUrl="~/JavaScript_L3.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/JavaScript_L5.aspx">Next &gt;&gt;</asp:LinkButton>
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
