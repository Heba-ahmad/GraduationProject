<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="HTML_L11.aspx.cs" Inherits="_Default" %>

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
  href="Signup.aspx">Signup</A> <SPAN class=author>to add comment, &amp; 
          to Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/HTML_L11.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                                                PostBackUrl="~/HTML_L10.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/HTML_Contents.aspx">Back to HTML Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 11 - HTML Hexcolors </H2>
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
                                                        </p>
                                                        <span class="text"><span class="fancyfirst">F</span>or some reason colors in 
                                                        HTML are specified using hexadecimal numbers.<br />
                                                        <br />
                                                        <span class="fancyfirst">H</span>exadecimal numbers are numbers based on the 
                                                        value of 16 rather than the classical numbers based on the value of 10.<br />
                                                        <br />
                                                        <span class="fancyfirst">W</span>hen you count to 15 using hexadecimal numbers 
                                                        it goes like this: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>s you see the numbers from 10 to 15 have been 
                                                        replaced with letters.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span> typical hexadecimal color value would be 
                                                        A53C8D.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n this section you will learn how to understand 
                                                        hexadecimal color codes.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou will also learn to convert between 
                                                        hexadecimal and RGB color codes. (RGB codes are used by most graphics programs 
                                                        to identify colors.)<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>inally you will learn about an error in the 
                                                        color interpretation by Netscape browsers, causing only 216 colors to look the 
                                                        same on all browsers.<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>irst we will proceed to learn about the 
                                                        difference between hexadecimal numbers and traditional numbers...<br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            DECIMAL vs. HEX</div>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n classical numbers you have ten different 
                                                        figures, whereas in hexadecimal numbers you have 16 different figures.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>elow are numbers from 0 to 15 in both systems:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table8">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>DEC</td>
                                                                            <td class="table5">
                                                                                0</td>
                                                                            <td class="table5">
                                                                                1</td>
                                                                            <td class="table5">
                                                                                2</td>
                                                                            <td class="table5">
                                                                                3</td>
                                                                            <td class="table5">
                                                                                4</td>
                                                                            <td class="table5">
                                                                                5</td>
                                                                            <td class="table5">
                                                                                6</td>
                                                                            <td class="table5">
                                                                                7</td>
                                                                            <td class="table5">
                                                                                8</td>
                                                                            <td class="table5">
                                                                                9</td>
                                                                            <td class="table5">
                                                                                10</td>
                                                                            <td class="table5">
                                                                                11</td>
                                                                            <td class="table5">
                                                                                12</td>
                                                                            <td class="table5">
                                                                                13</td>
                                                                            <td class="table5">
                                                                                14</td>
                                                                            <td class="table5">
                                                                                15<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table8">
                                                                                HEX</td>
                                                                            <td class="table1">
                                                                                0</td>
                                                                            <td class="table1">
                                                                                1</td>
                                                                            <td class="table1">
                                                                                2</td>
                                                                            <td class="table1">
                                                                                3</td>
                                                                            <td class="table1">
                                                                                4</td>
                                                                            <td class="table1">
                                                                                5</td>
                                                                            <td class="table1">
                                                                                6</td>
                                                                            <td class="table1">
                                                                                7</td>
                                                                            <td class="table1">
                                                                                8</td>
                                                                            <td class="table1">
                                                                                9</td>
                                                                            <td class="table1">
                                                                                &nbsp;A</td>
                                                                            <td class="table1">
                                                                                &nbsp;B</td>
                                                                            <td class="table1">
                                                                                &nbsp;C</td>
                                                                            <td class="table1">
                                                                                &nbsp;D</td>
                                                                            <td class="table1">
                                                                                &nbsp;E</td>
                                                                            <td class="table1">
                                                                                &nbsp;F
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
                                                        <span class="fancyfirst">T</span>he highest hexadecimal number you can specify 
                                                        using one figure is F equaling 15.<br />
                                                        With two figures the highest value is FF equaling 255.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>o prevent confusion on numbers higher than 9 
                                                        hexadecimal colors are often entered with a # in front of them.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n HTML, color codes have 6 digits, like 
                                                        #FF3C96.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>hey are explained in detail on the following 
                                                        pages...<br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            RGB COLORS</div>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>creen colors are defined by the colors Red, 
                                                        Green and Blue.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>herefore it is smart that HTML colors are 
                                                        defined in a system based on the amount of each of the three basic colors.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his system is called an RGB color system.
                                                        <br />
                                                        (Yes, - RGB stands for Red, Green and Blue!)<br />
                                                        <br />
                                                        <span class="fancyfirst">M</span>ost graphics tools (Photoshop, Photopaint, 
                                                        Paintshop Pro etc.) can handle colors in a RGB color system.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he problem is that while most graphics programs 
                                                        define the RGB code using normal decimal numbers, HTML defines them with 
                                                        hexadecimal numbers.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his means, that you have to convert between 
                                                        decimal and hexadecimal numbers if you want to use the same color in your 
                                                        graphics program and on your homepage.<br />
                                                        <br />
                                                        <span class="fancyfirst">W</span>e will explain the technique for this soon, but 
                                                        first, we will explain how RGB codes are written in HTML...<br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            HEXADECIMAL RGB</div>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">A</span> typical color definition in HTML would look 
                                                        like this:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;body <span class="style1">bgColor=&quot;#FF8C67&quot;</span>&gt;
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
                                                        <span class="fancyfirst">T</span>he color is defined to be <span class="style1">
                                                        <span class="style2">&quot;#FF8C67&quot;</span></span>.
                                                        <br />
                                                        The <span class="style1"><span class="style2">#</span></span> simply states that 
                                                        the following numbers are hexadecimal.<br />
                                                        The first two digits are the amount of red (FF).<br />
                                                        Digits 3 and 4 specify the amount of green (8C).<br />
                                                        Digits 5 and 6 specify the amount of blue (67).<br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>elow is an example showing how different colors 
                                                        are mixed to obtain the desired result:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#aaaabb" border="1">
                                                            <tr>
                                                                <td bgcolor="#ff0000">
                                                                    <font color="#ffff33">FF</font></td>
                                                                <td bgcolor="#000000">
                                                                    <font color="#ffffff">+</font></td>
                                                                <td bgcolor="#008c00">
                                                                    <font color="#ffff33">8C</font></td>
                                                                <td bgcolor="#000000">
                                                                    <font color="#ffffff">+</font></td>
                                                                <td bgcolor="#000097">
                                                                    <font color="#ffff33">67</font></td>
                                                                <td bgcolor="#000000">
                                                                    <font color="#ffffff">=</font></td>
                                                                <td bgcolor="#ff8c67">
                                                                    FF8C67</td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>ince there are two hexadecimal figures for each 
                                                        color you can specify 256 gradients of each basic color. This gives a total of 
                                                        256*256*256 = 16,777,216 different combinations.<br />
                                                        <br />
                                                        <span class="fancyfirst">H</span>owever, not all of these colors will look the 
                                                        same on all browsers and operating systems.<br />
                                                        <br />
                                                        <span class="fancyfirst">P</span>roceed to learn about the 216 colors that are 
                                                        &quot;safe&quot;...<br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            216 SAFE COLORS</div>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>nly 216 colors are what we refer to as &quot;browser 
                                                        safe&quot;.<br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>rowser safe colors are colors that look the 
                                                        same no matter which browser you see them on.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he reason is that browsers running on different 
                                                        platforms interpret the colors differently.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he only 216 colors that look the same no matter 
                                                        what, are the colors made out of pairs of 00, 33, 66, 99, CC and FF.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>n example would be: &quot;#990066&quot;.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou should always strive to limit your use of 
                                                        colors to these combinations.<br />
                                                        You can use our <a href="#">
                                                        <span class="link">color picker</span></a> to pick browser safe colors.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he technical reason for unsafe colors is that 
                                                        Netscape browsers have their own color system. A system that does not match with 
                                                        typical graphics programs.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can easily make a simple test of the 
                                                        Netscape error.<br />
                                                        <ul>
                                                            <li>Try making a small image in your graphics program.<br />
                                                            </li>
                                                            <li>The image should just be a plain fill with an unsafe color.<br />
                                                            </li>
                                                            <li>Now convert the color value to hex.<br />
                                                            </li>
                                                            <li>Then make a page with the hexcolor as background.<br />
                                                            </li>
                                                            <li>Finally insert the image on the page.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="fancyfirst">S</span>ince you used the same RGB color for both your 
                                                        page and your image, the image should be invisible on the page.<br />
                                                        But on Netscape browsers you can actually see the image!<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can learn more about safe colors in our
                                                        <a href="http://www.echoecho.com/designcolors.htm#safe"><span class="link">
                                                        design section</span></a>.<br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>therwise, proceed to learn how you can convert 
                                                        between the decimal numbers you enter in your graphics program and the 
                                                        hexadecimal colors you have on your HTML pages...<br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            CONVERTING HEX-DEC</div>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>t's easy to convert between hex values and 
                                                        decimal values.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>ll you need is a calculator that can handle 
                                                        both types.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you're using Windows, start the calculator 
                                                        that comes with the operating system.<br />
                                                        Make sure the view option is set to &quot;scientific&quot;.<br />
                                                        <br />
                                                        <span class="fancyfirst">E</span>nter the decimal value.<br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>lick the Hex field - and watch the calculator 
                                                        convert the number to hex.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">N</span>eedless to say, you can do it the other way 
                                                        around to calculate decimal values from hex values.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>hats it!<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>here are a few colors that are so common that 
                                                        they can be defined by their common name.<br />
                                                        <br />
                                                        <span class="fancyfirst">J</span>ump to the next page to see them...<br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            NAMED COLORS</div>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">A</span> few colors can be referred to using names 
                                                        rather than hex values.
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
                                                                                <!-- perl mysql php web host -->&lt;body bgColor=Navy&gt;
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
                                                        <span class="fancyfirst">B</span>elow is a listing of these colors and their 
                                                        names:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#aaaabb">
                                                            <tr>
                                                                <td>
                                                                    <table align="center" bgcolor="#eeeeff" border="0">
                                                                        <tr>
                                                                            <td bgcolor="#000000" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Black</td>
                                                                            <td>
                                                                                &nbsp;&nbsp;</td>
                                                                            <td bgcolor="#ffff00" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Yellow</td>
                                                                            <td>
                                                                                &nbsp;&nbsp;</td>
                                                                            <td bgcolor="#ff0000" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Red</td>
                                                                            <td>
                                                                                &nbsp;&nbsp;</td>
                                                                            <td bgcolor="#800000" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Maroon</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td bgcolor="#808080" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Gray</td>
                                                                            <td>
                                                                            </td>
                                                                            <td bgcolor="#00ff00" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Lime</td>
                                                                            <td>
                                                                            </td>
                                                                            <td bgcolor="#008000" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Green</td>
                                                                            <td>
                                                                            </td>
                                                                            <td bgcolor="#808000" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Olive</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td bgcolor="#c0c0c0" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Silver</td>
                                                                            <td>
                                                                            </td>
                                                                            <td bgcolor="#00ffff" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Aqua</td>
                                                                            <td>
                                                                            </td>
                                                                            <td bgcolor="#0000ff" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Blue</td>
                                                                            <td>
                                                                            </td>
                                                                            <td bgcolor="#000080" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Navy</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td bgcolor="#ffffff" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                White</td>
                                                                            <td>
                                                                            </td>
                                                                            <td bgcolor="#ff00ff" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Fuchsia</td>
                                                                            <td>
                                                                            </td>
                                                                            <td bgcolor="#800080" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Purple</td>
                                                                            <td>
                                                                            </td>
                                                                            <td bgcolor="#008080" width="20">
                                                                                &nbsp;&nbsp;</td>
                                                                            <td>
                                                                                Teal</td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you want to use other colors, you should make 
                                                        sure to pick safe ones.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he last page in this tutorial will help you 
                                                        with that....<br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            COLOR SAMPLES</div>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>elow you see 18 tables covering the entire 
                                                        rainbow.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>ll colors are browser safe.<br />
                                                        <br />
                                                        <span class="fancyfirst">E</span>ach table shows 36 different color 
                                                        combinations.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n the upper left corner of the table is the 
                                                        fixed amount of either red, green or blue used on all samples in the table.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">D</span>epending on which color is fixed for the table, 
                                                        the two other colors can be read along the axis.<br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>lick on the desired color to see the hex value.<br />
                                                        <br />
                                                        <div align="center">
