<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="FLASH_L1.aspx.cs" Inherits="_Default" %>

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
  href="Signup.aspx">Signup</A> <SPAN class=author>to add comment, &amp; to Rate The Tutorials 
          YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/FLASH_L1.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img alt="" src="images/Flash.png" style="width: 184px; height: 85px" />&nbsp;&nbsp;<br />
                &nbsp;
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/FLASH_Contents.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/FLASH_Contents.aspx">Back to FLASH Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="FLASH_L2.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 1 - FLASH Basics </H2>
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
                                                            &nbsp;</p>
                                                        <span class="text"><span class="fancyfirst">H</span>TML is ideal for creating 
                                                        static websites where text and images are placed at fixed positions.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>ut it doesn't really support dynamic sites, 
                                                        where text, images, and animations are moving around on the screen.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>raditionally, these effects were achieved with 
                                                        animated GIF images or java applets.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>efore we move on to concrete examples of Flash 
                                                        movies, we will compare Flash to both animated GIFs and java applets.</span>
                                                        <br />
                                                        <br />
                                                        <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                        <div align="center" class="headline" 
                                                            style="color: #800000; font-size: 22px; font-weight: bold">
                                                            FLASH vs ANIMATED GIFs<br />
                                                        </div>
                                                        <span class="text"><span class="fancyfirst">A</span>n animated GIF is actually 
                                                        many images saved in one.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">W</span>hen the animated GIF is loaded onto a webpage, 
                                                        the browser simply loops the images. This means, if you make an animation of a 
                                                        clown that moves his hand up and down in 25 small movements, then the animated 
                                                        area of the image is saved 25 times. So it doesn't take a lot of animation to 
                                                        create a GIF image that's remarkable bigger than a regular clown image.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>herefore, even small animations take forever to 
                                                        load.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">W</span>hile animated GIFs can be used for animations, 
                                                        they do not support interactivity. They simply loop images in a predefined order 
                                                        and that's it.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n Flash, you can control the animations. For 
                                                        example, you can make the animation stop and wait for the user to click a 
                                                        button. And when the animation starts again it can be dependant on which button 
                                                        was clicked.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">A</span> final obvious difference is that GIF images 
                                                        are limited to a 256 color palette.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>o compared to animated GIFs, the advantages of 
                                                        Flash are that:<br />
                                                        <ul>
                                                            <li>Flash movies load much faster.<br />
                                                            </li>
                                                            <li>Flash movies allow interactivity.<br />
                                                            </li>
                                                            <li>Flash movies can use more than 256 colors.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        </span>
            <DIV align=center><A 
            href="#top">Top</A><br />
                <br />
                                                            </DIV><div 
                                                            align="center" class="headline" 
                                                            style="color: #800000; font-size: 22px; font-weight: bold">
                                                            FLASH vs JAVA APPLETS</div>
                                                        <span class="text"><span class="fancyfirst">
                                                        <br />
                                                        <br />
                                                        A</span>side from animated GIFs, another approach has been used to add dynamic 
                                                        effects to web pages: java applets.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>ne of the most famous is the
                                                        <a href="http://www.echoecho.com/applets.htm"><span class="link">lake applet</span></a>.<br />
                                                        <br />
                                                        <span class="fancyfirst">U</span>nfortunately, java (the programming language 
                                                        for applets) requires programming skills. This means that you can't just start 
                                                        creating your own applets.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>herefore, some programmers have created free 
                                                        applets that allow customization. So instead of learning the programming, people 
                                                        can simply use the already programmed applets.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>gain, the lake applet is a good example. It 
                                                        makes a wave effect on any image of any size. But if you wanted to add anything 
                                                        else to the applet you would have to either program it yourself or find a free 
                                                        applet that actually did what you wanted.
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>lash movies are in many ways similar to java 
                                                        applets. Small programs that can be embedded into your HTML pages. But unlike 
                                                        java applets, it is fairly easy to create animations in Flash without 
                                                        programming skills.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>pplets have often be criticized for &quot;killing&quot; 
                                                        browsers.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>ometimes, java programmers are not as skillfull 
                                                        as one might have wished. Some applets are programmed so they eventually take up 
                                                        all resources on the computer, and this results in &quot;freezing&quot; the browser.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>o compared to java applets, the advantage of 
                                                        Flash is:<br />
                                                        <ul>
                                                            <li>Flash movies are easier to create than java applets.<br />
                                                            </li>
                                                            <li>Flash movies are more stable in web browsers than java applets.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="note"><span class="fancyfirst">N</span>ote: While Flash has these 
                                                        advantages over applets, there is more to the story. There are things that you 
                                                        can program in java that just can't be done with Flash. But since the focus here 
                                                        is Flash we will not go into the details.</span><br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>n the next page we will look at a few examples 
                                                        of Flash...</s
                                                        <br />
                                                        <br />
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV> <br />
                                                        <br />
                                                            <div 
                                                            align="center" class="headline" 
                                                            style="color: #800000; font-size: 22px; font-weight: bold">
                                                                <br />
                                                                <br />
                                                            <br />
                                                            FLASH ON THE WEB<br />
                                                                <br />
                                                        </div>
                                                        <span class="text"><span class="fancyfirst">It">I</span>f you're completely new to 
                                                        Flash, you should try clicking some of these links to see examples of what can 
                                                        be made.<br />
                                                        <br />
                                                        <span class="note"><span class="fancyfirst">N</span>ote: Each link will open in 
                                                        a new window, but since some of the pages take a while to load you should 
                                                        probably just open one link at a time.</span><br />
                                                        <ul>
                                                            <li><a href="http://www.eye4u.com/" target="&quot;top&quot;"><span class="link">
                                                                EYE4U.COM</span></a> (Full screen animation)
                                                                <br />
                                                                This site has several examples of what can be made with Flash. The intro is 
                                                                particulary interesting.<br />
                                                                <br />
                                                            </li>
                                                            <li><a href="http://www.empire-us.com/" target="&quot;top&quot;"><span class="link">
                                                                EMPIRE-US.COM</span></a> (3D effects)<br />
                                                                This site is an example of mixing Flash with normal HTML. Also, it is an 
                                                                extremely good example of how 3D effects can be created with Flash.<br />
                                                                <br />
                                                            </li>
                                                            <li><a href="http://www.beatstream.com/main.htm" target="&quot;top&quot;">
                                                                <span class="link">BEATSTREAM.COM</span></a> (User Interface)<br />
                                                                This site has an extremely interesting user interface. Click an option and see 
                                                                the screen dance!<br />
                                                                <br />
                                                            </li>
                                                            <li><a href="http://www.echoecho.com/test/flashecho/sitet.html" 
                                                                    target="&quot;top&quot;"><span class="link">ALMOs FLASH 3 TUTORIAL</span></a> 
                                                                (Speed)<br />
                                                                This site loads extremely fast. In a split second you have full screen 
                                                                animations running in your browser. An example of what can be achieved with 
                                                                Flash if heavy sound modules are left out.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you want to see other examples of outstanding 
                                                        pages made with Flash you can check out the
                                                        <a href="http://www.macromedia.com/gallery/archive/"><span class="link">
                                                        Macromedia Site Of The Day Archive</span></a>.
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you still want to develop your own Flash 
                                                        movies after seeing these examples (and we believe you do!), jump to the next 
                                                        page to read about what is needed before you start.</s <br />
                                                        <p>
                                                            <BR>
                                                        </p>
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div 
                                                            align="center" class="headline" 
                                                            style="color: #800000; font-size: 22px; font-weight: bold">
                                                            WHERE TO GET FLASH<br />
