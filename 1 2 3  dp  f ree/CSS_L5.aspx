<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="CSS_L5.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>CSS Tutorials</TITLE>
<META content="text/html; charset=windows-1256" http-equiv=Content-Type>
<META name=Description 
content="Lesson 1 on the VB IDE, the environment, creating a Project, creating a form">
<META name=Keywords 
content="VB 6, IT training, course, application, computer programming, file processing, database">
<META name=Distribution content=Global>
<META name=Rating content=General><LINK rel=StyleSheet type=text/css 
href="images\LessonsImages\CSSLessons\newstyles2.css">
<META name=GENERATOR content="MSHTML 8.00.6001.18904">
    <style type="text/css">

.text {font-family:"arial","helvetica"; font-size:14px; color:#000000;}
.fancyfirst {font-size:150%; font-family:"times","times new roman"}

.note {font-weight:bold; font-size:90%;}
.style4 {color:#990000;font-weight:bold; font-size:16px;font-family:"times","times new roman"}
        .style5
        {
            font-family: Courier, "Courier New", arial, helvetica;
            font-size: 11px;
            color: #222222;
            background-color: #dddddd;
        }
        .style6
        {
            font-family: arial, helvetica;
            font-size: 12px;
            color: #000000;
            background-color: #ffffff;
        }
        .style7
        {
            font-family: arial, helvetica;
            font-size: 12px;
            color: #000000;
            font-weight: bold;
            background-color: #eeeeee;
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
  href="Signup.aspx">Signup</A> <SPAN class=author><span> 
          to add comment, &amp; to Rate The Tutorials YOU Like!<asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/CSS_L5.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;&nbsp;<img alt="" src="images/CSS.JPG" 
                    style="width: 204px; height: 86px" /><br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/CSS_L4.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/CSS_Contents.aspx">Back to CSS Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="CSS_L6.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 5 - CSS Colors</H2>
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
                                                            CSS Colors</div>
                                                        <span class="text"><span class="fancyfirst">C</span>SS has several options for 
                                                        defining colors of both text and background areas on your pages.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>hese options can entirely replace the color 
                                                        attributes in plain HTML. In addition, you get new options that you just didn't 
                                                        have in plain HTML.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>or example, in plain HTML, when you wanted to 
                                                        create an area with a specific color you were forced to include a table. With 
                                                        CSS, you can define an area to have a specific color without that area being 
                                                        part of a table.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>r even more useful, in plain HTML when working 
                                                        with tables, you had to specify font attributes and colors etc. for each and 
                                                        every table cell. With CSS you can simply refer to a certain class in your
                                                        <span class="style4">&lt;TD&gt;</span> tags.<br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">C</span>OLOR PROPERTIES</span><br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                        <tr>
                                                                            <td class="style7">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>Property</td>
                                                                            <td class="style7">
                                                                                Values</td>
                                                                            <td class="style7">
                                                                                NS</td>
                                                                            <td class="style7">
                                                                                IE</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style5">
                                                                                color<br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                &lt;color&gt;</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style5">
                                                                                background-color<br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                transparent<br />
                                                                                &lt;color&gt;</td>
                                                                            <td class="style6">
                                                                                4+<br />
                                                                                4+</td>
                                                                            <td class="style6">
                                                                                4+<br />
                                                                                4+</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style5">
                                                                                background-image</td>
                                                                            <td class="style6">
                                                                                none<br />
                                                                                url(&lt;URL&gt;)</td>
                                                                            <td class="style6">
                                                                                4+<br />
                                                                                4+</td>
                                                                            <td class="style6">
                                                                                4+<br />
                                                                                4+</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style5">
                                                                                background-repeat<br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                repeat<br />
                                                                                repeat-x<br />
                                                                                repeat-y<br />
                                                                                no-repeat</td>
                                                                            <td class="style6">
                                                                                4+<br />
                                                                                4+<br />
                                                                                4+<br />
                                                                                4+</td>
                                                                            <td class="style6">
                                                                                4+<br />
                                                                                4+<br />
                                                                                4+<br />
                                                                                4+</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style5">
                                                                                background-attachment<br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                scroll<br />
                                                                                fixed</td>
                                                                            <td class="style6">
                                                                                <br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                4+<br />
                                                                                4+</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style5">
                                                                                background-position<br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                &lt;percentage&gt;<br />
                                                                                &lt;length&gt;<br />
                                                                                top<br />
                                                                                center<br />
                                                                                bottom<br />
                                                                                left<br />
                                                                                right</td>
                                                                            <td class="style6">
                                                                                <br />
                                                                                <br />
                                                                                <br />
                                                                                <br />
                                                                                <br />
                                                                                <br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                4+<br />
                                                                                4+<br />
                                                                                4+<br />
                                                                                4+<br />
                                                                                4+<br />
                                                                                4+<br />
                                                                                4+</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style5">
                                                                                background<br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                &lt;background-color&gt;<br />
                                                                                &lt;background-image&gt;<br />
                                                                                &lt;background-repeat&gt;<br />
                                                                                &lt;background-attachment&gt;<br />
                                                                                &lt;background-position&gt;</td>
                                                                            <td class="style6">
                                                                                4+<br />
                                                                                4+<br />
                                                                                4+<br />
                                                                                &nbsp;<br />
                                                                                &nbsp;</td>
                                                                            <td class="style6">
                                                                                4+<br />
                                                                                4+<br />
                                                                                4+<br />
                                                                                4+<br />
                                                                                4+<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <span class="note">4P:problems, 4M:Mac only, 4W:Windows only</span><br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">S</span>etting colors</span><br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>asically you have three color options with CSS:<br />
                                                        <br />
                                                        1: Setting the foreground color for contents<br />
                                                        2: Setting the background color for an area<br />
                                                        3: Setting a background image to fill out an area<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n the next section we will list the different 
                                                        properties that let you
                                                        <br />
                                                        do that.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n plain HTML, colors can either be entered by 
                                                        name (red, blue etc.) or by a hexadecimal color code (for example: #FF9900).<br />
                                                        <br />
                                                        <span class="fancyfirst">W</span>ith CSS you have these options:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                <br />
                                                                                <span class="style4">Common name</span><br />
                                                                                You can define colors with the use of common names, by simply enter the name of 
                                                                                the desired color.<br />
                                                                                <br />
                                                                                For example:<br />
                                                                                <br />
                                                                                <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                    cellspacing="1">
                                                                                    <tr>
                                                                                        <td bgcolor="#99aa99">
                                                                                            <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                                                <tr>
                                                                                                    <td class="style5">
                                                                                                        <!-- perl mysql php web host -->.myclass {color:red; background-color:blue;}<br />
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
                                                                                <span class="style4">Hexadecimal value</span><br />
                                                                                You can define colors with the use of hexadecimal values, similar to how it's 
                                                                                done in plain HTML.<br />
                                                                                <br />
                                                                                For example:<br />
                                                                                <br />
                                                                                <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                    cellspacing="1">
                                                                                    <tr>
                                                                                        <td bgcolor="#99aa99">
                                                                                            <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                                                <tr>
                                                                                                    <td class="style5">
                                                                                                        <!-- perl mysql php web host -->.myclass {color:#000000; 
                                                                                                        background-color:#FFCC00;}<br />
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
                                                                                <span class="style4">RGB value</span><br />
                                                                                You can define colors with the use of RGB values, by simply entering the values 
                                                                                for amounts of Red, Green and Blue.<br />
                                                                                <br />
                                                                                For example:<br />
                                                                                <br />
                                                                                <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                    cellspacing="1">
                                                                                    <tr>
                                                                                        <td bgcolor="#99aa99">
                                                                                            <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                                                <tr>
                                                                                                    <td class="style5">
                                                                                                        <!-- perl mysql php web host -->.myclass {color:rgb(255,255,204); 
                                                                                                        background-color:rgb(51,51,102);}<br />
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                                <!-- perl mysql php web host-->
                                                                                <br />
                                                                                <br />
                                                                                <span class="fancyfirst">Y</span>ou can also define RGB colors using percentage 
                                                                                values for the amounts of Red, Green and Blue:<br />
                                                                                <br />
                                                                                For example:<br />
                                                                                <br />
                                                                                <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                    cellspacing="1">
                                                                                    <tr>
                                                                                        <td bgcolor="#99aa99">
                                                                                            <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                                                <tr>
                                                                                                    <td class="style5">
                                                                                                        <!-- perl mysql php web host -->.myclass {color:rgb(100%,100%,81%); 
                                                                                                        background-color:rgb(81%,18%,100%);}<br />
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                                <!-- perl mysql php web host-->
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
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">S</span>etting background colors</span><br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>ackground colors are defined similar to the 
                                                        colors mentioned above. For example you can set the background color of the 
                                                        entire page using the <span class="note"><span class="style4">BODY</span></span> 
                                                        selector:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                        <tr>
                                                                            <td class="style5">
                                                                                <!-- perl mysql php web host -->BODY {background-color:#FF6666;}<br />
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
                                                        <span class="style4"><span class="fancyfirst">S</span>etting a background image</span><br />
                                                        CSS lets you set a background image for both the page and single elements on the 
                                                        page.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n addition, CSS offers several positioning 
                                                        methods for background images.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can define the background image for the page 
                                                        like this:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                        <tr>
                                                                            <td class="style5">
                                                                                <!-- perl mysql php web host -->BODY {background-image:url(myimage.gif);}<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can control the repetition of the image with 
                                                        the <span class="note"><span class="style4">background-repeat</span></span> 
                                                        property.<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                <span class="style4">background-repeat:repeat</span><br />
                                                                                Tiles the image until the entire page is filled, just like an ordinary 
                                                                                background image in plain HTML.<br />
                                                                                <br />
                                                                                <span class="style4">background-repeat:repeat-x</span><br />
                                                                                Repeats the image horizontally - but not vertically.<br />
                                                                                <br />
                                                                                <span class="style4">background-repeat:repeat-y</span><br />
                                                                                Repeats the image vertically - but not horizontally.<br />
                                                                                <br />
                                                                                <span class="style4">background-repeat:no-repeat</span><br />
                                                                                Does not tile the image at all.<br />
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
                                                        <span class="style4"><span class="fancyfirst">P</span>ositioning a background</span><br />
                                                        Background positioning is done by entering a value for the left position and top 
                                                        position separated by a space.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n this example the image is positioned 75 
                                                        pixels from the upper left corner of the page:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                        <tr>
                                                                            <td class="style5">
                                                                                <!-- perl mysql php web host -->BODY {background-image:url(myimage.gif); 
                                                                                background-position: 75px 75px;}<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="note"><span class="fancyfirst">N</span>ote: Background positioning 
                                                        is not supported by Netscape 4 browsers.</span><br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">F</span>ixing a background</span><br />
                                                        You can fixate an image at a certain position so that it doesn't move when 
                                                        scrolling occurs.<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                        <tr>
                                                                            <td class="style5">
                                                                                <!-- perl mysql php web host -->BODY {background-image:url(myimage.gif); 
                                                                                background-attachment: fixed;}<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="note"><span class="fancyfirst">N</span>ote: Background fixation is 
                                                        not supported by Netscape 4 browsers.</span><br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">S</span>etting multiple background 
                                                        values</span><br />
                                                        Rather than defining each <span class="note"><span class="style4">background</span></span> 
                                                        property with its own property you can assign them all with the use of the
                                                        <span class="note"><span class="style4">background</span></span> property.<br />
                                                        <br />
                                                        <span class="fancyfirst">L</span>ook at this example:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                        <tr>
                                                                            <td class="style5">
                                                                                <!-- perl mysql php web host -->BODY {background:green url(myimage.gif) repeat-y 
                                                                                fixed 75px 75px;}<br />
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
                                                        </span>
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
                    InsertCommand="INSERT CSS_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    
                      
                      
                      
                      
                      
                      
                      SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [CSS_tblComments]">
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
                    PostBackUrl="~/CSS_Contents.aspx">Back to CSS Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/CSS_L4.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/CSS_L6.aspx">Next &gt;&gt;</asp:LinkButton>
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
