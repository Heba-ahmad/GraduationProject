<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="CSS_L9.aspx.cs" Inherits="_Default" %>

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
.style1 {color:#aa0000;}
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
    .style3 {color:#aa0000;}
.hlink{cursor:help}
.link {color:#0000aa; font-weight:bold; fonst-size:90%;}
        .style7
        {
            font-family: arial, helvetica;
            font-size: 12px;
            color: #000000;
            font-weight: bold;
            background-color: #eeeeee;
        }
        .style8
        {
            cursor: crosshair;
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
  href="Signup.aspx">Signup</A> <SPAN class=author>to add comment, &amp; to Rate The Tutorials 
          YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/CSS_L9.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                                                PostBackUrl="~/CSS_L8.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/CSS_Contents.aspx">Back to CSS Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 9 - CSS Cursors</H2>
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
                                                            CSS Cursors</div>
                                                        <span class="text"><span class="fancyfirst">M</span>icrosoft Internet Explorer 
                                                        4+ and Netscape 6+ supports customized cursors defined with CSS.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>lthough the cursors will not have the 
                                                        customized look in other browsers it usually doesn't ruin anything. These 
                                                        browsers will simply show the normal arrow-cursor which would be same case as if 
                                                        you refrained from customizing cursors at all.<br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>o unless the page really doesn't work without 
                                                        the customized cursor there shouldn't be technical reasons for choosing not to.<br />
                                                        <br />
                                                        <span class="fancyfirst">H</span>owever there might be other reasons for 
                                                        thinking twice before adding custom cursor to your pages. Many users are easily 
                                                        confused or irritated when a site breaks the standard user interface.
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style3"><span class="style4"><span class="fancyfirst">C</span>URSOR 
                                                        PROPERTIES</span></span><br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                        <tr>
                                                                            <td class="style7">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>Look</td>
                                                                            <td class="style7">
                                                                                Values</td>
                                                                            <td class="style7">
                                                                                Look</td>
                                                                            <td class="style7">
                                                                                NS</td>
                                                                            <td class="style7">
                                                                                IE</td>
                                                                            <td class="style7">
                                                                                Example</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_default.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                default</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:default</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_crosshair.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                crosshair</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:crosshair</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" src="http://www.echoecho.com/css_hand.gif" 
                                                                                    width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                hand</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                            </td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:hand</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" src="http://www.echoecho.com/css_hand.gif" 
                                                                                    width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                pointer</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                            </td>
                                                                            <td class="style5">
                                                                                cursor:pointer</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" src="http://www.echoecho.com/css_hand.gif" 
                                                                                    width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                Cross browser</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                            </td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:pointer;cursor:hand<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" src="http://www.echoecho.com/css_move.gif" 
                                                                                    width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                move</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:move</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" src="http://www.echoecho.com/css_text.gif" 
                                                                                    width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                text</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:text</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" src="http://www.echoecho.com/css_wait.gif" 
                                                                                    width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                wait</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:wait</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" src="http://www.echoecho.com/css_help.gif" 
                                                                                    width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                help</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:help</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_nresize.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                n-resize</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:n-resize</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_neresize.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                ne-resize</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:ne-resize</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_eresize.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                e-resize</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:e-resize</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_seresize.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                se-resize</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:se-resize</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_sresize.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                s-resize</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:s-resize</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_swresize.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                sw-resize</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:sw-resize</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_wresize.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                w-resize</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:w-resize</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_nwresize.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                nw-resize</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style6">
                                                                                4+</td>
                                                                            <td class="style5">
                                                                                cursor:nw-resize</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <br />
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_progress.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                progress</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                            </td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style5">
                                                                                cursor:progress</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <br />
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_not-allowed.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                not-allowed</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                            </td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style5">
                                                                                cursor:not-allowed</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <br />
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_no-drop.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                no-drop</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                            </td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style5">
                                                                                cursor:no-drop</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <br />
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_vertical-text.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                vertical-text</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                            </td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style5">
                                                                                cursor:vertical-text</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <br />
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_all-scroll.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                all-scroll</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                            </td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style5">
                                                                                cursor:all-scroll</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <br />
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_col-resize.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                col-resize</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                            </td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style5">
                                                                                cursor:col-resize</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <br />
                                                                                <img alt="cursor-sample" height="26" 
                                                                                    src="http://www.echoecho.com/css_row-resize.gif" width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                row-resize</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                            </td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style5">
                                                                                cursor:row-resize</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style6">
                                                                                <br />
                                                                                <img alt="cursor-sample" height="26" src="http://www.echoecho.com/css_url.gif" 
                                                                                    width="26" /><br />
                                                                            </td>
                                                                            <td class="style6">
                                                                                cursor:url(uri)</td>
                                                                            <td class="style7">
                                                                                <a href="#" onclick="return false">TEST</a></td>
                                                                            <td class="style6">
                                                                                &nbsp;</td>
                                                                            <td class="style6">
                                                                                6+</td>
                                                                            <td class="style5">
                                                                                cursor:url(uri)<br />
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
                                                        <span class="style3"><span class="style4"><span class="fancyfirst">A</span>DDING 
                                                        A CUSTOMIZED CURSOR</span></span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he syntax for a customized cursor is this:<br />
                                                        (Position the mouse over each link to see the effect)<br />
                                                        <br />
                                                        <span class="note"><span class="style4"><span class="fancyfirst">S</span>elector</span> 
                                                        {cursor:<span class="style4">value</span>}</span><br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>or example:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                        <tr>
                                                                            <td class="style5">
                                                                                <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                &lt;head&gt;<br />
                                                                                &lt;style type=&quot;text/css&quot;&gt;<br />
                                                                                <span class="style1">.xlink {cursor:crosshair}<br />
                                                                                .hlink{cursor:help}</span><br />
                                                                                &lt;/style&gt;<br />
                                                                                &lt;/head&gt;<br />
                                                                                <br />
                                                                                &lt;body&gt;<br />
                                                                                &lt;b&gt;<br />
                                                                                &lt;a href=&quot;mypage.htm&quot; <span class="style1">class=&quot;xlink&quot;</span>&gt;CROSS LINK&lt;/a&gt;<br />
                                                                                &lt;br&gt;<br />
                                                                                &lt;a href=&quot;mypage.htm&quot; <span class="style1">class=&quot;hlink&quot;</span>&gt;HELP LINK&lt;/a&gt;<br />
                                                                                &lt;/b&gt;<br />
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
                                                        <br />
                                                        <span class="fancyfirst">T</span>he links from the above example would look like 
                                                        this:<br />
                                                        <br />
                                                        <table align="center" border="1" cellpadding="10">
                                                            <tr>
                                                                <td align="middle" bgcolor="#ffffff" width="200">
                                                                    <style type="text/css">
.xlink {cursor:crosshair}.hlink{cursor:help}</style>
                                                                    <b><a class="style8" href="http://www.echoecho.com/mypage.htm">CROSS LINK</a><br />
                                                                    <br />
                                                                    <a class="hlink" href="http://www.echoecho.com/mypage.htm">HELP LINK</a></b></td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style3"><span class="style4"><span class="fancyfirst">R</span>EDEFINING 
                                                        THE CURSOR FOR ENTIRE PAGES</span></span><br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you want to redefine the cursor so that it's 
                                                        not only showing up when moved over a link, you simply specify the desired 
                                                        cursor using the body-selector.<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>or example:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                        <tr>
                                                                            <td class="style5">
                                                                                <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                &lt;head&gt;<br />
                                                                                &lt;style type=&quot;text/css&quot;&gt;<br />
                                                                                <span class="style1">body {cursor:crosshair}</span><br />
                                                                                &lt;/style&gt;<br />
                                                                                &lt;/head&gt;<br />
                                                                                <br />
                                                                                &lt;body&gt;<br />
                                                                                &lt;b&gt;<br />
                                                                                SOME TEXT<br />
                                                                                &lt;br&gt;<br />
                                                                                &lt;a href=&quot;mypage.htm&quot;&gt;ONE LINK&lt;/a&gt;<br />
                                                                                &lt;br&gt;<br />
                                                                                &lt;a href=&quot;mypage.htm&quot;&gt;ANOTHER LINK&lt;/a&gt;<br />
                                                                                &lt;/b&gt;<br />
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
                                                        <span class="fancyfirst">C</span>lick
                                                        <a href="http://www.echoecho.com/samplecsscursor01.htm" 
                                                            target="&quot;_blank&quot;"><span class="link">here</span></a> to open a 
                                                        window that shows the result of the above example.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style3"><span class="style4"><span class="fancyfirst">R</span>EDEFINING 
                                                        THE CURSOR FOR AREAS ON A PAGE</span></span><br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you want one look of the cursor in one area 
                                                        of the page and another look of the cursor in another area you can do it with 
                                                        context dependant selectors.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his way, you create different styles for links, 
                                                        that are dependant on the context. Now if the context is set with a dummy tag, 
                                                        such as &lt;span&gt; you don't have to specify the desired style each and every time 
                                                        there is a link in the section.<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>or example:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                        <tr>
                                                                            <td class="style5">
                                                                                <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                &lt;head&gt;<br />
                                                                                &lt;style type=&quot;text/css&quot;&gt;<br />
                                                                                <span class="style1">.xlink A{cursor:crosshair}<br />
                                                                                .hlink A{cursor:help}</span><br />
                                                                                &lt;/style&gt;<br />
                                                                                &lt;/head&gt;<br />
                                                                                <br />
                                                                                &lt;body&gt;<br />
                                                                                &lt;b&gt;<br />
                                                                                <span class="style1">&lt;span class=&quot;xlink&quot;&gt;</span><br />
                                                                                &lt;a href=&quot;mypage.htm&quot;&gt;CROSS LINK 1&lt;/a&gt;&lt;br&gt;<br />
                                                                                &lt;a href=&quot;mypage.htm&quot;&gt;CROSS LINK 2&lt;/a&gt;&lt;br&gt;<br />
                                                                                &lt;a href=&quot;mypage.htm&quot;&gt;CROSS LINK 3&lt;/a&gt;&lt;br&gt;<br />
                                                                                <span class="style1">&lt;/span&gt;</span><br />
                                                                                &lt;br&gt;<br />
                                                                                <span class="style1">&lt;span class=&quot;hlink&quot;&gt;</span><br />
                                                                                &lt;a href=&quot;mypage.htm&quot;&gt;HELP LINK 1&lt;/a&gt;&lt;br&gt;<br />
                                                                                &lt;a href=&quot;mypage.htm&quot;&gt;HELP LINK 2&lt;/a&gt;&lt;br&gt;<br />
                                                                                &lt;a href=&quot;mypage.htm&quot;&gt;HELP LINK 3&lt;/a&gt;&lt;br&gt;<br />
                                                                                <span class="style1">&lt;/span&gt;</span><br />
                                                                                &lt;/b&gt;<br />
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
                                                        <br />
                                                        <span class="fancyfirst">T</span>he links from the above example would look like 
                                                        this:<br />
                                                        <br />
                                                        <table align="center" border="1" cellpadding="10">
                                                            <tr>
                                                                <td align="middle" bgcolor="#ffffff" width="200">
                                                                    <style type="text/css">
.xlink1 A{cursor:crosshair}.hlink1 A{cursor:help}</style>
                                                                    <b><span class="xlink1"><a href="http://www.echoecho.com/mypage.htm">CROSS LINK 
                                                                    1</a><br />
                                                                    <a href="http://www.echoecho.com/mypage.htm">CROSS LINK 2</a><br />
                                                                    <a href="http://www.echoecho.com/mypage.htm">CROSS LINK 3</a><br />
                                                                    </span>
                                                                    <br />
                                                                    <span class="hlink1"><a href="http://www.echoecho.com/mypage.htm">HELP LINK 1</a><br />
                                                                    <a href="http://www.echoecho.com/mypage.htm">HELP LINK 2</a><br />
                                                                    <a href="http://www.echoecho.com/mypage.htm">HELP LINK 3</a><br />
                                                                    </span></b>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        </span>
                                                        <p>
                                                            HAPPY DESIGNING! ^_^<BLOCKQUOTE>
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
                                                PostBackUrl="~/CSS_L8.aspx">&lt;&lt; Previous</asp:LinkButton>
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
