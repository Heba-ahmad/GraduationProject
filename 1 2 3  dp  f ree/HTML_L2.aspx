<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="HTML_L2.aspx.cs" Inherits="_Default" %>

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
        .style1
        {
            width: 219px;
        }
        .style2
        {
            width: 192px;
        }
        .style3
        {
            width: 367px;
        }
        .style4
        {
            width: 223px;
        }
        .style5
        {
            width: 148px;
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
        DestinationPageUrl="~/HTML_L2.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                <img alt="" src="images/html.jpg" style="width: 204px; height: 86px" />&nbsp;&nbsp;<br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L1.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/HTML_Contents.aspx">Back to HTML Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="HTML_L3.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 2 - HTML TEXT</H2>
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
                                                        <span class="text"><span class="fancyfirst">T</span>o enter text on your pages - 
                                                        all you have to do is simply enter the text.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you do not specify any attributes for text it 
                                                        will use the default size, font etc. of the visitor's browser.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>rowsers can only show fonts available on the 
                                                        visitor's PC.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>herefore you are limited to using the fonts 
                                                        that are available on almost any computer.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you need to use a fancy font, you should use 
                                                        your graphics program to make an image with the text. This will assure that the 
                                                        visitor will see it - even if he doesn't have the fancy font you're using.<br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>ince images take up much more space than plain 
                                                        text, thus increasing download time, you should use this option with care.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>n the following pages you will learn how to 
                                                        customize the font settings - both on normal text and text that works as a link.<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>urthermore, you will learn to control how the 
                                                        text aligns on your pages.<br />
                                                        <br />
                                                        <span class="fancyfirst">N</span>ow click the Read More link to get started...<br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            BASE FONT</div>
                                                        <br />
                                                        </span>
                                                        <p>
                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                <tr>
                                                                    <td class="main">
                                                                        <div align="left">
                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <span class="text"><span class="fancyfirst">T</span>o specify the overall font 
                                                                            for your page add the <span class="style2">&lt;basefont&gt;</span> tag at the 
                                                                            beginning of the <span class="style2">&lt;body&gt;</span> section.
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">E</span>xample: The page as it looks in the browser.<br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                                            <tr>
                                                                                                <td class="table3" style="background-color: #E5E5E5">
                                                                                                    <!-- perl mysql php web host --><font color="green" 
                                                                                                        face="arial, verdana, courier" size="4">Hello! This is my page.<br />
                                                                                                    All text looks the same<br />
                                                                                                    since I only specified a basefont.</font></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <!-- perl mysql php web host-->
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">H</span>TML: The code to produce the above example.<br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                                            <tr>
                                                                                                <td class="table1" style="background-color: #E5E5E5">
                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                    &lt;head&gt;<br />
                                                                                                    &lt;title&gt;my page&lt;/title&gt;<br />
                                                                                                    &lt;/head&gt;<br />
                                                                                                    <br />
                                                                                                    &lt;body&gt;<br />
                                                                                                    <span class="style1" style="color: #FF0000">&lt;basefont face=&quot;arial, verdana, 
                                                                                                    courier&quot; size=&quot;4&quot; color=&quot;green&quot;&gt;</span><br />
                                                                                                    Hello! This is my page.&lt;br&gt;<br />
                                                                                                    All text looks the same&lt;br&gt;<br />
                                                                                                    since I only specified a basefont.&lt;br&gt;<br />
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
                                                                            <span class="fancyfirst">T</span>he color attribute selects the desired color 
                                                                            for your text. The face attribute selects the desired font.
                                                                            <br />
                                                                            <br />
                                                                            <span class="note"><span class="fancyfirst">N</span>ote:<br />
                                                                            If you enter a list of fonts, like in the example, the browser will use the 
                                                                            first font in the list available on the visitor's computer.</span><br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he size attribute specifies the desired size, 
                                                                            between 1 (smallest) and 7 (biggest).<br />
                                                                            </span>
                                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <div align="center" class="headline">
                                                                                FONT</div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </p>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">T</span>he <span class="style2">
                                                            &lt;font&gt;</span> tag will change the font.<br />
                                                            <br />
                                                            <span class="fancyfirst">E</span>xample: How the output looks in the browser.<br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #E5E5E5" width="450">
                                                                            <tr>
                                                                                <td class="table3">
                                                                                    <!-- perl mysql php web host --><font color="green" 
                                                                                        face="arial, verdana, courier" size="4">Hello! This is my page.
                                                                                    <br />
                                                                                    <br />
                                                                                    <font color="red" face="arial" size="2">This local text looks different.</font><br />
                                                                                    <br />
                                                                                    This text looks like the first line.</font><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">H</span>TML: The code to produce the above example.<br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="table1" style="background-color: #E5E5E5">
                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                    &lt;head&gt;<br />
                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                    &lt;/head&gt;<br />
                                                                                    <br />
                                                                                    &lt;body&gt;<br />
                                                                                    &lt;basefont color=&quot;green&quot; face=&quot;arial&quot; size=&quot;4&quot;&gt;<br />
                                                                                    Hello! This is my page.&lt;br&gt;&lt;br&gt;<br />
                                                                                    <span class="style1" style="color: #FF0000">&lt;font color=&quot;red&quot; face=&quot;arial&quot; 
                                                                                    size=&quot;2&quot;&gt;</span><br />
                                                                                    This local text looks different.<span class="style1" style="color: #FF0000"><br />
                                                                                    &lt;/font&gt;</span><br />
                                                                                    &lt;br&gt;&lt;br&gt;<br />
                                                                                    This text looks like the first line.<br />
                                                                                    &lt;/body&gt;<br />
                                                                                    &lt;/html&gt;
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
                                                            <span class="fancyfirst">T</span>he color attribute selects the desired color 
                                                            for your text. The face attribute selects the desired font.
                                                            <br />
                                                            <br />
                                                            <span class="note"><span class="fancyfirst">N</span>ote:
                                                            <br />
                                                            If you enter a list of fonts, like in the example, the browser will use the 
                                                            first font in the list available on the visitor's computer.</span></span></p>
                                                        <div align="center" class="headline">
                                                            TEXT LINKS</div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">T</span>he tags used to produce 
                                                            links are the <span class="style2">&lt;a&gt;</span> and <span class="style2">&lt;/a&gt;</span>.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he <span class="style2">&lt;a&gt;</span> tells where 
                                                            the link should start and the <span class="style2">&lt;/a&gt;</span> indicates where 
                                                            the link ends.<br />
                                                            <br />
                                                            <span class="fancyfirst">E</span>verything between these two will work as a 
                                                            link.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he target of the link is added to the
                                                            <span class="style2">&lt;a&gt;</span> tag using
                                                            <br />
                                                            the <span class="style2">href=&quot;<span class="style4">http://www.whateverpage.com</span>&quot;</span> 
                                                            setting.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he example below shows how to make the word
                                                            <span class="style4">here</span> work as a link to yahoo.<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="table1" style="background-color: #E5E5E5">
                                                                                    <!-- perl mysql php web host -->Click <span class="style1">&lt;a 
                                                                                    href=&quot;http://www.yahoo.com&quot;&gt;</span>here<span class="style1">&lt;/a&gt;</span> to go to 
                                                                                    yahoo.<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">Y</span>ou simply:
                                                            <br />
                                                            <ul>
                                                                <li>Specify the target in the <span class="style2">&lt;a href=&quot; &quot;&gt;</span>.<br />
                                                                    <br />
                                                                </li>
                                                                <li>Then add the text that should work as a link.<br />
                                                                    <br />
                                                                </li>
                                                                <li>Finally add an <span class="style2">&lt;/a&gt;</span> tag to indicate where the link 
                                                                    ends.<br />
                                                                </li>
                                                            </ul>
                                                            </span>
                                                        </p>
                                                        <div align="center" class="headline">
                                                            TEXT FORMAT</div>
                                                        <p>
                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                <tr>
                                                                    <td class="main">
                                                                        <div align="left">
                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <big><big>T</big></big>hese are the tags for text formats:<br />
                                                                            <br />
                                                                            <table border="1" cellpadding="3" style="font-size: 14px">
                                                                                <tr>
                                                                                    <td bgcolor="#000000">
                                                                                        <b><font face="Arial"><small><font color="#ff8080">&lt;b&gt;</font><font 
                                                                                            color="#c0c0c0">text</font><font color="#ff8080">&lt;/b&gt;</font></small></font></b></td>
                                                                                    <td bgcolor="#ffffff">
                                                                                        <font color="#000000" face="Arial">writes text as bold</font></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td bgcolor="#000000">
                                                                                        <b><font face="Arial"><small><font color="#ff8080">&lt;i&gt;</font><font 
                                                                                            color="#c0c0c0"><i>text</i></font><font color="#ff8080">&lt;/i&gt;</font></small></font></b></td>
                                                                                    <td bgcolor="#ffffff">
                                                                                        <font color="#000000" face="Arial">writes text in italics</font></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td bgcolor="#000000">
                                                                                        <b><font face="Arial"><small><font color="#ff8080">&lt;u&gt;</font><font 
                                                                                            color="#c0c0c0"><u>text</u></font><font color="#ff8080">&lt;/u&gt;</font></small></font></b></td>
                                                                                    <td bgcolor="#ffffff">
                                                                                        <font color="#000000" face="Arial">writes underlined text</font></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td bgcolor="#000000">
                                                                                        <b><font face="Arial"><small><font color="#ff8080">&lt;sub&gt;</font><font 
                                                                                            color="#c0c0c0"><sub>text</sub></font><font color="#ff8080">&lt;/sub&gt;</font></small></font></b></td>
                                                                                    <td bgcolor="#ffffff">
                                                                                        <font color="#000000" face="Arial">lowers text and makes it smaller</font></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td bgcolor="#000000">
                                                                                        <b><font face="Arial"><small><font color="#ff8080">&lt;sup&gt;</font><sup><font 
                                                                                            color="#c0c0c0">text</font></sup><font color="#ff8080">&lt;/sup&gt;</font></small></font></b></td>
                                                                                    <td bgcolor="#ffffff">
                                                                                        <font color="#000000" face="Arial">lifts text and makes it smaller</font></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td bgcolor="#000000">
                                                                                        <b><font face="Arial"><small><font color="#ff8080">&lt;blink&gt;</font><font 
                                                                                            color="#c0c0c0"><blink>text</blink></font><font color="#ff8080">&lt;/blink&gt;</font></small></font></b></td>
                                                                                    <td bgcolor="#ffffff">
                                                                                        <font color="#000000" face="Arial">guess yourself! (Note: Netscape only.)</font></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td bgcolor="#000000">
                                                                                        <b><font face="Arial"><small><font color="#ff8080">&lt;strike&gt;</font><font 
                                                                                            color="#c0c0c0"><strike>text</strike></font><font color="#ff8080">&lt;/strike&gt;</font></small></font></b></td>
                                                                                    <td bgcolor="#ffffff">
                                                                                        <font color="#000000" face="Arial">strikes a line through the text</font></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td bgcolor="#000000">
                                                                                        <b><font face="Arial"><small><font color="#ff8080">&lt;tt&gt;</font><font 
                                                                                            color="#c0c0c0"><tt>text</tt></font><font color="#ff8080">&lt;/tt&gt;</font></small></font></b></td>
                                                                                    <td bgcolor="#ffffff">
                                                                                        <font color="#000000" face="Arial">writes text as on a classic typewriter</font></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td bgcolor="#000000">
                                                                                        <b><font face="Arial"><small><font color="#ff8080">&lt;pre&gt;</font><font 
                                                                                            color="#c0c0c0"><tt>text</tt></font><font color="#ff8080">&lt;/pre&gt;</font></small></font></b></td>
                                                                                    <td bgcolor="#ffffff">
                                                                                        <font color="#000000" face="Arial">writes text exactly as it is, including 
                                                                                        spaces.</font></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td bgcolor="#000000">
                                                                                        <b><font face="Arial"><small><font color="#ff8080">&lt;em&gt;</font><font 
                                                                                            color="#c0c0c0">text</font><font color="#ff8080">&lt;/em&gt;</font></small></font></b></td>
                                                                                    <td bgcolor="#ffffff">
                                                                                        <font color="#000000" face="Arial">usually makes text italic</font></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td bgcolor="#000000">
                                                                                        <b><small><font color="#ff8080" face="Arial">&lt;strong&gt;</font><font 
                                                                                            color="#c0c0c0" face="Arial">text</font><font color="#ff8080" face="Arial">&lt;strong&gt;</font></small></b></td>
                                                                                    <td bgcolor="#ffffff">
                                                                                        <font color="#000000" face="Arial">usually makes text bold</font></td>
                                                                                </tr>
                                                                            </table>
                                                                            <span class="text">
                                                                            <br />
                                                                            <span class="note">Note:<br />
                                                                            The <span class="style2">&lt;blink&gt;</span> tag is only supported by Netscape 
                                                                            browsers, and should be avoided.</span><br />
                                                                            </span>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </p>
                                                        <div align="center" class="headline">
                                                            TEXT SIZE</div>
                                                        <p>
                                                            <big>T</big>hese are the tags for changing the font size.<br />
                                                            <br />
                                                            <table border="1" cellpadding="3" style="font-size: 14px">
                                                                <tr>
                                                                    <td bgcolor="#000000">
                                                                        <b><small><font face="Arial"><font color="#ff8080">&lt;big&gt;</font><font 
                                                                            color="#c0c0c0">text</font><font color="#ff8080">&lt;/big&gt;</font></font></small></b></td>
                                                                    <td bgcolor="#ffffff">
                                                                        <font color="#000000" face="Arial">increase the size by one</font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#000000">
                                                                        <b><small><font face="Arial"><font color="#ff8080">&lt;small&gt;</font><font 
                                                                            color="#c0c0c0">text</font><font color="#ff8080">&lt;/small&gt;</font></font></small></b></td>
                                                                    <td bgcolor="#ffffff">
                                                                        <font color="#000000" face="Arial">decrease the size by one</font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#000000">
                                                                        <b><font face="Arial"><small><font color="#ff8080">&lt;h1&gt;</font></small><font 
                                                                            color="#c0c0c0"><big><big><big>text</big></big></big></font><small><font 
                                                                            color="#ff8080">&lt;/h1&gt;</font></small></font></b></td>
                                                                    <td bgcolor="#ffffff">
                                                                        <font color="#000000" face="Arial">writes text in biggest heading</font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#000000">
                                                                        <b><small><font face="Arial"><font color="#ff8080">&lt;h6&gt;</font><font 
                                                                            color="#c0c0c0">text</font><font color="#ff8080">&lt;/h6&gt; </font></font>
                                                                        </small></b>
                                                                    </td>
                                                                    <td bgcolor="#ffffff">
                                                                        <font color="#000000" face="Arial">writes text in smallest heading</font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#000000">
                                                                        <b><small><font color="#ff8080" face="Arial">&lt;font size=&quot;1&quot;&gt;</font></small><font 
                                                                            color="#c0c0c0" face="Arial" size="1">text</font><small><font 
                                                                            color="#ff8080" face="Arial">&lt;/font&gt;</font></small></b></td>
                                                                    <td bgcolor="#ffffff">
                                                                        <font color="#000000" face="Arial">writes text in smallest fontsize. (8 pt)</font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#000000">
                                                                        <small><b><font face="Arial"><font color="#ff8080">&lt;font size=&quot;7&quot;&gt;</font><br />
                                                                        <font color="#c0c0c0" face="Arial" size="7">text</font><font color="#ff8080" 
                                                                            face="Arial">&lt;/font&gt;</font></font></b></small></td>
                                                                    <td bgcolor="#ffffff">
                                                                        <font color="#000000" face="Arial">writes text in biggest fontsize (36 pt)</font></td>
                                                                </tr>
                                                            </table>
                                                            <span class="text">
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he <span class="style2">&lt;small&gt;</span> and
                                                            <span class="style2">&lt;big&gt;</span> tags are special in that they can be repeated. 
                                                            If you want to increase the font size with a factor two, then you could do it 
                                                            like this:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="table1" style="background-color: #E5E5E5">
                                                                                    <!-- perl mysql php web host -->bla bla bla <span class="style1" 
                                                                                        style="color: #FF0000">&lt;big&gt;&lt;big&gt;</span>whatever<span class="style1" 
                                                                                        style="color: #FF0000">&lt;/big&gt;&lt;/big&gt;</span> bla bla bla<br />
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
                                                            While the font tag lets you specify font attributes in plain HTML, you really 
                                                            should look into the tutorial on CSS to learn how to get full, flexible and much 
                                                            more advanced control of your text.</span></span></p>
                                                        <p>
                                                            <span class="text"><span class="note">
                                                            <br />
                                                            </span></span>
                                                        </p>
                                                        <div align="center" class="headline">
                                                            TEXT LAYOUT</div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">T</span>hese tags will let you 
                                                            control the layout.<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #E5E5E5" width="450">
                                                                            <tr>
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>HTML</td>
                                                                                <td class="table8">
                                                                                    EXPLANATION<br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <span class="style1" style="color: #FF0000">&lt;p&gt;</span>text<span class="style1" 
                                                                                        style="color: #FF0000">&lt;/p&gt;</span></td>
                                                                                <td class="table5">
                                                                                    Adds a paragraph break after the text.
                                                                                    <br />
                                                                                    (2 linebreaks).<br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <span class="style1" style="color: #FF0000">&lt;p align=&quot;left&quot;&gt;</span>text<span 
                                                                                        class="style1" style="color: #FF0000">&lt;/p&gt;</span></td>
                                                                                <td class="table5">
                                                                                    Left justify text in paragraph.<br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <span class="style1" style="color: #FF0000">&lt;p align=&quot;center&quot;&gt;</span>text<span 
                                                                                        class="style1" style="color: #FF0000">&lt;/p&gt;</span></td>
                                                                                <td class="table5">
                                                                                    Center text in paragraph.<br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <span class="style1" style="color: #FF0000">&lt;p align=&quot;right&quot;&gt;</span>text<span 
                                                                                        class="style1" style="color: #FF0000">&lt;/p&gt;</span></td>
                                                                                <td class="table5">
                                                                                    Right justify text in paragraph.<br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    text<span class="style1" style="color: #FF0000">&lt;br&gt;</span></td>
                                                                                <td class="table5">
                                                                                    Adds a single linebreak where the tag is.
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <span class="style1" style="color: #FF0000">&lt;nobr&gt;</span>text<span 
                                                                                        class="style1" style="color: #FF0000">&lt;/nobr&gt;</span></td>
                                                                                <td class="table5">
                                                                                    Turns off automatic linebreaks<br />
                                                                                    - even if text is wider than the window.<br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    text<span class="style1" style="color: #FF0000">&lt;wbr&gt;</span></td>
                                                                                <td class="table5">
                                                                                    Allows the browser to insert a linebreak<br />
                                                                                    at exactly this point<br />
                                                                                    - even if the text is within &lt;nobr&gt; tags.<br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <span class="style1" style="color: #FF0000">&lt;center&gt;</span>text<span 
                                                                                        class="style1" style="color: #FF0000">&lt;/center&gt;</span></td>
                                                                                <td class="table5">
                                                                                    Center text.<br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <span class="style1" style="color: #FF0000">&lt;div align=&quot;center&quot;&gt;</span>text<span 
                                                                                        class="style1" style="color: #FF0000">&lt;/div&gt;</span></td>
                                                                                <td class="table5">
                                                                                    Center text.<br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <span class="style1" style="color: #FF0000">&lt;div align=&quot;left&quot;&gt;</span>text<span 
                                                                                        class="style1" style="color: #FF0000">&lt;/div&gt;</span></td>
                                                                                <td class="table5">
                                                                                    Left justify text.<br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <span class="style1" style="color: #FF0000">&lt;div align=&quot;right&quot;&gt;</span>text<span 
                                                                                        class="style1" style="color: #FF0000">&lt;/div&gt;</span></td>
                                                                                <td class="table5">
                                                                                    Right justify text.<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">E</span>xample: the difference between layout tags:<br />
                                                            </span>
                                                            <table bgcolor="#aaaabb" border="1" style="width: 475px; margin-bottom: 0px">
                                                                <tr>
                                                                    <td align="middle" bgcolor="#cccccc" class="style3">
                                                                        <b>RESULT</b></td>
                                                                    <td align="middle" bgcolor="#cccccc" class="style5">
                                                                        <b>HTML</b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#00aa00" class="style3" valign="top">
                                                                        <font face="arial" size="2">Hello world- a linebreak does not insert a linebreak 
                                                                        in HTML<br />
                                                                        <br />
                                                                        <br />
                                                                        <p>
                                                                            you will need</p>
                                                                        <p align="right">
                                                                            to insert</p>
                                                                        <p align="left">
                                                                            special tags</p>
                                                                        that will insert<br />
                                                                        linebreaks<br />
                                                                        where<br />
                                                                        you want it!<br />
                                                                        <br />
                                                                        Another method is to write a sentence, that is long enough to force a linebreak.<br />
                                                                        <br />
                                                                        <nobr>
                                                                        This option can however be turned off<WBR>with the nobr-tag.<WBR>unless a wbr is 
                                                                        used to force it!</nobr><br />
                                                                        <br />
                                                                        <br />
                                                                        <center>
                                                                            You can also center</center>
                                                                        And turn the center off
                                                                        <div align="center">
                                                                            And on!</div>
                                                                        <div align="left">
                                                                            Go left!</div>
                                                                        <div align="right">
                                                                            Go right!</div>
                                                                        </font>
                                                                    </td>
                                                                    <td bgcolor="#333333" class="style5" valign="top">
                                                                        <font color="#ff9999" face="arial" size="2">Hello world -<br />
                                                                        a linebreak does not<br />
                                                                        insert a linebreak in HTML<br />
                                                                        <p>
                                                                            <font color="#ff0000">&lt;p&gt;</font>you will need<font color="#ff0000">&lt;/p&gt;</font></p>
                                                                        <p>
                                                                            <font color="#ff0000">&lt;p align=&quot;right&quot;&gt;</font>to insert<font color="#ff0000">&lt;/p&gt;</font></p>
                                                                        <p>
                                                                            <font color="#ff0000">&lt;p align=&quot;left&quot;&gt;</font>special tags<font color="#ff0000">&lt;/p&gt;</font></p>
                                                                        that will insert<font color="#ff0000">&lt;br&gt;</font><br />
                                                                        linebreaks<font color="#ff0000">&lt;br&gt;</font><br />
                                                                        where<font color="#ff0000">&lt;br&gt;</font><br />
                                                                        you want it!<font color="#ff0000">&lt;br&gt;</font><br />
                                                                        <font color="#ff0000">&lt;br&gt;</font><br />
                                                                        Another method is of course to write a sentence, that is long enough to force a 
                                                                        linebreak.<font color="#ff0000">&lt;br&gt;</font><br />
                                                                        <font color="#ff0000">&lt;br&gt;</font><br />
                                                                        <font color="#ff0000">&lt;nobr&gt;</font>This option can however be turned off<font 
                                                                            color="#ff0000">&lt;wbr&gt;</font>with the nobr tag,<font color="#ff0000">&lt;wbr&gt;</font>unless 
                                                                        a wbr is used to force it!<font color="#ff0000">&lt;/nobr&gt;</font><br />
                                                                        <br />
                                                                        <font color="#ff0000">&lt;center&gt;</font>You can center<font color="#ff0000">&lt;/center&gt;</font><br />
                                                                        And turn the center off<br />
                                                                        <font color="#ff0000">&lt;div align=&quot;center&quot;&gt;</font>And on!<font color="#ff0000">&lt;/div&gt;</font><br />
                                                                        <font color="#ff0000">&lt;div align=&quot;left&quot;&gt;</font>Go left!<font color="#ff0000">&lt;/div&gt;</font><br />
                                                                        <font color="#ff0000">&lt;div align=&quot;right&quot;&gt;</font>Go Right!<font color="#ff0000">&lt;/div&gt;</font></font></td>
                                                                </tr>
                                                            </table>
                                                            <span class="text">
                                                            <br />
                                                            Note in particular the difference between the span class="style2">&lt;p&gt;</span> 
                                                            and the <span class="style2">&lt;div&gt;</span> tags. The <span class="style2">&lt;div&gt;</span> 
                                                            tag allows you to justify content without being forced to add a double 
                                                            linebreak.<br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>lso, note that these alignment tags are not 
                                                            limited to text. They work on text, images, applets or whatever it is that you 
                                                            insert on the page.<br />
                                                            <br />
                                                            </span>
                                                        </p>
                                                        <p>
                                                            <BR>
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
                                                PostBackUrl="~/HTML_L1.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L3.aspx">Next &gt;&gt;</asp:LinkButton>
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
