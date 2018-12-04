<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="FLASH_L5.aspx.cs" Inherits="_Default" %>

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
        DestinationPageUrl="~/FLASH_L5.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                                                PostBackUrl="~/FLASH_L4.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/FLASH_Contents.aspx">Back to FLASH Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 5 - Flash Archive </H2>
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
        stuff to the people at M.I.T.<BR style="background-color: #FFFFFF">
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            Flash Archive</div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">T</span>his is the place to get 
                                                            inspired.<br />
                                                            <br />
                                                            <span class="fancyfirst">B</span>rowse through our FLA archive, when you find 
                                                            something you like, click the link to download the Flash source file (FLA).<br />
                                                            <br />
                                                            <span class="fancyfirst">Y</span>ou can open the file in your Flash editor and 
                                                            see how we created the effects.<br />
                                                            </span><span class="text">
                                                            <hr align="center" width="300" />
                                                            </span>
                                                        <p>
                                                            &nbsp;<div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            SHAPE CIRCUS<br />
                                                        </div>
                                                        <span class="text">
                                                        <div align="center">
                                                            <br />
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="150" width="200">
                                                                <param name="_cx" value="5291" />
                                                                <param name="_cy" value="3968" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/graphic.swf" />
                                                                <param name="Src" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/graphic.swf" />
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
                                                                <embed height="150" loop="true" menu="false" quality="best" 
                                                                    src="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/graphic.swf" 
                                                                    width="200"></embed></object>
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
                                                                                <td class="table6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>CONTRIBUTED BY</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">ALMO<br />
                                                                                    </span>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    FLA FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">6.502 bytes</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    SWF FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">17.028 bytes</span><br />
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
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <a href="http://www.netkontoret.dk/flashecho/flaarkiv/flafiler/graphic.zip">
                                                                                    <span class="link">CLICK HERE TO DOWNLOAD FLA</span></a><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                        </div>
                                                        </span><span class="text"><hr align="center" width="300" />
                                                            </span>
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            MOTION GUIDER</div>
                                                        <p>
                                                            &nbsp;<span class="text"><div align="center">
                                                            <br />
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="150" width="200">
                                                                <param name="_cx" value="5291" />
                                                                <param name="_cy" value="3968" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/k2.swf" />
                                                                <param name="Src" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/k2.swf" />
                                                                <param name="WMode" value="Window" />
                                                                <param name="Play" value="-1" />
                                                                <param name="Loop" value="-1" />
                                                                <param name="Quality" value="High" />
                                                                <param name="SAlign" value="" />
                                                                <param name="Menu" value="0" />
                                                                <param name="Base" value="" />
                                                                <param name="AllowScriptAccess" value="" />
                                                                <param name="Scale" value="ExactFit" />
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
                                                                <embed height="150" loop="true" menu="false" quality="best" scale="exactfit" 
                                                                    src="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/k2.swf" width="200"></embed></object>
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
                                                                                <td class="table6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>CONTRIBUTED BY</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">ALMO</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    FLA FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">58.817 bytes</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    SWF FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">17.691 bytes</span><br />
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
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <a href="http://www.netkontoret.dk/flashecho/flaarkiv/flafiler/k2.zip">
                                                                                    <span class="link">CLICK HERE TO DOWNLOAD FLA</span></a><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                        </div>
                                                        </span>
                                                        <p>
                                                            <span class="text"><hr align="center" width="300" />
                                                            </span>
                                                        <p>
                                                            &nbsp;<div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            ALMO's INTRO</div>
                                                        <span class="text">
                                                        <div align="center">
                                                            <br />
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="150" width="200">
                                                                <param name="_cx" value="5291" />
                                                                <param name="_cy" value="3968" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/intro_a.swf" />
                                                                <param name="Src" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/intro_a.swf" />
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
                                                                <embed height="150" loop="true" menu="false" quality="best" 
                                                                    src="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/intro_a.swf" 
                                                                    width="200"></embed></object>
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
                                                                                <td class="table6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>CONTRIBUTED BY</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">ALMO</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    FLA FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">23.520 bytes</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    SWF FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">11.604 bytes</span><br />
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
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <a href="http://www.netkontoret.dk/flashecho/flaarkiv/flafiler/intro_a.zip">
                                                                                    <span class="link">CLICK HERE TO DOWNLOAD FLA</span></a><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                        </div>
                                                        </span><span class="text"><hr align="center" width="300" />
                                                            </span>
                                                        <p>
                                                            &nbsp;<div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            TINT MANIAC<br />
                                                        </div>
                                                        <span class="text">
                                                        <div align="center">
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="150" width="200">
                                                                <param name="_cx" value="5291" />
                                                                <param name="_cy" value="3968" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/color.swf" />
                                                                <param name="Src" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/color.swf" />
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
                                                                <embed height="150" loop="true" menu="false" quality="best" 
                                                                    src="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/color.swf" 
                                                                    width="200"></embed></object>
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
                                                                                <td class="table6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>CONTRIBUTED BY</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">ALMO</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    FLA FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">8.781 bytes</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    SWF FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">12.241 bytes</span><br />
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
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <a href="http://www.netkontoret.dk/flashecho/flaarkiv/flafiler/color.zip">
                                                                                    <span class="link">CLICK HERE TO DOWNLOAD FLA</span></a><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                        </div>
                                                        </span>
                                                        <br />
                                                        <span class="text"><hr align="center" width="300" />
                                                            </span>
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                           VIKING WHEELS<br />
                                                        </div>
                                                        <p>
                                                            <span class="text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <object align="middle" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="150" width="200">
                                                                <param name="_cx" value="5291" />
                                                                <param name="_cy" value="3968" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/symbol.swf" />
                                                                <param name="Src" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/symbol.swf" />
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
                                                                <embed height="150" loop="true" menu="false" quality="best" 
                                                                    src="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/symbol.swf" 
                                                                    width="200"></embed></object>
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
                                                                                <td class="table6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>CONTRIBUTED BY</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">Da CHIEF</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    FLA FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">26.112 bytes</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    SWF FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">24.487 bytes</span><br />
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
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <a href="http://www.netkontoret.dk/flashecho/flaarkiv/flafiler/symbol.zip">
                                                                                    <span class="link">CLICK HERE TO DOWNLOAD FLA</span></a><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            </span>
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <p>
                                                        <span class="text"><hr align="center" width="300" />
                                                            </span>
                                                        <p>
                                                            &nbsp;<div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                           3D STAR<br />
                                                            <br />
                                                        </div>
                                                        <span class="text">
                                                        <div align="center">
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="150" width="200">
                                                                <param name="_cx" value="5291" />
                                                                <param name="_cy" value="3968" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/stjerne.swf" />
                                                                <param name="Src" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/stjerne.swf" />
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
                                                                <embed height="150" loop="true" menu="false" quality="best" 
                                                                    src="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/stjerne.swf" 
                                                                    width="200"></embed></object>
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
                                                                                <td class="table6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>CONTRIBUTED BY</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">ALMO</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    FLA FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">1.884 bytes</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    SWF FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">2.213 bytes</span><br />
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
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <a href="http://www.netkontoret.dk/flashecho/flaarkiv/flafiler/stjerne.zip">
                                                                                    <span class="link">CLICK HERE TO DOWNLOAD FLA</span></a><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                        </div>
                                                        <br />
                                                        <hr align="center" width="300" />
                                                            <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                           BUTTON PLANETS</div>
                                                        </span>
                                                        <p>
                                                            <span class="text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="150" width="200">
                                                                <param name="_cx" value="5291" />
                                                                <param name="_cy" value="3968" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/button1.swf" />
                                                                <param name="Src" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/button1.swf" />
                                                                <param name="WMode" value="Window" />
                                                                <param name="Play" value="0" />
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
                                                                <embed height="150" loop="true" menu="false" quality="best" 
                                                                    src="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/button1.swf" 
                                                                    width="200"></embed></object>
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
                                                                                <td class="table6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>CONTRIBUTED BY</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">ALMO</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    FLA FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">8.192 bytes</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    SWF FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">2.885 bytes</span><br />
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
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <a href="http://www.netkontoret.dk/flashecho/flaarkiv/flafiler/button1.zip">
                                                                                    <span class="link">CLICK HERE TO DOWNLOAD FLA</span></a><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            </span><span class="text"><hr align="center" width="300" />
                                                            <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                           TINT BUTTON</div>
                                                        <div align="center">
                                                            <br />
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="150" width="200">
                                                                <param name="_cx" value="5291" />
                                                                <param name="_cy" value="3968" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/tint.swf" />
                                                                <param name="Src" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/tint.swf" />
                                                                <param name="WMode" value="Window" />
                                                                <param name="Play" value="0" />
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
                                                                <embed height="150" loop="true" menu="false" quality="best" 
                                                                    src="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/tint.swf" 
                                                                    width="200"></embed></object>
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
                                                                                <td class="table6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>CONTRIBUTED BY</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">ALMO</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    FLA FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">14.336 bytes</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    SWF FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">2.442 bytes</span><br />
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
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <a href="http://www.netkontoret.dk/flashecho/flaarkiv/flafiler/tint.zip">
                                                                                    <span class="link">CLICK HERE TO DOWNLOAD FLA</span></a><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                        </div>
                                                        </span>
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <p>
                                                            <span class="text"><hr align="center" width="300" />
                                                            <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                           GABO PYRAMID<br />
                                                        </div>
                                                        <div align="center">
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="150" width="200">
                                                                <param name="_cx" value="5291" />
                                                                <param name="_cy" value="3968" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/intro.swf" />
                                                                <param name="Src" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/intro.swf" />
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
                                                                <embed height="150" loop="true" menu="false" quality="best" 
                                                                    src="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/intro.swf" 
                                                                    width="200"></embed></object>
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
                                                                                <td class="table6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>CONTRIBUTED BY</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">ALMO</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    FLA FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">11.894 bytes</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    SWF FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">16.713 bytes</span><br />
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
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <a href="http://www.netkontoret.dk/flashecho/flaarkiv/flafiler/intro.zip">
                                                                                    <span class="link">CLICK HERE TO DOWNLOAD FLA</span></a><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                        </div>
                                                        </span><span class="text"><hr align="center" width="300" />
                                                        </span>
                                                        <p>
                                                            <span class="text"><div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                           SPHERIC BALL</div>
                                                        </span><p>
                                                            &nbsp;<span class="text"><div align="center">
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="150" width="200">
                                                                <param name="_cx" value="5291" />
                                                                <param name="_cy" value="3968" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/blow.swf" />
                                                                <param name="Src" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/blow.swf" />
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
                                                                <embed height="150" loop="true" menu="false" quality="best" 
                                                                    src="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/stjerne.swf" 
                                                                    width="200"></embed></object>
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
                                                                                <td class="table6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>CONTRIBUTED BY</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">ALMO</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    FLA FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">31.232 bytes</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    SWF FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">8.362 bytes</span><br />
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
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <a href="http://www.netkontoret.dk/flashecho/flaarkiv/flafiler/blow.zip">
                                                                                    <span class="link">CLICK HERE TO DOWNLOAD FLA</span></a><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                        </div>
                                                        </span><span class="text"><hr align="center" width="300" />
                                                        </span>
                                                        <p>
                                                            &nbsp;<span class="text"><div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                           3D STAR</div>
                                                        <div align="center">
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="282" width="220">
                                                                <param name="_cx" value="5820" />
                                                                <param name="_cy" value="7461" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/profil.swf" />
                                                                <param name="Src" 
                                                                    value="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/profil.swf" />
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
                                                                <embed height="282" loop="true" menu="false" quality="best" 
                                                                    src="http://www.netkontoret.dk/flashecho/flaarkiv/swffiler/profil.swf" 
                                                                    width="220"></embed></object>
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
                                                                                <td class="table6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>CONTRIBUTED BY</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">ALMO</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    FLA FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">195.630 bytes</span><br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table6">
                                                                                    SWF FILE SIZE</td>
                                                                                <td class="table6">
                                                                                    <span class="style1">33.388 bytes</span><br />
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
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <a href="http://www.netkontoret.dk/flashecho/flaarkiv/flafiler/profil.zip">
                                                                                    <span class="link">CLICK HERE TO DOWNLOAD FLA</span></a><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                        </div>
                                                        </span><p>
                                                            <span class="text">
                                                            <hr align="center" width="300" />
                                                            </span>
                                                        <BLOCKQUOTE>
                                                        </BLOCKQUOTE>
                                                    </DIV>
                                                    <BR>
                                                    HAPPY PROGRAMMING! ^_^<br />
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
                                                PostBackUrl="~/FLASH_L4.aspx">&lt;&lt; Previous</asp:LinkButton>
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
