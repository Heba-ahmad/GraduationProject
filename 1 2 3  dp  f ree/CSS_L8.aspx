<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="CSS_L8.aspx.cs" Inherits="_Default" %>

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
        DestinationPageUrl="~/CSS_L8.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;<img alt="" src="images/CSS.JPG" style="width: 204px; height: 86px" />&nbsp;<br />
                &nbsp;
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/CSS_L7.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/CSS_Contents.aspx">Back to CSS Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="CSS_L9.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 8 - CSS Layers</H2>
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
                                                            CSS Layers</div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">W</span>ith CSS, it is possible to 
                                                            work with layers: pieces of HTML that are placed on top of the regular page with 
                                                            pixel precision.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he advantages of this are obvious - but once 
                                                            again Netscape has very limited support of CSS layers - and to top it off: the 
                                                            limited support it offers is quite often executed with failures.<br />
                                                            <br />
                                                            <span class="fancyfirst">S</span>o the real challenge when working with layers 
                                                            is to make them work on Netscape browsers as well.<br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">L</span>AYER BASICS</span><br />
                                                            <br />
                                                            <span class="fancyfirst">F</span>irst look at this example:<br />
                                                            <br />
                                                            <table align="center">
                                                                <tr>
                                                                    <td>
                                                                        LAYER 1 ON TOP:
                                                                        <div style="Z-INDEX: 2; POSITION: relative; FONT-SIZE: 50px">
                                                                            LAYER 1</div>
                                                                        <div style="Z-INDEX: 1; POSITION: relative; COLOR: red; FONT-SIZE: 80px; TOP: -50px; LEFT: 5px">
                                                                            LAYER 2</div>
                                                                        LAYER 2 ON TOP:
                                                                        <div style="Z-INDEX: 3; POSITION: relative; FONT-SIZE: 50px">
                                                                            LAYER 1</div>
                                                                        <div style="Z-INDEX: 4; POSITION: relative; COLOR: red; FONT-SIZE: 80px; TOP: -50px; LEFT: 5px">
                                                                            LAYER 2</div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">S</span>econd look at the code:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="style5">
                                                                                    <!-- perl mysql php web host -->LAYER 1 ON TOP:<br />
                                                                                    <span class="style1">&lt;div style=&quot;position:relative; font-size:50px; 
                                                                                    z-index:2;&quot;&gt;LAYER 1&lt;/div&gt;<br />
                                                                                    &lt;div style=&quot;position:relative; top:-50; left:5; color:red; font-size:80px; 
                                                                                    z-index:1&quot;&gt;LAYER 2&lt;/div&gt;</span><br />
                                                                                    <br />
                                                                                    LAYER 2 ON TOP:<br />
                                                                                    <span class="style1">&lt;div style=&quot;position:relative; font-size:50px; 
                                                                                    z-index:3;&quot;&gt;LAYER 1&lt;/div&gt;<br />
                                                                                    &lt;div style=&quot;position:relative; top:-50; left:5; color:red; font-size:80px; 
                                                                                    z-index:4&quot;&gt;LAYER 2&lt;/div&gt;</span><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>o create a layer all you need to do is assign 
                                                            the <span class="note"><span class="style4">position</span></span> attribute to 
                                                            your style. The position can be either <span class="note"><span class="style4">
                                                            absolute</span></span> or <span class="note"><span class="style4">relative</span></span>.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he position itself is defined with the
                                                            <span class="note"><span class="style4">top</span></span> and <span class="note">
                                                            <span class="style4">left</span></span> properties.<br />
                                                            <br />
                                                            <span class="fancyfirst">F</span>inally, which layer is on top is defined with 
                                                            the <span class="note"><span class="style4">z-index</span></span> attribute.<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">R</span>ELATIVE VERSUS ABSOLUTE 
                                                            POSITIONING</span><br />
                                                            <br />
                                                            <span class="fancyfirst">Y</span>ou can either position your layer calculated 
                                                            from the upper left corner(absolute) or calculated from the position where the 
                                                            layer itself is inserted (relative).<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="style6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <span class="style4">position:absolute</span><br />
                                                                                    If you define the position to be absolute it will be calculated from the upper 
                                                                                    left corner of the page - unless the layer is defined inside another layer, in 
                                                                                    which case it will be calculated from the upper left corner of the parent layer.<br />
                                                                                    <br />
                                                                                    <span class="style4"><span class="fancyfirst">p</span>osition:relative</span><br />
                                                                                    If you define the position to be relative it will be relative to the position of 
                                                                                    the tag that carries the style.<br />
                                                                                    That is, if you add a relatively positioned layer in the middle of the page, 
                                                                                    then the position will be calculated from that exact spot in the middle of your 
                                                                                    page where it was added.<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">D</span>EFINING THE POSITION</span><br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>hile the <span class="note">
                                                            <span class="style4">position</span></span> property indicates the out spring of 
                                                            our coordinate system, the <span class="note"><span class="style4">left</span></span> 
                                                            and <span class="note"><span class="style4">top</span></span> properties defines 
                                                            the exact position of our layer.<br />
                                                            <br />
                                                            <span class="fancyfirst">Y</span>ou can enter both positive and negative values 
                                                            for these properties - thus it is possible to place content higher up and 
                                                            further to the left on the page than the logical position in the HTML code where 
                                                            the layer itself is defined.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>n other words: at the bottom of your HTML code 
                                                            you can enter the code for a layer that is positioned at the top of the 
                                                            resulting page.<br />
                                                            <br />
                                                            <span class="fancyfirst">B</span>oth <span class="note"><span class="style4">
                                                            left</span></span> and <span class="note"><span class="style4">top</span></span> 
                                                            properties can be dynamically changed
                                                            <br />
                                                            with JavaScript.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>his means that it is possible to move things 
                                                            around on the screen even after the page has finished loading.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>n fact this technique can be (and has been) 
                                                            used to create entire games. Other uses might be menus that pop out when a 
                                                            mouse-over is detected on a link. The possibilities are endless - but in order 
                                                            to keep things simple, we will not dig into details about these dynamic HTML 
                                                            effects here.<br />
                                                            <br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">P</span>OSITION IN THE STACK - THE 
                                                            Z-INDEX</span><br />
                                                            <br />
                                                            <span class="fancyfirst">P</span>icture a game of 52 cards. If the ace of spades 
                                                            was at the bottom we'd say it had <span class="note"><span class="style4">
                                                            z-index:1;</span></span>. If the queen of hearts was at the top we'd say she had
                                                            <span class="note"><span class="style4">z-index:52;</span></span>.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>ry looking at the code example at the top of 
                                                            this page again, and see how we used the z-index to put LAYER 1 on top in the 
                                                            first example, while we had LAYER 2 on top in the second example.<br />
                                                            <br />
                                                            <span class="fancyfirst">V</span>ery interesting possibilities arise from the 
                                                            fact that the z-index can be dynamically changed with JavaScript.<br />
                                                            <br />
                                                            <span class="fancyfirst">Y</span>ou could create several &quot;pages&quot; on top of each 
                                                            other - all on the same page. When the user clicks a link it will simply move 
                                                            the layer with the desired info on top rather than load a new page. The 
                                                            techniques to create effects like that goes beyond the scope of pure CSS 
                                                            however, so for now we will just refer to DHTML (Dynamic HTML - a mix between 
                                                            JavaScript and CSS) for further explorations into that area.<br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">V</span>ISIBILE VERSUS HIDDEN 
                                                            LAYERS</span><br />
                                                            <br />
                                                            <span class="fancyfirst">A</span> final property is the <span class="note">
                                                            <span class="style4">visibility</span></span> property that will allow you to 
                                                            create invisible layers.<br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>hy would anyone want to create an invisible 
                                                            layer? Well, imagine the possibilities it gives for adding pop-up menus and 
                                                            other cool effects on your pages.<br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>ith dynamic HTML it is possible to change the 
                                                            visibility of a layer according to certain events. The most common use of this 
                                                            is to create menus that pop out (like the sub menus in the START menu on 
                                                            Windows). The trick behind these menus is to create all submenus as invisible 
                                                            layers. Then, when a mouse-over is detected on a link the according layer 
                                                            becomes visible. (Sounds pretty easy - actually is pretty easy - except when 
                                                            tried on Netscape browsers that seem to have only a vague idea of the logic 
                                                            behind CSS layers).<br />
                                                            <br />
                                                            <span class="fancyfirst">V</span>alid values for the <span class="note">
                                                            <span class="style4">visibility</span></span> property are: <span class="note">
                                                            <span class="style4">visible</span></span> and <span class="note">
                                                            <span class="style4">hidden</span></span>.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>his example shows how to create an invisible 
                                                            layer:<br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="style5">
                                                                                    <!-- perl mysql php web host -->&lt;div style=&quot;position:relative; 
                                                                                    visibility:hidden;&quot;&gt;HELLO!!!&lt;/div&gt;<br />
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
                                                            <span class="style4"><span class="fancyfirst">P</span>RACTICAL USE OF LAYERS</span><br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>t's obvious that layers offer certain 
                                                            possibilities for precise positioning of static elements on your pages.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>n reality layers are often used in more dynamic 
                                                            ways:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="style6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                    <ul>
                                                                                        <li>Flying elements/banners on the page<br />
                                                                                        </li>
                                                                                        <li>Games where you move an object around<br />
                                                                                        </li>
                                                                                        <li>Menus that pop out when triggered<br />
                                                                                        </li>
                                                                                        <li>Menus that become visible when triggered</li>
                                                                                    </ul>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            While all of these effects might seem pretty cool and useful - the fact is that 
                                                            the web is filled with dynamic effects that are much more cool than the average 
                                                            visitor really likes.<br />
                                                            <br />
                                                            The more you create a unique interface for your site the more you force the 
                                                            visitor to forget about what she is used to. Do not underestimate the power of 
                                                            sticking to the elements that the average visitor is accustomed to.
                                                            <br />
                                                            <br />
                                                            What's cool about creating an effect that makes 90% of all web designers clap 
                                                            their hands while leaving 90% of non-web designers confused or disappointed?
                                                            <br />
                                                            <br />
                                                            In any case, judge for yourself if a certain effect is really needed - and if 
                                                            so: do not hesitate to use it.<br />
                                                            <br />
                                                            <hr align="center" width="300" />
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
                                                            </span>
                                                        <BLOCKQUOTE>
                                                        </BLOCKQUOTE>
                                                    </DIV>
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
                                                PostBackUrl="~/CSS_L7.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/CSS_L9.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
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