<SCRIPT language=javascript>
  fixed="B";
  left="R";
  upper="G";
  value=Array;
  value[0]="N/A";
  value[1]="00";
  value[2]="33";
  value[3]="66";
  value[4]="99";
  value[5]="CC";
  value[6]="FF";


  for (fixedamount=1; fixedamount<=6;fixedamount=fixedamount+1)
{
  fixedvalue=value[fixedamount];
  document.write("<table border='0'><tr><td>"); 

  for (row=0; row<=6;row=row+1)
 { document.write("<tr>");
  for (table=1; table<=3; table=table+1)
 {
  if (table==1) {fixed="B"; left="R";  upper="G";}
  if (table==2) {fixed="R"; left="G";  upper="B";}
  if (table==3) {fixed="G"; left="B";  upper="R";}

  for (column=0; column<=6; column=column+1)
  {
   if (fixed=="R") {redvalue=fixedvalue; fixedcolor="#CC0000"};
   if (fixed=="G") {greenvalue=fixedvalue; fixedcolor="#009900"};
   if (fixed=="B") {bluevalue=fixedvalue; fixedcolor="#0000CC"};
   if (left=="R") {redvalue=value[row]; leftcolor="#CC0000"};
   if (left=="G") {greenvalue=value[row]; leftcolor="#009900"};
   if (left=="B") {bluevalue=value[row]; leftcolor="#0000CC"};
   if (upper=="R") {redvalue=value[column]; uppercolor="#CC0000"};   
   if (upper=="G") {greenvalue=value[column]; uppercolor="#009900"};   
   if (upper=="B") {bluevalue=value[column]; uppercolor="#0000CC"};   

   if (column==0 && row==0) {document.write("<td bgColor="+fixedcolor+"><font color='#FFFFFF' size='1'>"+value[fixedamount]+"</font></td>")};
   if (column==0 && row!=0) {document.write("<td bgColor="+leftcolor+"><font color='#FFFFFF'  size='1'>"+value[row]+"</font></td>")};
   if (column!=0 && row==0) {document.write("<td bgColor="+uppercolor+"><font color='#FFFFFF' size='1'>"+value[column]+"</font></td>")};
   hexcolortext="#"+redvalue+greenvalue+bluevalue+"          ";
   hexcolorwords="The Hex-Color #RRGGBB is: ";   pixelstring="<a href='#' alt='Click to see the hexcode' onClick=\"alert('"+hexcolorwords+hexcolortext+"');return false\">&nbsp;&nbsp;&nbsp;</a>";
// <img src='pixel.gif' width='20' height='20' border=0 alt='click to see the hex-code'>
   if (column!=0 && row!=0){document.write("<td bgColor=#"+redvalue+greenvalue+bluevalue+">"+pixelstring+"</td>")};
  } if (table<3) {document.write("<td bgColor=#FFFFF4>&nbsp;&nbsp;&nbsp;&nbsp;</td>")};
 }
 document.write("</font></tr>");
 } 
 document.write("</td></tr></table>");
}
</SCRIPT>

                                                            <table border="0">
                                                                <tr>
                                                                    <td>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#000000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #000000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#003300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #003300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#006600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #006600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#009900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #009900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00cc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00ff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#000000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #000000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#000033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #000033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#000066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #000066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#000099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #000099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0000CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0000ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0000FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#000000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #000000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#330000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #330000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#660000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #660000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#990000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #990000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC0000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff0000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF0000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#330000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #330000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#333300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #333300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#336600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #336600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#339900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #339900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#003300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #003300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#003333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #003333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#003366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #003366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#003399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #003399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0033cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0033CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0033ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0033FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#000033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #000033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#330033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #330033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#660033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #660033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#990033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #990033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc0033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC0033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff0033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF0033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#660000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #660000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#663300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #663300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#666600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #666600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#669900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #669900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#006600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #006600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#006633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #006633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#006666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #006666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#006699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #006699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0066cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0066CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0066ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0066FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#000066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #000066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#330066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #330066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#660066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #660066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#990066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #990066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc0066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC0066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff0066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF0066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#990000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #990000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#993300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #993300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#996600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #996600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#999900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #999900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #009900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#009933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #009933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#009966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #009966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#009999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #009999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0099cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0099CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0099ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0099FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#000099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #000099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#330099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #330099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#660099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #660099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#990099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #990099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc0099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC0099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff0099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF0099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC0000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc3300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC3300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc6600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC6600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc9900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC9900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#00cc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00cc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00cc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00cc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00cccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00ccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0000CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3300cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3300CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6600cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6600CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9900cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9900CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc00cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC00CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff00cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF00CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#ff0000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF0000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff3300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF3300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff6600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF6600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff9900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF9900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#00ff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00ff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00ff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00ff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00ffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00ffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#0000ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0000FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3300ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3300FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6600ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6600FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9900ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9900FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc00ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC00FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff00ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF00FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                            </table>
                                                            <table border="0">
                                                                <tr>
                                                                    <td>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#000033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #000033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#003333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #003333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#006633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #006633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#009933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #009933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00cc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00ff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#330000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #330000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#330033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #330033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#330066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #330066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#330099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #330099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3300cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3300CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3300ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3300FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#003300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #003300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#333300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #333300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#663300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #663300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#993300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #993300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc3300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC3300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff3300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF3300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#330033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #330033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#333333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #333333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#336633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #336633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#339933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #339933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#333300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #333300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#333333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #333333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#333366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #333366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#333399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #333399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3333cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3333CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3333ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3333FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#003333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #003333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#333333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #333333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#663333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #663333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#993333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #993333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc3333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC3333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff3333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF3333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#660033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #660033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#663333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #663333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#666633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #666633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#669933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #669933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#336600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #336600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#336633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #336633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#336666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #336666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#336699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #336699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3366cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3366CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3366ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3366FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#003366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #003366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#333366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #333366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#663366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #663366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#993366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #993366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc3366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC3366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff3366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF3366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#990033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #990033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#993333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #993333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#996633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #996633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#999933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #999933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#339900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #339900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#339933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #339933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#339966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #339966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#339999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #339999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3399cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3399CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3399ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3399FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#003399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #003399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#333399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #333399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#663399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #663399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#993399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #993399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc3399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC3399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff3399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF3399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cc0033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC0033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc3333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC3333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc6633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC6633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc9933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC9933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#33cc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#0033cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0033CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3333cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3333CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6633cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6633CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9933cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9933CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc33cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC33CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff33cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF33CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#ff0033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF0033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff3333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF3333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff6633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF6633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff9933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF9933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#33ff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#0033ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0033FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3333ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3333FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6633ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6633FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9933ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9933FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc33ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC33FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff33ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF33FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                            </table>
                                                            <table border="0">
                                                                <tr>
                                                                    <td>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#000066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #000066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#003366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #003366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#006666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #006666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#009966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #009966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00cc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00ff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#660000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #660000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#660033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #660033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#660066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #660066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#660099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #660099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6600cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6600CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6600ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6600FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#006600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #006600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#336600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #336600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#666600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #666600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#996600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #996600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc6600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC6600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff6600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF6600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#330066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #330066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#333366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #333366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#336666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #336666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#339966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #339966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#663300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #663300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#663333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #663333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#663366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #663366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#663399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #663399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6633cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6633CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6633ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6633FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#006633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #006633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#336633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #336633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#666633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #666633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#996633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #996633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc6633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC6633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff6633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF6633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#660066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #660066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#663366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #663366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#666666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #666666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#669966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #669966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#666600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #666600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#666633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #666633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#666666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #666666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#666699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #666699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6666cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6666CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6666ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6666FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#006666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #006666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#336666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #336666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#666666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #666666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#996666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #996666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc6666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC6666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff6666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF6666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#990066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #990066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#993366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #993366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#996666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #996666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#999966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #999966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#669900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #669900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#669933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #669933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#669966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #669966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#669999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #669999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6699cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6699CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6699ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6699FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#006699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #006699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#336699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #336699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#666699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #666699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#996699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #996699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc6699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC6699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff6699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF6699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cc0066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC0066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc3366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC3366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc6666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC6666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc9966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC9966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#66cc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#0066cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0066CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3366cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3366CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6666cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6666CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9966cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9966CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc66cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC66CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff66cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF66CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#ff0066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF0066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff3366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF3366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff6666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF6666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff9966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF9966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#66ff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#0066ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0066FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3366ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3366FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6666ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6666FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9966ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9966FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc66ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC66FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff66ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF66FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                            </table>
                                                            <table border="0">
                                                                <tr>
                                                                    <td>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#000099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #000099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#003399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #003399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#006699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #006699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#009999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #009999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00cc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00ff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#990000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #990000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#990033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #990033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#990066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #990066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#990099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #990099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9900cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9900CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9900ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9900FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #009900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#339900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #339900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#669900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #669900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#999900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #999900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc9900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC9900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff9900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF9900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#330099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #330099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#333399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #333399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#336699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #336699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#339999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #339999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#993300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #993300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#993333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #993333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#993366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #993366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#993399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #993399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9933cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9933CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9933ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9933FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#009933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #009933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#339933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #339933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#669933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #669933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#999933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #999933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc9933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC9933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff9933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF9933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#660099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #660099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#663399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #663399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#666699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #666699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#669999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #669999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#996600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #996600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#996633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #996633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#996666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #996666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#996699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #996699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9966cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9966CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9966ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9966FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#009966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #009966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#339966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #339966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#669966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #669966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#999966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #999966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc9966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC9966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff9966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF9966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#990099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #990099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#993399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #993399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#996699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #996699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#999999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #999999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#999900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #999900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#999933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #999933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#999966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #999966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#999999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #999999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9999cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9999CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9999ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9999FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#009999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #009999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#339999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #339999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#669999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #669999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#999999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #999999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc9999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC9999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff9999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF9999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cc0099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC0099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc3399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC3399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc6699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC6699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc9999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC9999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#99cc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#0099cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0099CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3399cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3399CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6699cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6699CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9999cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9999CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc99cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC99CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff99cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF99CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#ff0099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF0099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff3399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF3399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff6699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF6699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff9999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF9999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#99ff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#0099ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0099FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3399ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3399FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6699ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6699FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9999ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9999FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc99ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC99FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff99ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF99FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                            </table>
                                                            <table border="0">
                                                                <tr>
                                                                    <td>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0000CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0033cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0033CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0066cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0066CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0099cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0099CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00cccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00ffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC0000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc0033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC0033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc0066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC0066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc0099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC0099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc00cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC00CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc00ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC00FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#00cc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#3300cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3300CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3333cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3333CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3366cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3366CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3399cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3399CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#cc3300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC3300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc3333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC3333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc3366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC3366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc3399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC3399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc33cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC33CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc33ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC33FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#00cc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#6600cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6600CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6633cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6633CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6666cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6666CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6699cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6699CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#cc6600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC6600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc6633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC6633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc6666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC6666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc6699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC6699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc66cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC66CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc66ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC66FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#00cc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#9900cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9900CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9933cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9933CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9966cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9966CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9999cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9999CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#cc9900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC9900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc9933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC9933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc9966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC9966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc9999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC9999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc99cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC99CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc99ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC99FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#00cc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cc00cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC00CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc33cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC33CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc66cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC66CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc99cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC99CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cccc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#00cccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33cccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66cccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99cccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cccccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#ff00cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF00CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff33cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF33CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff66cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF66CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff99cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF99CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#ccff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#00ccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                            </table>
                                                            <table border="0">
                                                                <tr>
                                                                    <td>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#0000ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0000FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0033ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0033FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0066ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0066FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#0099ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #0099FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00ccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00CCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#00ffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#ff0000">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF0000          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff0033">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF0033          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff0066">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF0066          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff0099">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF0099          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff00cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF00CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff00ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF00FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">00</font></td>
                                                                    <td bgcolor="#00ff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#3300ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3300FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3333ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3333FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3366ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3366FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#3399ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #3399FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33CCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#ff3300">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF3300          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff3333">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF3333          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff3366">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF3366          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff3399">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF3399          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff33cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF33CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff33ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF33FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">33</font></td>
                                                                    <td bgcolor="#00ff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#6600ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6600FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6633ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6633FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6666ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6666FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#6699ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #6699FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66CCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#ff6600">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF6600          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff6633">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF6633          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff6666">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF6666          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff6699">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF6699          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff66cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF66CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff66ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF66FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">66</font></td>
                                                                    <td bgcolor="#00ff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#9900ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9900FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9933ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9933FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9966ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9966FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#9999ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #9999FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99CCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#ff9900">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF9900          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff9933">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF9933          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff9966">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF9966          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff9999">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF9999          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff99cc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF99CC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff99ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF99FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">99</font></td>
                                                                    <td bgcolor="#00ff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#cc00ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC00FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc33ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC33FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc66ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC66FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#cc99ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CC99FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCCCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#ffcc00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCC00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcc33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCC33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcc66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCC66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcc99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCC99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffcccc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCCCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">CC</font></td>
                                                                    <td bgcolor="#00ffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#cc0000">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#ff00ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF00FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff33ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF33FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff66ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF66FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ff99ff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FF99FF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffccff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFCCFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#009900">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#ffff00">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFF00          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffff33">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFF33          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffff66">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFF66          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffff99">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFF99          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffffcc">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFFCC          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#fffff4">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                    <td bgcolor="#0000cc">
                                                                        <font color="#ffffff" size="1">FF</font></td>
                                                                    <td bgcolor="#00ffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #00FFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#33ffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #33FFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#66ffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #66FFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#99ffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #99FFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ccffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #CCFFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                    <td bgcolor="#ffffff">
                                                                        <a alt="Click to see the hexcode" href="#" 
                                                                            onclick="alert('The Hex-Color #RRGGBB is: #FFFFFF          ');return false">
                                                                        &nbsp;&nbsp;&nbsp;</a></td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        -------------------<br />
                                                        <br />
                                                        </span>
                                                        <BLOCKQUOTE>
                                                        </BLOCKQUOTE>
                                                    </DIV>
                                                    <BR>
                                                    HAPPY DESIGNING! ^_^...<br />
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
                                                PostBackUrl="~/HTML_L10.aspx">&lt;&lt; Previous</asp:LinkButton>
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