&nbsp;<br />
</div>
                                                        <span class="text"><span class="fancyfirst">It">I</span>n order to create Flash 
                                                        movies you need a to buy the Flash program.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>t is developed by Macromedia and the latest 
                                                        version is Flash Mx.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can click
                                                        <a href="http://shopper.cnet.com/shopping/resellers/0-4773332-311-9481070.html?tag=st.sh.sr.pl.pr9481070" 
                                                            target="&quot;top&quot;"><span class="link">here</span></a> to compare 
                                                        actual prices from different online stores.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>t should be emphasized here, that buying the 
                                                        Flash program is only necessary for Flash developers.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>nyone that has the free Flash plug-in /Active-X 
                                                        installed with their browser can view flash movies.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">W</span>HO CAN VIEW FLASH MOVIES?</span><br />
                                                        <br />
                                                        <span class="fancyfirst">M</span>acromedia reports that by January 2002 more 
                                                        than 400 million browsers were able to view shockwave flash movies. That is 
                                                        close to 100% of all browsers on the web. (The data was estimated by an 
                                                        independent third party: <a href="http://www.idc.com" target="&quot;top&quot;">
                                                        <span class="link">IDC</span></a>). You can read more stats
                                                        <a href="http://www.macromedia.com/software/player_census/" 
                                                            target="&quot;top&quot;"><span class="link">here</span></a>.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">H</span>OW IS THE FREE PLUG-IN 
                                                        DISTRIBUTED?</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he Shockwave Flash plug-in is bundled with the 
                                                        newest Netscape browsers as well as the Windows 98 operating system.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his means that anyone who runs a new Netscape 
                                                        browser, or is running Windows 98 as their operating system, can view Flash 
                                                        movies.<br />
                                                        <br />
                                                        <span class="fancyfirst">P</span>eople that do not have the plug-in installed 
                                                        can download it for free from Macromedia's site (size only some 120 Kb).
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>nd if they're using a version 4 browser or 
                                                        newer, the download and install can be automated.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">W</span>HAT ABOUT THE FUTURE?</span><br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>y the end of the 3rd quarter of 1998, less than 
                                                        40% of all surfers were able to view Flash movies right away. A year later the 
                                                        percentage was 90% - and today Flash is a state-of-the-art method for vector 
                                                        graphics on the web.<br />
                                                        </span>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div 
                                                            align="center" class="headline" 
                                                            style="color: #800000; font-size: 22px; font-weight: bold">
                                                            WHERE DO I START?<br />
                                                            <br />
                                                        </div>
                                                        <span class="text"><span class="fancyfirst">O</span>nce you've installed the 
                                                        Flash program, you should start by completing the lessons that come with it.<br />
                                                        <ul>
                                                            <li>Introduction<br />
                                                            </li>
                                                            <li>Drawing<br />
                                                            </li>
                                                            <li>Symbols<br />
                                                            </li>
                                                            <li>Layers<br />
                                                            </li>
                                                            <li>Type<br />
                                                            </li>
                                                            <li>Buttons<br />
                                                            </li>
                                                            <li>Sound<br />
                                                            </li>
                                                            <li>Animation<br />
                                             Animation<br />
                                                            </li>
                                                        </ul>
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <br />
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
                                           
                                            <BR>
            <DIV align=right style="color: #00FF00">
                <asp:LinkButton ID="LinkButton8" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/FLASH_Contents.aspx">Back to FLASH Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/FLASH_Contents.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/FLASH_L2.aspx">Next &gt;&gt;</asp:LinkButton>
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
