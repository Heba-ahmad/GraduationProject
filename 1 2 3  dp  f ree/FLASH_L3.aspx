<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="FLASH_L3.aspx.cs" Inherits="_Default" %>

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
  href="Signup.aspx">Signup</A> <SPAN class=author>to add comment, &amp; to Rate The Tutorials 
          YOU Like!<br />
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
                <img alt="" src="images/Flash.png" style="width: 184px; height: 85px" />&nbsp;&nbsp;<br />
                &nbsp;
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/FLASH_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/FLASH_Contents.aspx">Back to FLASH Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="FLASH_L4.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 3 - Flash Buttons</H2>
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
                                                            Flash Buttons</div>
                                                        <span class="text"><span class="fancyfirst">
                                                        <br />
                                                        T</span>he only object type in Flash, that can detect mouse events is the Button 
                                                        object.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his means that there is only one way to make 
                                                        buttons with Flash: Creating a button object.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his may sound a bit too simplified, but many 
                                                        are confused by the techniques behind the more sophisticated buttons, that we 
                                                        will cover later in this tutorial.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>reating a button that changes upon 
                                                        mouseover-events is extremely simple. All you really have to do is to tell Flash 
                                                        how you want the button to look 1) in normal state, 2) when the mouse moves over 
                                                        the button and 3) when the user clicks the button.<br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>nce you've learned this 3-step technique you 
                                                        can create buttons in seconds.<br />
                                                        <br />
                                                        <span class="fancyfirst">H</span>owever, the buttons you create this way are: 
                                                        simple (that's why they're so easy to make anyway).<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you want to create really fancy buttons you 
                                                        should use a slightly different technique based on movie clips.<br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">T</span>HE THREE DIFFERENT OBJECT 
                                                        TYPES</span><br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>lash handles three types of objects:
                                                        <br />
                                                        <ul>
                                                            <li><span class="note">Graphics</span><br />
                                                            </li>
                                                            <li><span class="note">Buttons</span><br />
                                                            </li>
                                                            <li><span class="note">Movieclips</span><br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">G</span>raphics objects</span><br />
                                                        You probably allready noticed that when you edit <span class="note">Graphics 
                                                        objects</span> you have the entire timeline available for it.<br />
                                                        This means that <span class="note">Graphics objects</span> aren't limited to 
                                                        static elements. You can easily create looping animations - simply by creating
                                                        <span class="note">Graphic objects</span> that uses more than one frame in the 
                                                        timeline.<br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">B</span>utton objects</span><br />
                                                        <span class="note">Buttons</span> are different from this. When you create a
                                                        <span class="note">Button object</span> you only have four frames in the 
                                                        timeline.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>ne is for drawing the button in normal state.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>nother is for drawing the button when a 
                                                        mouse-over is detected.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he third is for drawing the button as you want 
                                                        it to look when the user clicks the button.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he last frame is used to specify which area you 
                                                        want mouse events to react to. That is: you can create a button that only reacts 
                                                        to mouseevents on certain areas of the drawing, - like the center of the button 
                                                        for example.<br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">M</span>ovie clip objects</span><br />
                                                        The final object-type: <span class="note">Movieclips</span>, is similar to 
                                                        Graphics objects - on the surface.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n both cases you can create entire animations 
                                                        that can be dragged onto your main movie. But while animations made as Graphics 
                                                        objects simply loops over and over you can control the Movieclips completely.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">T</span>HE TRICK BEHIND FANCY 
                                                        FLASH BUTTONS</span><br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can create more fancy buttons based on very 
                                                        simple programming. (You do not have to be a programmer to learn to do this!).<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>ctions added to frames give complete access to 
                                                        controlling movieclips. This means that you can use &quot;Play&quot;, &quot;Stop&quot;, and &quot;Goto 
                                                        Frame&quot; commands on a movieclip, that is triggered when a certain mouse event is 
                                                        detected on a button.<br />
                                                        <br />
                                                        <span class="fancyfirst">N</span>ow - if the button is invisible and placed on 
                                                        top of the movie clip it will work as if the movieclip itself was able to detect 
                                                        mouse events.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he next pages will teach you - step by step - 
                                                        how to create both simple and advanced buttons.
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        </span>
            <DIV align=center>
                <br />
                <A 
            href="#top">Top</A></DIV><p>
                                                                &nbsp;<div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            SIMPLE BUTTONS<br />
                                                        </div>
                                                        <span class="text"><span class="fancyfirst">T</span>he easiest way to create 
                                                        buttons with Flash is creating a <span class="note">Button object</span>.<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>irst look at this example of a simple
                                                        <span class="note">Button object</span>:<br />
                                                        <br />
                                                        <div align="center">
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="75" width="75">
                                                                <param name="_cx" value="1984" />
                                                                <param name="_cy" value="1984" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" value="http://www.echoecho.com/i/simplebutton1.swf" />
                                                                <param name="Src" value="http://www.echoecho.com/i/simplebutton1.swf" />
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
                                                                <embed height="75" loop="true" menu="false" quality="best" 
                                                                    src="http://www.echoecho.com/i/simplebutton1.swf" width="75"></embed></object>
                                                        </div>
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4">CREATING A BUTTON</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>o create a Button object, do this:<br />
                                                        <br />
                                                        1: Choose Insert-&gt;New Symbol in the menu (Or press Ctrl-F8)<br />
                                                        and the Symbol Properties Box appears.<br />
                                                        <br />
                                                        <img alt="Insert-&gt;New Symbol" height="179" 
                                                            src="images/LessonsImages/FLASHLessons/aasymbolproperties.gif" width="417" /><br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>dd a name for your button and make sure the 
                                                        Button option is selected.<br />
                                                        <br />
                                                        2: Click OK and the button editor opens.<br />
                                                        As you see it looks exactly the same as the standard Flash editor, with one 
                                                        exception:<br />
                                                        You only have four frames in the timeline.<br />
                                                        <br />
                                                        <img alt="Timeline: Button object editor" height="228" 
                                                            src="images/LessonsImages/FLASHLessons/aabuttontimeline.gif" width="422" /><br />
                                                        <br />
                                                        <br />
                                                        3: Draw a button the way you want it to be when no mouse event is detected.<br />
                                                        Notice that the active frame is labelled &quot;Up&quot; in the timeline.<br />
                                                        <br />
                                                        4: Insert a keyframe in the frame labelled &quot;Over&quot; in the timeline.<br />
                                                        (To do this: Click on Layer 1 in the white cell below where it says &quot;Over&quot;. Then 
                                                        press F6.)<br />
                                                        <br />
                                                        5: Draw a button the way you want it to be when a mouseover event is detected.<br />
                                                        <br />
                                                        6: Insert a keyframe in the frame labelled &quot;Down&quot; in the timeline.<br />
                                                        (To do this: Click on Layer 1 in the white cell below where it says &quot;Down&quot;. Then 
                                                        press F6.)<br />
                                                        <br />
                                                        7: Draw a button the way you want it to be when a mouseclick event is detected.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>hat's it - you've created a button with three 
                                                        looks that will change upon mouse events.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou still need to specify which area should be 
                                                        clickable as well as what should happen when the button is clicked.<br />
                                                        Proceed to learn about these steps.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4">DEFINING THE CLICKABLE AREA</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he last frame, labelled &quot;Hit&quot; is special. It is 
                                                        simply used to specify the area that triggers mousevents.<br />
                                                        If you leave this frame blank - then mouse events will be triggered when the 
                                                        mouse moves over the visible button.<br />
                                                        But if you draw an area that is bigger than the button - then the mouse event 
                                                        will occur as soon as the mouse gets even close to the button. On the contrary 
                                                        you can draw an area that is smaller than the button, so that mouse events are 
                                                        only triggered when the mouse is at the center of your button.<br />
                                                        <br />
                                                        <span class="fancyfirst">H</span>owever, the real power of the &quot;Hit&quot; frame is a 
                                                        bit more sophisticated.<br />
                                                        If you draw something in the hit area that is outside the area covered by the 
                                                        visible button - then the button will react to mouseevents in the Hit area. That 
                                                        means that you can make something happen on one part of the screen when the user 
                                                        moves the mouse over another part of the screen.<br />
                                                        <br />
                                                        <span class="fancyfirst">L</span>ook at this example:<br />
                                                        <br />
                                                        <div align="center">
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="200" width="300">
                                                                <param name="_cx" value="7937" />
                                                                <param name="_cy" value="5291" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" value="http://www.echoecho.com/i/simplebutton2.swf" />
                                                                <param name="Src" value="http://www.echoecho.com/i/simplebutton2.swf" />
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
                                                                <embed height="200" loop="true" menu="false" quality="best" 
                                                                    src="http://www.echoecho.com/i/simplebutton2.swf" width="300"></embed></object>
                                                        </div>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4">ADDING ACTIONS TO THE BUTTON</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he button we created so far is still in the 
                                                        Button object editor. We still haven't dragged it onto our main movie.<br />
                                                        If you look above the timeline you see two Icons labelled &quot;Scene 1&quot; and 
                                                        &quot;mybutton&quot;.<br />
                                                        <br />
                                                        <img alt="Timeline: Button object editor" height="231" 
                                                            src="images/LessonsImages/FLASHLessons/aabuttontimelineicons.gif" width="420" /><br />
                                                        <br />
                                                        1: Click the &quot;Scene 1&quot;-icon to return to the main movie.<br />
                                                        <br />
                                                        2: Click on the button in the Library window and drag it onto the movie.<br />
                                                        <br />
                                                        <img alt="Library Window" height="300" 
                                                            src="images/LessonsImages/FLASHLessons/aabuttonlibrary.gif" width="160" /><br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f your Library is not visible choose 
                                                        Window-&gt;Library (or press Ctrl-L) to make it visible.<br />
                                                        <br />
                                                        3: Once the button have been placed correct in your movie right click on it and 
                                                        choose &quot;Properties&quot; in the menu that appears.<br />
                                                        An Instance menu appears.<br />
                                                        <br />
                                                        4: Select &quot;Actions&quot;<br />
                                                        <br />
                                                        <img alt="Instance menu" height="521" 
                                                            src="images/LessonsImages/FLASHLessons/aainstanceproperties.gif" width="426" /><br />
                                                        <br />
                                                        5: Click the plus Icon and select the &quot;OnMouseEvent&quot; option.<br />
                                                        <br />
                                                        6: Select &quot;Release&quot; in the list of event triggers.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he action now says:
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table5">
                                                                                <!-- perl mysql php web host -->On (Release)<br />
                                                                                End On<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his means that we have told Flash that it 
                                                        should react on a mouse-click release event.<br />
                                                        But we still haven't told what should happen when the event is detected.<br />
                                                        We have several options available. The most important ones are listed below:<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">J</span>ump to another Frame</span><br />
                                                        Click the plus once more and select the &quot;Go To&quot; option.<br />
                                                        Now, the action says:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table5">
                                                                                <!-- perl mysql php web host -->On (Release)<br />
                                                                                Go to and Stop (1)<br />
                                                                                End On<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">E</span>ventually use the options to specify the frame 
                                                        you want to jump.<br />
                                                        If you don't want the movie to stop, once the jump has been made, you should 
                                                        select the Go to and Play option at the bottom.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f, say, you entered frame 20 and selected the 
                                                        Go to and Play option, the action would be:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table5">
                                                                                <!-- perl mysql php web host -->On (Release)<br />
                                                                                Go to and Play (20)<br />
                                                                                End On<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>nd the Instance menu would look like this:<br />
                                                        <br />
                                                        <img alt="Instance menu" height="350" 
                                                            src="images/LessonsImages/FLASHLessons/aaonmouseevent.gif" width="430" /><br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">L</span>oad another page</span><br />
                                                        Instead of jumping to another frame you could make the button work as a normal 
                                                        hyperlink.<br />
                                                        Click the plus and select the &quot;Get URL&quot; option.<br />
                                                        Now the action says:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table5">
                                                                                <!-- perl mysql php web host -->On (Release)<br />
                                                                                Get URL (&quot;&quot;)<br />
                                                                                End On<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you enter http://echoecho.com in the URL 
                                                        field the action looks like this:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table5">
                                                                                <!-- perl mysql php web host -->On (Release)<br />
                                                                                Get URL (&quot;http://echoecho.com&quot;)<br />
                                                                                End On<br />
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
                                                        <span class="style4"><span class="fancyfirst">C</span>ONTROLING WINDOWS TO LOAD 
                                                        URL</span><br />
                                                        You can control which window the URL should be loaded into.<br />
                                                        In the Window filed you have four options:<br />
                                                        <ul>
                                                            <li>_self : Opens the URL in the current window. (Same as if you did not specify any 
                                                                window)<br />
                                                            </li>
                                                            <li>_blank : Opens the URL i na new window.<br />
                                                            </li>
                                                            <li>_parent : Opens the URL in the parent frame (only works with framesets).<br />
                                                            </li>
                                                            <li>_top : Opens the page in the current window - if it's a frameset all frames are 
                                                                cancelled.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="fancyfirst">T</span>his action would open echoecho.com in a new 
                                                        window:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table5">
                                                                                <!-- perl mysql php web host -->On (Release)<br />
                                                                                Get URL (&quot;http://echoecho.com&quot;, window=&quot;_blank&quot;)<br />
                                                                                End On<br />
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
                                                        <span class="style4">PASSING VARIABLES TO THE URL THAT IS LOADED</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he last option, &quot;Variables&quot; allows you to pass 
                                                        variables from the flash movie to programs running on the server.<br />
                                                        If you choose either &quot;Send using GET&quot; or &quot;Send using POST&quot; Flash will open the 
                                                        specified URL as if it was requested by a form-submission. We will not cover the 
                                                        subject further here, since it really belongs to the more advanced tutorial on 
                                                        Flash programming.<br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        When you're familiar with the simple buttons explained on this page you are 
                                                        ready to proceed to the more advanced buttons that are based on
                                                        <span class="note">Movie clips</span>.<br />
                                                        The following two pages will explain the powerfull techniques behind these 
                                                        buttons.</span><p>
                                                                &nbsp;<DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <p>
                                                            &nbsp;<div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            ADVANCED BUTTONS<br />
                                                        </div>
                                                        <span class="text"><span class="fancyfirst">F</span>irst look at this example of 
                                                        an advanced button:<br />
                                                        <br />
                                                        <div align="center">
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="75" width="75">
                                                                <param name="_cx" value="1984" />
                                                                <param name="_cy" value="1984" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" value="http://www.echoecho.com/i/advancedbutton1.swf" />
                                                                <param name="Src" value="http://www.echoecho.com/i/advancedbutton1.swf" />
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
                                                                <embed height="75" loop="true" menu="false" quality="best" 
                                                                    src="http://www.echoecho.com/i/advancedbutton1.swf" width="75"></embed></object>
                                                        </div>
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4">CREATING ANIMATED BUTTONS</span><br />
                                                        A button like the one you see above can be created by simply inserting a 
                                                        movieclip in the &quot;over&quot;-frame of your button-symbol.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>hat is:
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">1</span>: Create a normal movieclip that does whatever 
                                                        you want to happen when a mouse over is detected on the button.<br />
                                                        <br />
                                                        <span class="fancyfirst">2</span>: Create a normal button symbol (explained on 
                                                        the previous page).<br />
                                                        <br />
                                                        <span class="fancyfirst">3</span>: Insert a keyframe in the &quot;over&quot; frame of your 
                                                        button, and place the animated movieclip in this frame.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his will cause the animation to start when a 
                                                        mouse over is detected and disappear again whan a mouse out is detected.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he problem with this type of button is that it 
                                                        lacks &quot;intelligence&quot;. The animation disappear in the middle of a sequence as 
                                                        soon as the mouse-out event is detected.<br />
                                                        <br />
                                                        <span class="fancyfirst">L</span>ook at the button below instead:<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">C</span>REATING TELL TARGET 
                                                        BUTTONS</span><br />
                                                        <br />
                                                        <div align="center">
                                                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=3,0,8,0" 
                                                                height="75" width="75">
                                                                <param name="_cx" value="1984" />
                                                                <param name="_cy" value="1984" />
                                                                <param name="FlashVars" value="" />
                                                                <param name="Movie" value="http://www.echoecho.com/i/advancedbutton2.swf" />
                                                                <param name="Src" value="http://www.echoecho.com/i/advancedbutton2.swf" />
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
                                                                <embed height="75" loop="true" menu="false" quality="best" 
                                                                    src="http://www.echoecho.com/i/advancedbutton2.swf" width="75"></embed></object>
                                                        </div>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he simple button described in the above 
                                                        paragraph stopped immediately when a mouse-out event occured.<br />
                                                        The advanced button will finish the loop cycle before stopping the animation.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he trick is this:<br />
                                                        <br />
                                                        <span class="fancyfirst">1</span>: Draw a button graphic.<br />
                                                        <br />
                                                        <span class="fancyfirst">2</span>: Create a button symbol using the button 
                                                        graphic.<br />
                                                        <br />
                                                        <span class="fancyfirst">3</span>: Use the exact same button graphic to create a 
                                                        movieclip.<br />
                                                        <br />
                                                        <span class="fancyfirst">4</span>: In the movieclip: Create whatever animation 
                                                        you want for the button.<br />
                                                        <br />
                                                        <span class="fancyfirst">N</span>ow you have a button-symbol with the fixed 
                                                        button in it AND a movieclip with the entire mouse-over-animation in it.<br />
                                                        <br />
                                                        <span class="fancyfirst">5</span>: Place the button-symbol in your movie.<br />
                                                        <br />
                                                        <span class="fancyfirst">6</span>: Add this action to the button:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table5">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>On (Roll Over)<br />
                                                                                If (dummy=0)<br />
                                                                                Begin Tell Target (&quot;/animation&quot;)<br />
                                                                                Play<br />
                                                                                End Tell Target<br />
                                                                                End If<br />
                                                                                Set Variable: &quot;dummy&quot; = 1<br />
                                                                                End On<br />
                                                                                <br />
                                                                                <span class="fancyfirst">O</span>n (Roll Out)<br />
                                                                                Set Variable: &quot;dummy&quot; = 0<br />
                                                                                End On<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he action detects a Roll Over and a Roll Out:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table5">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>When a Roll Over 
                                                                                is detected:<br />
                                                                                - it tells the movieclip to start playing (The movieclip plays the animation we 
                                                                                want when a Mouse Over is detected.). At the same time it sets a variable named 
                                                                                &quot;dummy&quot; to the value of 1.<br />
                                                                                <br />
                                                                                When a Roll Out is detected:<br />
                                                                                - the variable named &quot;dummy&quot; is set to the value of 0. Nothing else happens here 
                                                                                - and THAT is the trick in all this.
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
                                                        <span class="fancyfirst">T</span>he movieclip simply continues to play after the 
                                                        Mouse Out is detected - and that is exactly what we wanted. When the movieclip 
                                                        finishes an animation cycle it will be at the last frame of the moviecip, and 
                                                        this is where the &quot;dummy&quot; variable comes into the picture.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n the last frame of the movieclip we have this 
                                                        action:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table5">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>If (/:dummy=1)<br />
                                                                                Go to and Play (2)<br />
                                                                                Else<br />
                                                                                Go to and Stop (1)<br />
                                                                                End If<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his means that the movieclip is using the 
                                                        &quot;dummy&quot; variable to determine whether it should continue (Go to and Play (2)) or 
                                                        it should stop (Go to and Stop (1)).<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>o summarize:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table5">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>1: We have a 
                                                                                Button symbol that we use to detect for Roll Over and Roll Out.<br />
                                                                                <br />
                                                                                2: On top of this button we have a Movieclip symbol that actually plays the 
                                                                                animation we want when a Roll Over occurs.<br />
                                                                                <br />
                                                                                3: When a Roll Over is detected on our Button symbol we tell the Movieclip 
                                                                                Symbol to start playing. At the same time we set a variable called &quot;dummy&quot; to a 
                                                                                value of 1.<br />
                                                                                <br />
                                                                                4: The movieclip will play the entire loop, and when it reaches the last frame 
                                                                                it will check the current value of the &quot;dummy&quot; variable. If it is 1 it simply 
                                                                                repeats the loop again from frame 2. If it is zero it goes to frame 1 and stops.<br />
                                                                                <br />
                                                                                5: When a Roll Out is detected the &quot;dummy&quot; variable is set to zero which will 
                                                                                cause the Movieclip symbol to stop next time it completes a loop.<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">N</span>ow that the technique behind Tell Target 
                                                        Buttons is in place we just need two tiny comments to it:<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>irst:<br />
                                                        We need to add a Stop action to the first frame of the Movieclip symbol - 
                                                        otherwise the movieclip will start looping as soon as it is loaded - rather than 
                                                        stop and wait for a Roll Over event.<br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>econd:<br />
                                                        The Movieclip symbol must be given an instance name.<br />
                                                        Instance names are entered in the &quot;Properties&quot; dialogue box for your clip.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you look at the action that we added to the 
                                                        button, you will notice this line:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table5">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>Begin Tell 
                                                                                Target (&quot;/animation&quot;)<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        &quot;animation&quot; is the instance name of our Movieclip.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he reason that Flash requires instance names 
                                                        for movieclips is that the same Movieclip symbol could easily be used in several 
                                                        places at the same time.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>or example you could create a movie clip that 
                                                        animated a ball jumping up and down. This movieclip could easily be inserted 
                                                        twice so that you had a ball jumping both at the left and right side of the 
                                                        movie. If you did not add a unique name to each of these two clips it would be 
                                                        impossible for flash to know which one you wanted to control when referring to 
                                                        the movieclip.<br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he technique for Tell Target buttons is fairly 
                                                        complex compared to the technique behind simple buttons.<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>ortunately, it sounds a lot more complex than 
                                                        it actually is - which you will realize when you get your first Tell target 
                                                        button running.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can click
                                                        <a href="http://www.echoecho.com/i/telltargetbutton.fla"><span class="link">here</span></a> 
                                                        to download a FLA source file for the Tell Target Button.<br />
                                                        </span>
                                                        <p>
                                                            &nbsp;<span class="text"><br />
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
                                                PostBackUrl="~/FLASH_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/FLASH_L4.aspx">Next &gt;&gt;</asp:LinkButton>
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
