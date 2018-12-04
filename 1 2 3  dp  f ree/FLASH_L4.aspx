<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="FLASH_L4.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>FLASH Tutorials</TITLE>
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
    .style2 {color:#000000;}
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
  href="Signup.aspx">Signup</A> to add comment, &amp; to Rate The Tutorials YOU Like!<SPAN class=author><br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/FLASH_L4.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                <img alt="" src="images/Flash.png" style="width: 184px; height: 85px" />&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/FLASH_L3.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/FLASH_Contents.aspx">Back to FLASH Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="FLASH_L5.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 4 - Flash Tweenings </H2>
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
                                                            Flash Tweenings</div>
                                                        <p>
                                                            <span class="text">&nbsp;<table align="center" border="0" cellpadding="2" 
                                                                cellspacing="0" width="520">
                                                                <tr>
                                                                    <td class="main">
                                                                        <div align="left">
                                                                            <span class="text"><span class="fancyfirst">T</span>he term &quot;Tweening&quot; is 
                                                                            derived from &quot;in between&quot;.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">S</span>ometimes you want to add an effect that is 
                                                                            graduated over several frames.
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">F</span>or example, moving a car from the left side of 
                                                                            the movie to the right side.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>nstead of moving the car a little bit on each 
                                                                            frame, you can simply:<br />
                                                                            <ul>
                                                                                <li>position the car on the first frame,
                                                                                    <br />
                                                                                </li>
                                                                                <li>then insert a keyframe where the car should stop<br />
                                                                                </li>
                                                                                <li>and finally tell Flash to tween between the two keyframes.<br />
                                                                                </li>
                                                                            </ul>
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>weening simply means going from one keyframe to 
                                                                            another while taking small steps for each of the ordinary frames in between.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>n this tutorial you can learn to make:<br />
                                                                            <ul>
                                                                                <li><span class="style4">Motion Guide Tweenings</span><br />
                                                                                    <div align="center">
                                                                                        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                                            codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                                            height="75" width="75">
                                                                                            <param name="_cx" value="1984" />
                                                                                            <param name="_cy" value="1984" />
                                                                                            <param name="FlashVars" value="" />
                                                                                            <param name="Movie" value="http://www.echoecho.com/i/motionguide.swf" />
                                                                                            <param name="Src" value="http://www.echoecho.com/i/motionguide.swf" />
                                                                                            <param name="WMode" value="Window" />
                                                                                            <param name="Play" value="-1" />
                                                                                            <param name="Loop" value="-1" />
                                                                                            <param name="Quality" value="High" />
                                                                                            <param name="SAlign" value="" />
                                                                                            <param name="Menu" value="0" />
                                                                                            <param name="Base" value="" />
                                                                                            <param name="AllowScriptAccess" value="" />
                                                                                            <param name="Scale" value="ShowAll" />
                                                                                            <param name="DeviceFont" value="0" />
                                                                                            <param name="EmbedMovie" value="0" />
                                                                                            <param name="BGColor" value="" />
                                                                                            <param name="SWRemote" value="" />
                                                                                            <param name="MovieData" value="" />
                                                                                            <param name="SeamlessTabbing" value="1" />
                                                                                            <param name="Profile" value="0" />
                                                                                            <param name="ProfileAddress" value="" />
                                                                                            <param name="ProfilePort" value="0" />
                                                                                            <param name="AllowNetworking" value="all" />
                                                                                            <param name="AllowFullScreen" value="false" />
                                                                                            <embed height="75" loop="true" menu="false" quality="best" 
                                                                                                src="http://www.echoecho.com/i/motionguide.swf" width="75"></embed></object>
                                                                                    </div>
                                                                                    <br />
                                                                                    (Moving objects from A to B along a customized path)<br />
                                                                                    <br />
                                                                                    <br />
                                                                                </li>
                                                                                <li><span class="style4">Tint Tweenings</span><br />
                                                                                    <div align="center">
                                                                                        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                                            codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                                            height="75" width="75">
                                                                                            <param name="_cx" value="1984" />
                                                                                            <param name="_cy" value="1984" />
                                                                                            <param name="FlashVars" value="" />
                                                                                            <param name="Movie" value="http://www.echoecho.com/i/tint.swf" />
                                                                                            <param name="Src" value="http://www.echoecho.com/i/tint.swf" />
                                                                                            <param name="WMode" value="Window" />
                                                                                            <param name="Play" value="-1" />
                                                                                            <param name="Loop" value="-1" />
                                                                                            <param name="Quality" value="High" />
                                                                                            <param name="SAlign" value="" />
                                                                                            <param name="Menu" value="0" />
                                                                                            <param name="Base" value="" />
                                                                                            <param name="AllowScriptAccess" value="" />
                                                                                            <param name="Scale" value="ShowAll" />
                                                                                            <param name="DeviceFont" value="0" />
                                                                                            <param name="EmbedMovie" value="0" />
                                                                                            <param name="BGColor" value="" />
                                                                                            <param name="SWRemote" value="" />
                                                                                            <param name="MovieData" value="" />
                                                                                            <param name="SeamlessTabbing" value="1" />
                                                                                            <param name="Profile" value="0" />
                                                                                            <param name="ProfileAddress" value="" />
                                                                                            <param name="ProfilePort" value="0" />
                                                                                            <param name="AllowNetworking" value="all" />
                                                                                            <param name="AllowFullScreen" value="false" />
                                                                                            <embed height="75" loop="true" menu="false" quality="best" 
                                                                                                src="http://www.echoecho.com/i/tint.swf" width="75"></embed></object>
                                                                                    </div>
                                                                                    <br />
                                                                                    (Graduated color changing of an object.)<br />
                                                                                    <br />
                                                                                    <br />
                                                                                </li>
                                                                                <li><span class="style4">Shape Tweenings</span><br />
                                                                                    <div align="center">
                                                                                        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                                            codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                                            height="75" width="75">
                                                                                            <param name="_cx" value="1984" />
                                                                                            <param name="_cy" value="1984" />
                                                                                            <param name="FlashVars" value="" />
                                                                                            <param name="Movie" value="http://www.echoecho.com/i/shape.swf" />
                                                                                            <param name="Src" value="http://www.echoecho.com/i/shape.swf" />
                                                                                            <param name="WMode" value="Window" />
                                                                                            <param name="Play" value="-1" />
                                                                                            <param name="Loop" value="-1" />
                                                                                            <param name="Quality" value="High" />
                                                                                            <param name="SAlign" value="" />
                                                                                            <param name="Menu" value="0" />
                                                                                            <param name="Base" value="" />
                                                                                            <param name="AllowScriptAccess" value="" />
                                                                                            <param name="Scale" value="ShowAll" />
                                                                                            <param name="DeviceFont" value="0" />
                                                                                            <param name="EmbedMovie" value="0" />
                                                                                            <param name="BGColor" value="" />
                                                                                            <param name="SWRemote" value="" />
                                                                                            <param name="MovieData" value="" />
                                                                                            <param name="SeamlessTabbing" value="1" />
                                                                                            <param name="Profile" value="0" />
                                                                                            <param name="ProfileAddress" value="" />
                                                                                            <param name="ProfilePort" value="0" />
                                                                                            <param name="AllowNetworking" value="all" />
                                                                                            <param name="AllowFullScreen" value="false" />
                                                                                            <embed height="75" loop="true" menu="false" quality="best" 
                                                                                                src="http://www.echoecho.com/i/shape.swf" width="75"></embed></object>
                                                                                    </div>
                                                                                    <br />
                                                                                    (Graduated change of one object into another)<br />
                                                                                </li>
                                                                            </ul>
                                                                            <hr align="center" width="300" />
            <DIV align=center>
                <br />
                <A 
            href="#top">Top</A></DIV>
                                                                            <p>
                                                                                &nbsp;</p>
                                                                            <p>
                                                                                &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            MOTION GUIDE TWEEN</div>
                                                                                <p>
                                                                                    <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                                        <tr>
                                                                                            <td class="main">
                                                                                                <div align="left">
                                                                                                    <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                                                    <span class="text"><span class="fancyfirst">F</span>irst look at this example of 
                                                                                                    a Motion Guide Tweening:<br />
                                                                                                    <br />
                                                                                                    <div align="center">
                                                                                                        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                                                            codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                                                            height="75" width="75">
                                                                                                            <param name="_cx" value="1984" />
                                                                                                            <param name="_cy" value="1984" />
                                                                                                            <param name="FlashVars" value="" />
                                                                                                            <param name="Movie" value="http://www.echoecho.com/i/motionguide.swf" />
                                                                                                            <param name="Src" value="http://www.echoecho.com/i/motionguide.swf" />
                                                                                                            <param name="WMode" value="Window" />
                                                                                                            <param name="Play" value="-1" />
                                                                                                            <param name="Loop" value="-1" />
                                                                                                            <param name="Quality" value="High" />
                                                                                                            <param name="SAlign" value="" />
                                                                                                            <param name="Menu" value="0" />
                                                                                                            <param name="Base" value="" />
                                                                                                            <param name="AllowScriptAccess" value="" />
                                                                                                            <param name="Scale" value="ShowAll" />
                                                                                                            <param name="DeviceFont" value="0" />
                                                                                                            <param name="EmbedMovie" value="0" />
                                                                                                            <param name="BGColor" value="" />
                                                                                                            <param name="SWRemote" value="" />
                                                                                                            <param name="MovieData" value="" />
                                                                                                            <param name="SeamlessTabbing" value="1" />
                                                                                                            <param name="Profile" value="0" />
                                                                                                            <param name="ProfileAddress" value="" />
                                                                                                            <param name="ProfilePort" value="0" />
                                                                                                            <param name="AllowNetworking" value="all" />
                                                                                                            <param name="AllowFullScreen" value="false" />
                                                                                                            <embed height="75" loop="true" menu="false" quality="best" 
                                                                                                                src="http://www.echoecho.com/i/motionguide.swf" width="75"></embed></object>
                                                                                                    </div>
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    <hr align="center" width="300" />
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">D</span>o the following to make a Motion Guide 
                                                                                                    Tweening.<br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">1</span>.<br />
                                                                                                    To insert 30 frames in your movie with the mouse:<br />
                                                                                                    Click frame 30 in layer 1 on the timeline - then press F5.<br />
                                                                                                    <br />
                                                                                                    <img alt="Timeline" height="117" 
                                                                                                        src="images/LessonsImages/FLASHLessons/flashtweenings011.gif" width="435" /><br />
                                                                                                    <br />
                                                                                                    <hr align="center" width="300" />
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">2</span>.<br />
                                                                                                    Now you need to find the element you want to tween.<br />
                                                                                                    ( It can be any element you like ) .<br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">C</span>hoose Libraries &gt; Graphics in the menu.<br />
                                                                                                    Library - Grapics opens.<br />
                                                                                                    Find Bird and with the mouse, drag it into the canvas.<br />
                                                                                                    <br />
                                                                                                    <img alt="Library-&gt;Graphics" height="301" 
                                                                                                        src="images/LessonsImages/FLASHLessons/flashtweenings012.gif" width="160" /><br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">U</span>se the scale tool in the toolbox, to resize the 
                                                                                                    bird as you like.<br />
                                                                                                    (If your version of Flash does not contain &quot;bird&quot;, then just use any other 
                                                                                                    symbol).<br />
                                                                                                    <br />
                                                                                                    <hr align="center" width="300" />
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">3</span>.<br />
                                                                                                    Now enter a keyframe in frame 30. To do this, first click<br />
                                                                                                    frame 30 in layer one on the timeline. Then press F6.
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    <img alt="Timeline" height="117" 
                                                                                                        src="images/LessonsImages/FLASHLessons/flashtweenings013.gif" width="435" /><br />
                                                                                                    <br />
                                                                                                    <hr align="center" width="300" />
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">4</span>.<br />
                                                                                                    Next, double click the keyframe in frame 1.<br />
                                                                                                    A frame Properties Box pops up.<br />
                                                                                                    Choose &quot;Tweening&quot;, and in the Tweening drop-down menu choose &quot;Motion&quot;.<br />
                                                                                                    <br />
                                                                                                    <img alt="Frame Properties" height="357" 
                                                                                                        src="images/LessonsImages/FLASHLessons/flashframeproperties.gif" width="435" /><br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">C</span>lick OK<br />
                                                                                                    <br />
                                                                                                    <hr align="center" width="300" />
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">5</span>.<br />
                                                                                                    Right click on Layer 1.<br />
                                                                                                    A pop-up menu appears.<br />
                                                                                                    Choose Add Motion Guide.<br />
                                                                                                    <br />
                                                                                                    <img alt="Add Motion Guide" height="250" 
                                                                                                        src="images/LessonsImages/FLASHLessons/flashtweenings014.gif" width="435" /><br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">F</span>lash now inserts a new layer on top of layer 1,<br />
                                                                                                    with the Motion Guide icon to the left of the layer's name.<br />
                                                                                                    <br />
                                                                                                    <img alt="Timeline" height="117" 
                                                                                                        src="images/LessonsImages/FLASHLessons/flashtweenings015.gif" width="435" /><br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">T</span>his new layer is called a motion guide layer.<br />
                                                                                                    Motion guide layers are used to draw lines that you want an animated symbol to 
                                                                                                    follow.<br />
                                                                                                    <br />
                                                                                                    <hr align="center" width="300" />
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">6</span>.<br />
                                                                                                    Click on the Motion Guide Layer to make sure it is the active layer.<br />
                                                                                                    (Click on the layer name, where it says &quot;Guide: Layer 1&quot;).<br />
                                                                                                    <br />
                                                                                                    Choose pencil
                                                                                                    <img alt="Pen" height="22" src="images/LessonsImages/FLASHLessons/pen.gif" width="24" /> 
                                                                                                    in the toolbox. (Or press P on the keyboard)
                                                                                                    <br />
                                                                                                    Make sure pencil mode is set to &quot;Smooth&quot;.<br />
                                                                                                    <br />
                                                                                                    <img alt="Pencil Mode" height="290" 
                                                                                                        src="images/LessonsImages/FLASHLessons/flashtweenings016.gif" width="231" /><br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">W</span>ith the pencil draw the line you want the bird 
                                                                                                    to fly along.<br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">F</span>or example like this:
                                                                                                    <br />
                                                                                                    <img alt="Motion Guide Example" height="40" 
                                                                                                        src="images/LessonsImages/FLASHLessons/flashtweenings017.gif" width="112" /><br />
                                                                                                    (Hint: Do not make complex patterns until you're familiar with the technique).<br />
                                                                                                    <br />
                                                                                                    <hr align="center" width="300" />
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">7</span>.<br />
                                                                                                    Now adjust the frame pointer so it points to frame 1.<br />
                                                                                                    <br />
                                                                                                    <img alt="Timeline" height="117" 
                                                                                                        src="images/LessonsImages/FLASHLessons/flashtweenings018.gif" width="435" /><br />
                                                                                                    <br />
                                                                                                    Make sure the Snap button
                                                                                                    <img alt="Snap" height="22" src="images/LessonsImages/FLASHLessons/magnet.gif" 
                                                                                                        width="24" /> is activated (or choose
                                                                                                    <br />
                                                                                                    View &gt; Snap in the menu, to activate snapping).<br />
                                                                                                    <br />
                                                                                                    <hr align="center" width="300" />
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">8</span>.<br />
                                                                                                    With the mouse, place the bird so that its center is at the beginning of your 
                                                                                                    motion guide.<br />
                                                                                                    (The center is indicated by a small + when selected).<br />
                                                                                                    A black circle appears when the bird is attached to the motion guide.<br />
                                                                                                    It can sometimes be hard to get the symbol to snap to the guide. Eventually it 
                                                                                                    will though :o)<br />
                                                                                                    Try zooming in or out if you just can't get the bird to snap to the guide.<br />
                                                                                                    Release the mouse button when the bird is snapped to the guide.<br />
                                                                                                    <br />
                                                                                                    <img alt="Frame 1: Bird Motion Guide" height="200" 
                                                                                                        src="images/LessonsImages/FLASHLessons/flashtweenings019.gif" width="435" /><br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">N</span>ow adjust the frame pointer so that it points 
                                                                                                    at frame 30. Repeat the process<br />
                                                                                                    placing the bird at the end of the motion guide.<br />
                                                                                                    <br />
                                                                                                    <img alt="Frame 30: Bird Motion Guide" height="200" 
                                                                                                        src="images/LessonsImages/FLASHLessons/flashtweenings01A.gif" width="435" /><br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">C</span>ongrats! You have just created .... 
                                                                                                    (drumrolls)...... a Motion Guide Tweening!<br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">T</span>he bird will now follow the motion guide when 
                                                                                                    you play the movie.<br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">P</span>ress Ctrl+Enter to test your movie.<br />
                                                                                                    <br />
                                                                                                    <hr align="center" width="300" />
                                                                                                    <br />
                                                                                                    <br />
                                                                                                    <span class="style4"><span class="fancyfirst">O</span>rient to path direction.</span><br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">I</span>f say, your motion guide was a circle, you 
                                                                                                    would have the bird fly in a thrilling loop.<br />
                                                                                                    However it would look kind of odd, since the bird would only follow the circle, 
                                                                                                    but not<br />
                                                                                                    actually point the nose in the direction of the circle.<br />
                                                                                                    During the entire loop the bird would have its head pointing to the right :o)<br />
                                                                                                    Eventually the bird would fly backwards. Quite a thrill maybe... but .. not too 
                                                                                                    realistic :o)<br />
                                                                                                    <br />
                                                                                                    <span class="fancyfirst">I</span>f you want the bird to actually follow the 
                                                                                                    circle, not only in movement, but also in direction,<br />
                                                                                                    you should double click the keyframe in frame 1 on layer 1.
                                                                                                    <br />
                                                                                                    This will reopen the frame properties box.<br />
                                                                                                    Choose the &quot;tweening&quot; option.<br />
                                                                                                    Select the &quot;Orient to path direction&quot; option, and click ok.</span>
                                                                                                    <br />
                                                                                                    <br />
                                                            <span class="text">
                                                                                                    <hr align="center" width="300" />
                                                                                                    <br />
                                                            </span>
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                                                                    <br />
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                            </p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            TINT TWEEN<br />
                                                                                </div>
                                                                                <span class="fancyfirst">F</span>irst look at this example of a Tint 
                                                                            Tweening:<br />
                                                                            <br />
                                                                            <div align="center">
                                                                                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                                    codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                                    height="75" width="75">
                                                                                    <param name="_cx" value="1984" />
                                                                                    <param name="_cy" value="1984" />
                                                                                    <param name="FlashVars" value="" />
                                                                                    <param name="Movie" value="http://www.echoecho.com/i/tint.swf" />
                                                                                    <param name="Src" value="http://www.echoecho.com/i/tint.swf" />
                                                                                    <param name="WMode" value="Window" />
                                                                                    <param name="Play" value="-1" />
                                                                                    <param name="Loop" value="-1" />
                                                                                    <param name="Quality" value="High" />
                                                                                    <param name="SAlign" value="" />
                                                                                    <param name="Menu" value="0" />
                                                                                    <param name="Base" value="" />
                                                                                    <param name="AllowScriptAccess" value="" />
                                                                                    <param name="Scale" value="ShowAll" />
                                                                                    <param name="DeviceFont" value="0" />
                                                                                    <param name="EmbedMovie" value="0" />
                                                                                    <param name="BGColor" value="" />
                                                                                    <param name="SWRemote" value="" />
                                                                                    <param name="MovieData" value="" />
                                                                                    <param name="SeamlessTabbing" value="1" />
                                                                                    <param name="Profile" value="0" />
                                                                                    <param name="ProfileAddress" value="" />
                                                                                    <param name="ProfilePort" value="0" />
                                                                                    <param name="AllowNetworking" value="all" />
                                                                                    <param name="AllowFullScreen" value="false" />
                                                                                    <embed height="75" loop="true" menu="false" quality="best" 
                                                                                        src="http://www.echoecho.com/i/tint.swf" width="75"></embed></object>
                                                                            </div>
                                                                            <br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">D</span>o the following to create a Tint Tweening.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">1</span>. Create a symbol.<br />
                                                                            Choose Insert &gt; New Symbol in the menu (or press Ctrl+F8).<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">2</span>.Enter a name for the symbol.
                                                                            <br />
                                                                            A Symbol Properties box appears.<br />
                                                                            Enter <span class="style2">MySymbol</span> in the &quot;name&quot; field.<br />
                                                                            Make sure the &quot;graphic&quot; option is selected.<br />
                                                                            Click OK.<br />
                                                                            <br />
                                                                            <img alt="New Symbol" height="180" 
                                                                                src="images/LessonsImages/FLASHLessons/flashnewsymbol.gif" width="415" /><br />
                                                                            <br />
                                                                            <span class="fancyfirst">A</span>fter clicking OK, you are taken to the symbol 
                                                                            generator
                                                                            <br />
                                                                            in Flash.<br />
                                                                            It looks exactly like the work area you are in when you<br />
                                                                            create movies.<br />
                                                                            And it acts exactly the same way.<br />
                                                                            The only difference is: here you create symbols - not movies.<br />
                                                                            Symbols can be dragged to the canvas of your movie once you&#39;re done creating 
                                                                            them.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">3</span>. Enter the text to act as a symbol.<br />
                                                                            Choose Text Tool in the toolbox.
                                                                            <br />
                                                                            Now enter your first name using font size 48 and bold.<br />
                                                                            It is important that the font is not too thin.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">4</span>. Jumping back to the movie from the symbol 
                                                                            generator.<br />
                                                                            To exit the symbol generator and return to your movie<br />
                                                                            click the scene icon in the upper left corner:<br />
                                                                            <img alt="Scene1 Icon" height="27" 
                                                                                src="images/LessonsImages/FLASHLessons/flashscene1.gif" width="74" /><br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">5</span>. Inserting the symbol into the movie<br />
                                                                            Open Library by choosing Window &gt; Library in the menu (or pressing Ctrl + L).<br />
                                                                            Click where it says &quot;MySymbol&quot; in the symbol window you just opened.<br />
                                                                            With the mouse, drag your name from the symbol library into the canvas of the 
                                                                            movie.<br />
                                                                            <br />
                                                                            <img alt="Symbol Library" height="300" 
                                                                                src="images/LessonsImages/FLASHLessons/flashsymbolhenrik.gif" width="160" /><br />
                                                                            <br />
                                                                            <span class="fancyfirst">N</span>ow you&#39;re ready to create the tint tweening.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">6</span>. Inserting frames in your movie.<br />
                                                                            Select frame 20 in the timeline and click F5.<br />
                                                                            <br />
                                                                            <img alt="Timeline" height="117" 
                                                                                src="images/LessonsImages/FLASHLessons/flashtimeline20.gif" width="420" /><br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">7</span>. Entering keyframes in frame 10 and frame 20<br />
                                                                            Position the frame pointer on frame 10 then press F6.<br />
                                                                            Repeat this step on frame 20.<br />
                                                                            <br />
                                                                            <img alt="Timeline" height="117" 
                                                                                src="images/LessonsImages/FLASHLessons/flashtimeline20text.gif" width="420" /><br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">8</span>. Adding tint effect to frame 10.<br />
                                                                            Select frame 10 by positioning the frame pointer at this frame.<br />
                                                                            Right click the symbol with your name on it (On the movie canvas - not in the 
                                                                            symbol library).<br />
                                                                            An Instance Properties box appears.<br />
                                                                            Choose: Color Effect.
                                                                            <br />
                                                                            In the &quot;Color Effect&quot; drop-down box choose &quot;Tint&quot;.<br />
                                                                            Position the &quot;Tint Amount&quot; bar at 100%. (If it is set to zero, no tinting will 
                                                                            appear).<br />
                                                                            Enter these values for Red : 255, Green : 0 and Blue : 0.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">C</span>lick OK<br />
                                                                            <br />
                                                                            <img alt="Instance Properties" height="357" 
                                                                                src="images/LessonsImages/FLASHLessons/flashinstanceproperties.gif" width="435" /><br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">9</span>. Add tint tweening to keyframe 1 and keyframe 
                                                                            10.<br />
                                                                            Double click the keyframe in frame 1.<br />
                                                                            A Frame Properties box appears.<br />
                                                                            Enter the settings shown below and click OK.<br />
                                                                            Then repeat this step on the keyframe in frame 10.
                                                                            <br />
                                                                            <br />
                                                                            <img alt="Instance Properties" height="357" 
                                                                                src="images/LessonsImages/FLASHLessons/flashframeproperties.gif" width="435" /><br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>hat&#39;s all! You have created a tint tweening.<br />
                                                                            You can add tint tweenings to any object you like.<br />
                                                                            Just remember that the object must be a symbol.<br />
                                                                            Tint effects only work on symbols, and can&#39;t be added to things that are drawn 
                                                                            directly on the canvas of the movie.
                                                                            <br />
                                                                            <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                                                <p>
                                                                                    &nbsp;</p>
                                                                            <hr align="center" width="300" />
                                                                            <p>
                                                                                    &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            SHAPE TWEEN<br />
                                                                                </div>
                                                                            <span class="fancyfirst">F</span>irst look at this example of a Shape Tweening:<br />
                                                                            <br />
                                                                            <div align="center">
                                                                                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                                    codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                                    height="75" width="75">
                                                                                    <param name="_cx" value="1984" />
                                                                                    <param name="_cy" value="1984" />
                                                                                    <param name="FlashVars" value="" />
                                                                                    <param name="Movie" value="http://www.echoecho.com/i/shape.swf" />
                                                                                    <param name="Src" value="http://www.echoecho.com/i/shape.swf" />
                                                                                    <param name="WMode" value="Window" />
                                                                                    <param name="Play" value="-1" />
                                                                                    <param name="Loop" value="-1" />
                                                                                    <param name="Quality" value="High" />
                                                                                    <param name="SAlign" value="" />
                                                                                    <param name="Menu" value="0" />
                                                                                    <param name="Base" value="" />
                                                                                    <param name="AllowScriptAccess" value="" />
                                                                                    <param name="Scale" value="ShowAll" />
                                                                                    <param name="DeviceFont" value="0" />
                                                                                    <param name="EmbedMovie" value="0" />
                                                                                    <param name="BGColor" value="" />
                                                                                    <param name="SWRemote" value="" />
                                                                                    <param name="MovieData" value="" />
                                                                                    <param name="SeamlessTabbing" value="1" />
                                                                                    <param name="Profile" value="0" />
                                                                                    <param name="ProfileAddress" value="" />
                                                                                    <param name="ProfilePort" value="0" />
                                                                                    <param name="AllowNetworking" value="all" />
                                                                                    <param name="AllowFullScreen" value="false" />
                                                                                    <embed height="75" loop="true" menu="false" quality="best" 
                                                                                        src="http://www.echoecho.com/i/shape.swf" width="75"></embed></object>
                                                                            </div>
                                                                            <br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">D</span>o the following to create a Shape Tweening.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">1</span>. First insert 41 frames in your movie.<br />
                                                                            To do this click frame 41 in Layer 1 on the timeline, then press F5.<br />
                                                                            <br />
                                                                            <img alt="Timeline" height="125" 
                                                                                src="images/LessonsImages/FLASHLessons/flashtweenings031.gif" width="435" /><br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">2</span>. Enter a &quot;1&quot; on the canvas of your movie.<br />
                                                                            To do this: choose the Text Tool in the Toolbox.
                                                                            <br />
                                                                            Then enter &quot;1&quot; with font size 48 and bold.
                                                                            <br />
                                                                            It is important that the font is not too thin.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">3</span>. Now you need to position the &quot;1&quot; at the very 
                                                                            center of your movie.<br />
                                                                            Select it by clicking on it with the mouse.
                                                                            <br />
                                                                            Choose Modify &gt; Align in the menu (or press Ctrl + K),<br />
                                                                            an Align Properties box appears.<br />
                                                                            Choose the settings shown below.<br />
                                                                            Remember to select the &quot;Align to page&quot; option.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">C</span>lick OK.<br />
                                                                            <br />
                                                                            <img alt="Align" height="318" 
                                                                                src="images/LessonsImages/FLASHLessons/flashtweenings032.gif" width="350" /><br />
                                                                            <br />
                                                                            <span class="fancyfirst">Y</span>our &quot;1&quot; is now positioned at the center of the 
                                                                            movie.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">4</span>. Next step is to &quot;break apart&quot; the font.<br />
                                                                            Select your &quot;1&quot; with the mouse and press Ctrl + B<br />
                                                                            (or choose Modify &gt; Break Apart in the menu).
                                                                            <br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">5</span>. Now insert keyframes in frame 19, 40 and 41,<br />
                                                                            You do this by positioning the frame pointer in frame 19 - then press F6,<br />
                                                                            then repeating the same procedure for frame 40 and frame 41.<br />
                                                                            <br />
                                                                            <img alt="Timeline" height="125" 
                                                                                src="images/LessonsImages/FLASHLessons/flashtweenings033.gif" width="435" /><br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">6</span>.Now delete the &quot;1&quot; in frame 19.<br />
                                                                            To do this: position the frame pointer in frame 19.<br />
                                                                            Select your &quot;1&quot; and press the delete button on the keyboard.
                                                                            <br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">7</span>.Next step is to enter a &quot;2&quot; in frame 19.<br />
                                                                            Choose Text Tool in the Toolbox and enter &quot;2&quot; with font size 48 and bold.
                                                                            <br />
                                                                            (The &quot;2&quot; can be in another color than you used for the &quot;1&quot;)<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">8</span>. Now align the &quot;2&quot; to the center of the movie.<br />
                                                                            Select the &quot;2&quot; with the mouse and choose Modify &gt; Align in the menu(or press 
                                                                            Ctrl + K),<br />
                                                                            an Align Properties box appears.<br />
                                                                            (Remember to select the &quot;Align to page&quot; option).<br />
                                                                            <br />
                                                                            <span class="fancyfirst">C</span>lick OK.<br />
                                                                            <br />
                                                                            <img alt="Align" height="318" 
                                                                                src="images/LessonsImages/FLASHLessons/flashtweenings032.gif" width="350" /><br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he &quot;2&quot; is now positioned at the center of the 
                                                                            movie.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">9</span>. Next step is to &quot;break apart&quot; the font of the 
                                                                            &quot;2&quot;.<br />
                                                                            Select it with the mouse and press Ctrl + B (Or choose Modify &gt; Break Apart in 
                                                                            the menu).<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">1</span>0. Now you need to insert a keyframe in frame 
                                                                            21.<br />
                                                                            This is done by positioning the frame pointer in frame 21 and then pressing F6,<br />
                                                                            (for illustration, refer to #5 in this tutorial).<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">1</span>1. Now comes the shape tweening.<br />
                                                                            First double click the keyframe in frame 1.<br />
                                                                            A Frame Properties Box appears.<br />
                                                                            Choose &quot;Tweening&quot; and select Shape in the &quot;Tweening&quot; drop-down menu.<br />
                                                                            Click OK.<br />
                                                                            <br />
                                                                            <img alt="Shape tweening" height="357" 
                                                                                src="images/LessonsImages/FLASHLessons/flashtweenings034.gif" width="435" /><br />
                                                                            <br />
                                                                            <span class="fancyfirst">R</span>epeat this step to make a Shape Tweening in 
                                                                            frame 21.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">1</span>2. Next step is to add shape hints to your 
                                                                            movie.<br />
                                                                            Shape hints allow you to control the shape tweening.<br />
                                                                            This means that you select certain points on the element you want to shape 
                                                                            tween,<br />
                                                                            and then select the according points on the element you want the tweening to end 
                                                                            with.<br />
                                                                            This way you are in charge of which points on the start object should become 
                                                                            which on the end object.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">S</span>hape hints contain characters to identify 
                                                                            corresponding points on the start and end objects.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">Y</span>ou can add up to 26 different shape hints in a 
                                                                            shape tweening.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">P</span>osition the frame pointer on frame 1.<br />
                                                                            Choose Modify &gt; Transform &gt; Add shape hint in the menu (or press Ctrl + H).<br />
                                                                            Do this twice.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">N</span>ow you have 2 hints in frame 1 and 2 hints in 
                                                                            frame 19.<br />
                                                                            Each hint has a letter showing its current position.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">1</span>3. Now you'd want to position the hints. 
                                                                            Starting with the hints on the &quot;1&quot;.<br />
                                                                            Position the frame pointer on frame 1.<br />
                                                                            Drag the a hint to the top of your &quot;1&quot;.<br />
                                                                            Drag the b hint to the bottom of the &quot;1&quot;.<br />
                                                                            <br />
                                                                            <img alt="Shape Hint frame 1" height="111" 
                                                                                src="images/LessonsImages/FLASHLessons/flashtweenings035.gif" width="59" /><br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he Hint must be on the edge of the &quot;1&quot;.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">1</span>4. Next position the hints on the &quot;2&quot;.<br />
                                                                            Position the frame pointer on frame 19.<br />
                                                                            Move the a hint to the top of the &quot;2&quot;.<br />
                                                                            Move the b hint to the bottom of the &quot;2&quot;.<br />
                                                                            <br />
                                                                            <img alt="Shape Hint frame 1" height="111" 
                                                                                src="images/LessonsImages/FLASHLessons/flashtweenings036.gif" width="59" /><br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">1</span>5. Now we will repeat step 12 through 14 to 
                                                                            enter shape hints on frame 21 and frame 40.<br />
                                                                            First position the frame pointer on frame 21.<br />
                                                                            Choose Modify &gt; Transform &gt; Add shape hint in the menu (or press Ctrl + H).<br />
                                                                            Do this twice.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">N</span>ow you have 2 hints in frame 12 and 2 hints in 
                                                                            frame 40.<br />
                                                                            Each hint has a letter showing its current position.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">1</span>6. Next repeat step 13 to position shape hints 
                                                                            on frame 21<br />
                                                                            Position the frame pointer on frame 21.<br />
                                                                            Drag the a hint to the top of your &quot;2&quot;.<br />
                                                                            Drag the b hint to the bottom of the &quot;2&quot;.<br />
                                                                            <br />
                                                                            <img alt="Shape Hint frame 1" height="111" 
                                                                                src="images/LessonsImages/FLASHLessons/flashtweenings036.gif" width="59" /><br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he hint must be on the edge of the &quot;2&quot;.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">1</span>7. Finally repeat step 14 to position shape 
                                                                            hints on frame 40<br />
                                                                            Position the frame pointer on frame 40.<br />
                                                                            Move the a hint to the top of the &quot;1&quot;.<br />
                                                                            Move the b hint to the bottom of the &quot;1&quot;.<br />
                                                                            <br />
                                                                            <img alt="Shape Hint frame 1" height="111" 
                                                                                src="images/LessonsImages/FLASHLessons/flashtweenings035.gif" width="59" /><br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">1</span>8. All we need now is to get the movie to loop.<br />
                                                                            You do this by double clicking the keyframe in frame 41.<br />
                                                                            A Frame Properties Box appears.<br />
                                                                            Choose &quot;Actions&quot;.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">C</span>lick the button with the plus sign on it.
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">C</span>hoose GoTo.<br />
                                                                            Select the &quot;Go to and Play&quot; option.<br />
                                                                            Click OK.<br />
                                                                            <br />
                                                                            <img alt="Frame Action" height="357" 
                                                                                src="images/LessonsImages/FLASHLessons/flashtweenings037.gif" width="435" /><br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>hat's all there is to it.<br />
                                                                            You have now created your Shape Tweening.<br />
                                                                            Test the movie by pressing Ctrl + Enter.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">Y</span>ou can create Shape Tweenings on any element.<br />
                                                                            You just need to remember to break apart the element before doing so.</span></div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <br />
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
                    InsertCommand="INSERT FLASH_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    
                      
                      
                      
                      
                      SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [FLASH_tblComments]">
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
                    PostBackUrl="~/FLASH_Contents.aspx">Back to FLASH Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/FLASH_L3.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/FLASH_L5.aspx">Next &gt;&gt;</asp:LinkButton>
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
