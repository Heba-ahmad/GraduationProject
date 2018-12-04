<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="HTML_L5.aspx.cs" Inherits="_Default" %>

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
            color: #FF00FF;
        }
        .style2
        {
            color: #AA00FF;
            text-decoration: none;
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
        DestinationPageUrl="~/HTML_L5.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;<img alt="" src="images/html.jpg" style="width: 204px; height: 86px" /><br />
                &nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L4.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/HTML_Contents.aspx">Back to HTML Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="HTML_L6.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 5 - HTML Links</H2>
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
                                                        <span class="text" style="background-color: #FFFFFF"><span class="fancyfirst">L</span>inks are the most 
                                                        fundamental part of the world wide web.<br />
                                                        It is the links that tie it all together.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>here are three different kinds of links you can 
                                                        have on your website:<br />
                                                        <ul>
                                                            <li>Links to anchors on the current page (Internal).<br />
                                                                <br />
                                                            </li>
                                                            <li>Links to other pages within the current site (Local)<br />
                                                                <br />
                                                            </li>
                                                            <li>Links to pages outside the current site (Global).<br />
                                                            </li>
                                                        </ul>
                                                        <span class="fancyfirst">I</span>t is possible to make texts and images work as 
                                                        links.
                                                        <br />
                                                        With a little creativity other objects, such as pushbuttons or even
                                                        <a href="http://www.echoecho.com/tooldropdown.htm"><span class="link">drop-down 
                                                        menus</span></a> can work as links as well.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his section will cover the usual links: Texts 
                                                        and Images.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>ther types of more advanced links will demand 
                                                        use of javascript. Look in the <a href="#">
                                                        <span class="link">javascript section</span></a> to learn more.<br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            HOW TO MAKE A LINK</div>
                                                        <br />
                                                        <span class="fancyfirst">T</span>he tags used to produce links are the
                                                        <span class="style2">&lt;a&gt;</span> and <span class="style2">&lt;/a&gt;</span>.
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
                                                        the <span class="style2">href=&quot;<span class="style4" style="color: #FF0000">http://www.whateverpage.com</span>&quot;</span> 
                                                        setting.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he example below shows how to make the word
                                                        <span class="style4">here</span> work as a link to yahoo.<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
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
                                                        <div align="center" class="headline">
                                                            <br />
                                                            <br />
                                                            COLORS ON TEXT LINKS</div>
                                                        <br />
                                                        <span class="fancyfirst">T</span>here are a few settings that can be useful for 
                                                        controlling the colors of text links.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his page will teach you how to:<br />
                                                        <ul>
                                                            <li>Define colors for all links on the page.<br />
                                                                <br />
                                                            </li>
                                                            <li>Define colors for individual links on the page.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style3"><span class="fancyfirst">D</span>efine colors for all links 
                                                        on the page</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he general color of text links is specified in 
                                                        the <span class="style2">&lt;body&gt;</span> tag, like in the example below:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                        style="background-color: #FFFFFF">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;body link=&quot;#C0C0C0&quot; vlink=&quot;#808080&quot; 
                                                                                alink=&quot;#FF0000&quot;&gt;
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <ul>
                                                            <li><span class="style4">link</span> - standard link - to a page the visitor hasn't 
                                                                been to yet. (standard color is blue - #0000FF).<br />
                                                                <br />
                                                            </li>
                                                            <li><span class="style4">vlink</span> - visited link - to a page the visitor has 
                                                                been to before. (standard color is purple - #800080).<br />
                                                                <br />
                                                            </li>
                                                            <li><span class="style4">alink</span> - active link - the color of the link when the 
                                                                mouse is on it. (standard color is red - #FF0000).<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="note"><span class="fancyfirst">N</span>ote<br />
                                                        You can click <a href="HTML_L11.aspx">
                                                        <span class="link">here</span></a> to learn more about the hexadecimal 
                                                        colorsystem that is used in HTML.</span><br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style3"><span class="fancyfirst">D</span>efine colors for 
                                                        individual links on the page</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he method described above is for setting 
                                                        overall link colors for the page.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">H</span>owever, you might want one or more links to 
                                                        have different colors than the rest of the page.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>here are two methods for doing this:<br />
                                                        <ul>
                                                            <li>Placing font tags between the <span class="style2">&lt;a href&gt;</span> and the
                                                                <span class="style2">&lt;/a&gt;</span> tag.<br />
                                                                This method will work on all browsers except MSIE 3.<br />
                                                                <br />
                                                            </li>
                                                            <li>Using a style setting in the <span class="style2">&lt;a&gt;</span> tag.
                                                                <br />
                                                                This method works on MSIE3 and newer browsers.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="fancyfirst">T</span>he first technique would look like this:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                        style="background-color: #FFFFFF">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->Click &lt;a href=&quot;http://www.yahoo.com&quot;&gt;<span 
                                                                                    class="style1">&lt;font color=&quot;FF00CC&quot;&gt;</span>here<span class="style1">&lt;/font&gt;</span>&lt;/a&gt; 
                                                                                to go to yahoo.<br />
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
                                                        It is important that both the &lt;font&gt; and the &lt;/font&gt; tags are between the &lt;a 
                                                        href&gt; and &lt;/a&gt; tags.</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he second technique would look like this:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="height: 38px; width: 450px; background-color: #FFFFFF;">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->Click &lt;a href=&quot;http://www.yahoo.com&quot;
                                                                                <span class="style1">style=&quot;color: rgb(0,255,0)&quot;</span>&gt;here&lt;/a&gt; to go to yahoo.
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
                                                        The RGB numbers indicate amounts of red, green, and blue using values between 0 
                                                        and 255. You can read more about converting between RGB colors and hexadecimal 
                                                        colors <a href="HTML_L11.aspx"><span class="link">
                                                        here</span></a>.</span><br />
                                                        <br />
                                                        <span class="fancyfirst">N</span>ow, since neither of the two methods covers all 
                                                        browsers, we need to use both techniques at once.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his example will work on all browsers:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->Click &lt;a href=&quot;http://www.yahoo.com&quot;
                                                                                <span class="style1">style=&quot;color: rgb(0,255,0)&quot;</span>&gt;<span class="style1">&lt;font 
                                                                                color=&quot;FF00CC&quot;&gt;</span>here<span class="style1">&lt;/font&gt;</span>&lt;/a&gt; to go to 
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
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he last example is interesting. Not only 
                                                        because it will work on all browsers. But even more because it shows a general 
                                                        approach to making your pages browser safe.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>ince browsers simply leave out information that 
                                                        is not understood, you can work around browser differences by simply adding 
                                                        different settings for multiple browsers.
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            LINK TARGETS</div>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>y default, links will open in the current 
                                                        window or frame.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou need to add a target if you want the link to 
                                                        open in another window or frame than the link itself is placed in.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>o do this you simply add a <span class="style2">
                                                        target=&quot;&quot;</span> to the <span class="style2">&lt;a href&gt;</span>.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his example will open yahoo in a new window:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                        style="background-color: #FFFFFF">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;http://www.yahoo.com&quot;
                                                                                <span class="style1">target=&quot;_blank&quot;</span>&gt;
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
                                                        <span class="fancyfirst">P</span>redefined targets are:<br />
                                                        <ul>
                                                            <li><span class="style4">_blank</span> loads the page into a new browser window.<br />
                                                            </li>
                                                            <li><span class="style4">_self</span> loads the page into the current window.<br />
                                                            </li>
                                                            <li><span class="style4">_parent</span> loads the page into the frame that is 
                                                                superior to the frame the hyperlink is in.<br />
                                                            </li>
                                                            <li><span class="style4">_top</span> cancels all frames, and loads in full browser 
                                                                window.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="fancyfirst">I</span>n addition to these, you can also enter the 
                                                        name of a frame window if your page is within a frameset.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can click
                                                        <a href="HTML_L8.aspx"><span class="link">here</span></a> 
                                                        to learn more about links in framesets<br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            NO UNDERLINE</div>
                                                        <br />
                                                        <span class="fancyfirst">B</span>y default, text links are underlined by the 
                                                        browser.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f your page is visited by MSIE3 or newer, you 
                                                        can turn off the underlining for an entire page by adding a style tag to the 
                                                        head section of the document.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">L</span>ook at this example:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                <br />
                                                                                &lt;head&gt;<br />
                                                                                &lt;title&gt;This is my page&lt;/title&gt;<br />
                                                                                <span class="style1">&lt;style type=&quot;text/css&quot;&gt;<br />
                                                                                &lt;!--
                                                                                <br />
                                                                                A{text-decoration:none}
                                                                                <br />
                                                                                --&gt;<br />
                                                                                &lt;/style&gt;</span><br />
                                                                                &lt;/head&gt;<br />
                                                                                <br />
                                                                                &lt;body&gt;<br />
                                                                                Welcome to my world!&lt;br&gt;<br />
                                                                                &lt;a href=&quot;http://www.yahoo.com&quot;&gt;This Link To Yahoo has no underline&lt;/a&gt;<br />
                                                                                &lt;/body&gt;<br />
                                                                                <br />
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
                                                        <span class="note"><span class="fancyfirst">N</span>ote:<br />
                                                        The style setting will not cause an error if viewed on a browser that doesn't 
                                                        support it. The browser will simply skip the effect - the link will look like an 
                                                        ordinary underlined link - but no errors will occur.</span><br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can create much more advanced links with 
                                                        Cascading Style Sheets (CSS). If you're new to CSS you can learn about it in our
                                                        <a href="CSS.aspx"><span class="link">CSS tutorial</span></a>. <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            ADVANCED TEXT LINKS</div>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>nstead of just turning off the underline on all 
                                                        links you could be more specific in defining the way you want your links to 
                                                        work.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n the example below underlining is turned off 
                                                        for all links.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he <span class="style4">A:hover</span> tells 
                                                        the browser that when the mouse is over a link the underline should appear.<br />
                                                        The hover option only works on MSIE 4+.
                                                        <br />
                                                        (But it does not cause an error on Netscape if you include it - the effect just 
                                                        does not appear.).<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                        style="background-color: #FFFFFF">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                <br />
                                                                                &lt;head&gt;<br />
                                                                                &lt;title&gt;This is my page&lt;/title&gt;<br />
                                                                                <span class="style1">&lt;style type=&quot;text/css&quot;&gt;<br />
                                                                                &lt;!--<br />
                                                                                A:link {text-decoration: none}<br />
                                                                                A:visited {text-decoration: none}<br />
                                                                                A:active {text-decoration: none}<br />
                                                                                A:hover {text-decoration: underline}<br />
                                                                                --&gt;<br />
                                                                                &lt;/style&gt;</span><br />
                                                                                <br />
                                                                                &lt;/head&gt;<br />
                                                                                <br />
                                                                                &lt;body&gt;<br />
                                                                                Welcome to my world!&lt;br&gt;<br />
                                                                                &lt;a href=&quot;http://www.yahoo.com&quot;&gt;This Link To Yahoo has no underline&lt;/a&gt;<br />
                                                                                &lt;/body&gt;<br />
                                                                                <br />
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
                                                        <span class="fancyfirst">T</span>he methods described above will turn off the 
                                                        underline effect for links on the entire page.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you want to turn off the effect for just a 
                                                        single link, add a style property to the <span class="style2">&lt;a href&gt;</span> 
                                                        tag:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                        style="background-color: #FFFFFF">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;http://www.yahoo.com&quot;
                                                                                <span class="style1">style=&quot;text-decoration: none&quot;</span>&gt;Go to Yahoo&lt;/a&gt;
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
                                                        <span class="note"><span class="fancyfirst">N</span>OTE:
                                                        <br />
                                                        The method described above only works on MSIE 3, Netscape 4 or newer browsers.</span><br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can make multiple style settings instead of 
                                                        just removing the underline. Why not define the colors you want for visited 
                                                        links as well?<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his example will show you how:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="height: 422px; width: 450px; background-color: #FFFFFF;">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                <br />
                                                                                &lt;head&gt;<br />
                                                                                &lt;title&gt;This is my page&lt;/title&gt;<br />
                                                                                <br />
                                                                                <span class="style1">&lt;STYLE TYPE=&quot;text/css&quot;&gt;&lt;!--<br />
                                                                                A.set1:link {color: #FF00FF; }<br />
                                                                                A.set1:active {color: #FFFF00; }<br />
                                                                                A.set1:visited {color: #00FFFF; }<br />
                                                                                <br />
                                                                                A.set2:link {color: #AA00FF; background: FF00AA; text-decoration: none}<br />
                                                                                A.set2:active {color: #FF00AA; background: none transparent;}<br />
                                                                                A.set2:visited {color: #FFFF00; text-decoration: none}<br />
                                                                                --&gt;&lt;/STYLE&gt;<br />
                                                                                <br />
                                                                                &lt;/head&gt;<br />
                                                                                <br />
                                                                                &lt;body&gt;<br />
                                                                                Welcome to my world!&lt;br&gt;<br />
                                                                                &lt;a href=&quot;http://www.yahoo.com CLASS=set1&gt; Yahoo &lt;/a&gt;<br />
                                                                                &lt;a href=&quot;http://www.hotbot.com CLASS=set2&gt; Hotbot &lt;/a&gt;<br />
                                                                                &lt;/body&gt;<br />
                                                                                <br />
                                                                                &lt;/html&gt;
                                                                                <br />
                                                                                </span>
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
                                                        <span class="fancyfirst">T</span>ry clicking the two links below to see how 
                                                        these effects would work. (links have been deactivated on this page)<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                        style="background-color: #FFFFFF">
                                                                        <tr>
                                                                            <td class="table4">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                <br />
                                                                                <a class="style1" href="#" 
                                                                                    onclick="alert('Hey - This link is not activated');return false">Yahoo</a><br />
                                                                                <br />
                                                                                <a class="style2" href="#" 
                                                                                    onclick="alert('Hey - This link is not activated');return false">Hotbot</a><br />
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host--><span class="fancyfirst"></span>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can create much more advanced links with CSS 
                                                        (Cascading Style Sheets). If you're new to CSS you can learn all about it at our
                                                        <a href="CSS.aspx"><span class="link">CSS-tutorial</span></a>. <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            IMAGE LINKS</div>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you want to make an image work as a link, the 
                                                        method is exactly the same as with texts.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou simply place the <span class="style2">&lt;a 
                                                        href&gt;</span> and the <span class="style2">&lt;/a&gt;</span> tags on each side of the 
                                                        image.<br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>elow is the HTML code used to make the image 
                                                        work as a link to a page called <span class="style4">myfile.htm</span>:<br />
                                                        <div align="center">
                                                            <br />
                                                            <a href="http://www.echoecho.com/myfile.htm">
                                                            <img height="60" src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" 
                                                                width="60" style="background-color: #FFFFFF" /></a><br />
                                                        </div>
                                                        <br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                        style="background-color: #FFFFFF">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;myfile.htm&quot;&gt;&lt;img src=&quot;rainbow.gif&quot;&gt;&lt;/a&gt;
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
                                                        <span class="fancyfirst">I</span>f you haven't entered a border setting you will 
                                                        see a small border around the image after turning it into a link. To turn off 
                                                        this border, simply add <span class="style4">border=&quot;0&quot;</span> to the
                                                        <span class="style2">&lt;img&gt;</span> tag:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                        style="background-color: #FFFFFF">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;myfile.htm&quot;&gt;&lt;img src=&quot;rainbow.gif&quot;
                                                                                <span class="style1">border=&quot;0&quot;</span>&gt;&lt;/a&gt;
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
                                                        <span class="fancyfirst">I</span>mages that work as links can show a popup text 
                                                        when you place the mouse over it.
                                                        <br />
                                                        This is done with the <span class="style2">alt</span> property in the
                                                        <span class="style2">&lt;img&gt;</span> tag.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>or example:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                        style="background-color: #FFFFFF">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;myfile.htm&quot;&gt;&lt;img src=&quot;rainbow.gif&quot; 
                                                                                border=&quot;0&quot; <span class="style1">alt=&quot;Link to this page&quot;</span>&gt;&lt;/a&gt;
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
                                                        <div align="center">
                                                            <br />
                                                            <a href="http://www.echoecho.com/myfile.htm">
                                                            <img alt="Link to this page" border="0" height="60" 
                                                                src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="60" /></a><br />
                                                        </div>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            IMAGE MAPPING</div>
                                                        <br />
                                                        <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                            <tr>
                                                                <td class="main">
                                                                    <div align="left">
                                                                        <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                        <span class="text"><span class="fancyfirst">I</span>t is possible to make one 
                                                                        image link to several pages, depending on where the image is clicked.
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>his technique is called imagemapping.
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou simply specify which areas of the image 
                                                                        should link to where.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">I</span>n the example below, if you position the mouse 
                                                                        in the upper left corner it links to yahoo .... and in the lower right 
                                                                        corner.... it links to hotbot.<br />
                                                                        <br />
                                                                        <div align="center">
                                                                            <img border="0" src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" usemap="#example" /><map 
                                                                                name="example"><area coords="0,0,29,29" href="http://www.yahoo.com" 
                                                                                    shape="Rect" /><area coords="30,30,59,59" href="http://www.hotbot.com" 
                                                                                    shape="Rect" /></map></div>
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
                                                                                                <!-- perl mysql php web host -->&lt;img src=&quot;rainbow.gif&quot; usemap = #example 
                                                                                                border=0&gt;
                                                                                                <br />
                                                                                                &lt;map name=example&gt;<br />
                                                                                                &lt;area shape=Rect Coords=0,0,29,29 Href=&quot;http://www.yahoo.com&quot;&gt;
                                                                                                <br />
                                                                                                &lt;area shape=Rect Coords=30,30,59,59 Href=&quot;http://www.hotbot.com&quot;&gt;
                                                                                                <br />
                                                                                                &lt;/map&gt;
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
                                                                        <span class="fancyfirst">I</span>n the above example we only used rectangular 
                                                                        imagemappings. Possible shapes are:<br />
                                                                        <ul>
                                                                            <li><span class="style2">&lt;area <span class="style4">shape=rect</span> coords= x1,y1, 
                                                                                x2,y2 Href=&quot;http://www.domain.com&quot;&gt;</span><br />
                                                                                <br />
                                                                            </li>
                                                                            <li><span class="style2">&lt;area <span class="style4">shape=circle</span> coords= 
                                                                                x1,y1, x2,y2 Href=&quot;http://www.domain.com&quot;&gt;</span><br />
                                                                                <br />
                                                                            </li>
                                                                            <li><span class="style2">&lt;area <span class="style4">shape=polygon</span> coords= 
                                                                                x1,y1, x2,y2, .., xn,yn Href=&quot;http://www.domain.com&quot;&gt;</span><br />
                                                                            </li>
                                                                        </ul>
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>here are excellent tools out there to help you 
                                                                        create imagemaps. No one calculates the coordinates by hand.
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">I</span>f you want to use imagemaps on your site you 
                                                                        will need to get a program that will allow you to simply drag the mouse over the 
                                                                        areas you want to work as links.
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">M</span>ost HTML editors have this as a built-in 
                                                                        function.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">I</span>f you do not use an HTML editor, you can still 
                                                                        get programs that will do this boring job for you - best thing is - you can get 
                                                                        it for free!<br />
                                                                        <br />
                                                                        <span class="fancyfirst">B</span>elow are links to websites that will help you 
                                                                        create your imagemaps on the fly.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">J</span>ust make sure that the image is uploaded to the 
                                                                        web before using these tools.<br />
                                                                        <br />
                                                                        <br />
                                                                        <br />
                                                                        <br />
                                                                        <div align="center" class="headline">
                                                                            LINK WITHIN A PAGE</div>
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">L</span>inking to anchors is very similar to normal 
                                                                        links. Normal links always point to the top of a page. Anchors point to a place 
                                                                        within a page.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">A</span> <span class="style2">#</span> in front of a 
                                                                        link location specifies that the link is pointing to an anchor on a page. 
                                                                        (Anchor meaning a specific place in the middle of your page).
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>o link to an anchor you need to:
                                                                        <br />
                                                                        <ul>
                                                                            <li><b>Create a link pointing to the anchor</b><br />
                                                                                <br />
                                                                            </li>
                                                                            <li><b>Create the anchor itself.</b><br />
                                                                            </li>
                                                                        </ul>
                                                                        <br />
                                                                        <span class="fancyfirst">A</span>n anchor is created using the
                                                                        <span class="style2">&lt;a&gt;</span> tag.
                                                                        <br />
                                                                        If you want to create an anchor called <span class="style4">chapter4</span>, you 
                                                                        simply add this line where you want the anchor to be:<br />
                                                                        <br />
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1">
                                                                                                <!-- perl mysql php web host -->&lt;a <span class="style1">name=&quot;chapter4&quot;</span>&gt;&lt;/a&gt;
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
                                                                        <span class="fancyfirst">A</span>fter doing this, you can make a link pointing 
                                                                        to the anchor using the normal <span class="style2">&lt;a href&gt;</span> tag, like 
                                                                        this:<br />
                                                                        <br />
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1">
                                                                                                <!-- perl mysql php web host -->Click &lt;a href=&quot;<span class="style1">#chapter4</span>&quot;&gt;here&lt;/a&gt; 
                                                                                                to read chapter 4.
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
                                                                        When linking to an anchor on a page you need to put a # in front of the anchor.</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">W</span>hen you link to an anchor on the same page, 
                                                                        simply enter
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
                                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;<span class="style1">#YourAnchor</span>&quot;&gt;blabla&lt;/a&gt;<br />
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
                                                                        <span class="fancyfirst">W</span>hen you link to anchors on external pages use 
                                                                        this syntax:
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
                                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;<span class="style1">http://www.yahoo.com#YahoosAnchor</span>&quot;&gt;blabla&lt;/a&gt;<br />
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
                                                                        <span class="fancyfirst">A</span>nchors are generally used when you create pages 
                                                                        with considerable amounts of text. You would typically make an index at the top 
                                                                        of the page linking to the anchors that have been added to key places in the 
                                                                        text that follows.<br />
                                                                        <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                        <br />
                                                                        <br />
                                                                        <br />
                                                                        <div align="center" class="headline">
                                                                            LINKS IN FRAMESETS</div>
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">I</span>f a non-framebased HTML document contains a 
                                                                        hyperlink that links to a page called <span class="style4">analysis.htm</span> 
                                                                        then it appears in the HTML document somewhat like this:<br />
                                                                        <br />
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1">
                                                                                                <!-- perl mysql php web host -->Click here to see the &lt;a 
                                                                                                href=&quot;analysis.htm&quot;&gt;Analysis&lt;/a&gt; of the project.<br />
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
                                                                        <span class="fancyfirst">N</span>ow if the same link was in a frameset, (say in 
                                                                        the frame window called <span class="style4">menu</span>) and we wanted it to 
                                                                        link to a page that is loaded in the other frame window, (named
                                                                        <span class="style4">main</span>) then the HTML code would be:<br />
                                                                        <br />
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1">
                                                                                                <!-- perl mysql php web host -->Click here to see the &lt;a href=&quot;analysis.htm&quot;
                                                                                                <span class="style1">target=&quot;main&quot;</span>&gt;Analysis&lt;/a&gt; of the project
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
                                                                        <span class="fancyfirst">W</span>e simply added the desired frame window (<span 
                                                                            class="style4">main</span>) as a target for the link.
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he link will be opened in the
                                                                        <span class="style4">main</span> frame window instead of the
                                                                        <span class="style4">menu</span> frame window where the link itself is located.<br />
                                                                        <br />
                                                                        <div align="center">
                                                                            <br />
                                                                        </div>
                                                                        </span>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            LINK TO NEW WINDOW</div>
                                                        <br />
                                                        <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                            <tr>
                                                                <td class="main">
                                                                    <div align="left">
                                                                        <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                        <span class="text" style="background-color: #FFFFFF"><span class="fancyfirst">I</span>f 
                                                                        you want your link to open a page in a new window use the <span class="style2">
                                                                        target=&quot;<span class="style4">_blank</span>&quot;</span> in the <span class="style2">
                                                                        &lt;a href&gt;</span> tag.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>argetting the link to &quot;<span class="style4">_blank</span>&quot; 
                                                                        simply opens a new browser window that will load the linked page.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">L</span>inking to Yahoo the traditional way would 
                                                                        require this link:<br />
                                                                        <br />
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1">
                                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;http://www.yahoo.com&quot;&gt;Go to Yahoo&lt;/a&gt;
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
                                                                        <span class="fancyfirst">I</span>f you add a <span class="style2">target=&quot;<span 
                                                                            class="style4">_blank</span>&quot;</span>, the page will open in a new window:<br />
                                                                        <br />
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1">
                                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;http://www.yahoo.com&quot;
                                                                                                <span class="style1">target=&quot;_blank&quot;</span>&gt;Go to Yahoo&lt;/a&gt;
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
                                                                        <span class="fancyfirst">C</span>lick the link below to see this link in action:<br />
                                                                        <div align="center">
                                                                            <br />
                                                                            <a href="http://www.yahoo.com" target="&quot;_blank&quot;"><span class="link">Go 
                                                                            to Yahoo</span></a><br />
                                                                        </div>
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">I</span>f you want to customize the new window as to 
                                                                        which buttons, menus etc. should be available and which size it should have, you 
                                                                        will need to do that with javascript.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can use our
                                                                        <a href="http://www.echoecho.com/toolpopupgenerator.htm"><span class="link">
                                                                        Popup Tool</span></a> to create your own customized windows without knowledge of 
                                                                        javascript.<br />
                                                                        <br />
                                                                        <br />
                                                                        <br />
                                                                        <div align="center" class="headline">
                                                                            LINK TO EMAIL</div>
                                                                        <br />
                                                                        <span class="fancyfirst">H</span>aving a link that allows visitors to send email 
                                                                        from your website can be a great addition to your site, making it easy for your 
                                                                        visitors to send questions or comments.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>here is a special link for this action.
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">E</span>mail links are done much the same as links to 
                                                                        other pages, using the
                                                                        <br />
                                                                        <span class="style4">&lt;a href&gt;</span> tag.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">A</span>n email link would require the following code:<br />
                                                                        <br />
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1">
                                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;mailto:youremailaddress&quot;&gt;Email Me&lt;/a&gt;
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
                                                                        <span class="fancyfirst">T</span>his will result in the visitor's email program 
                                                                        opening a new email with your address already in the To: field.<br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">I</span>f you wish to have a specific subject in the 
                                                                        email, you can add it to the html code using <span class="style4">subject=</span> 
                                                                        setting :<br />
                                                                        <br />
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1">
                                                                                                <!-- perl mysql php web host -->&lt;a 
                                                                                                href=&quot;mailto:email@echoecho.com?subject=SweetWords&quot;&gt;<br />
                                                                                                Send Email&lt;/a&gt;
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
                                                                        <span class="fancyfirst">S</span>uppose you want an email link for your visitors 
                                                                        containing specific text in the body of their message, simply add
                                                                        <span class="style4">&amp;body=</span>:<br />
                                                                        <br />
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1">
                                                                                                <!-- perl mysql php web host -->&lt;a href=&quot;mailto:email@echoecho.com?body=Please 
                                                                                                send me a copy of your new program!&quot;&gt;Send Email&lt;/a&gt;
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
                                                                        <span class="fancyfirst">O</span>r combine all the options and allow your 
                                                                        visitor to send email with the address, subject and text already entered.<br />
                                                                        <br />
                                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                            cellspacing="1">
                                                                            <tr>
                                                                                <td bgcolor="#99aa99">
                                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                        style="background-color: #FFFFFF" width="450">
                                                                                        <tr>
                                                                                            <td class="table1">
                                                                                                <!-- perl mysql php web host -->&lt;a 
                                                                                                href=&quot;mailto:email@echoecho.com?subject=SweetWords<br />
                                                                                                &amp;body=Please send me a copy of your new program!&quot;&gt;Email Me&lt;/a&gt;<br />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        <!-- perl mysql php web host-->
                                                                        <br />
                                                                        </span>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        </span>
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
                                                PostBackUrl="~/HTML_L4.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L6.aspx">Next &gt;&gt;</asp:LinkButton>
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
