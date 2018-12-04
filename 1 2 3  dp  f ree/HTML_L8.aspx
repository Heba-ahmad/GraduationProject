<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="HTML_L8.aspx.cs" Inherits="_Default" %>

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
  href="Signup.aspx">Signup</A> <SPAN class=author>to add comment, &amp; to Rate The Tutorials 
          YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/HTML_L8.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;&nbsp;
                                            <img alt="" src="images/html.jpg" 
                    style="width: 204px; height: 86px" /><br />
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L7.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/HTML_Contents.aspx">Back to HTML Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="HTML_L9.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 8 - HTML Frames</H2>
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
                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                <tr>
                                                                    <td class="main">
                                                                        <div align="left">
                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <span class="text"><span class="fancyfirst">F</span>rames can divide the screen 
                                                                            into separate windows.
                                                                            <br />
                                                                            <br />
                                                                            <div align="center">
                                                                                <center>
                                                                                    <table bgcolor="#333333" border="1">
                                                                                        <tr>
                                                                                            <td bgcolor="#808080" rowspan="2" width="20">
                                                                                                &nbsp;</td>
                                                                                            <td bgcolor="#c0c0c0" height="80" width="100">
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td bgcolor="#008080">
                                                                                                &nbsp;</td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </center>
                                                                            </div>
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">E</span>ach of these windows can contain an HTML 
                                                                            document.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">A</span> file that specifies how the screen is divided 
                                                                            into frames is called a frameset.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>f you want to make a homepage that uses frames 
                                                                            you should:
                                                                            <br />
                                                                            <ul>
                                                                                <li>make an HTML document with the frameset
                                                                                    <br />
                                                                                </li>
                                                                                <li>make the normal HTML documents that should be loaded into each of these frames.<br />
                                                                                </li>
                                                                            </ul>
                                                                            <span class="fancyfirst">W</span>hen a frameset page is loaded, the browser 
                                                                            automatically loads each of the pages associated with the frames.<br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline">
                                                                                BASIC EXAMPLE</div>
                                                                            <br />
                                                                            <br />
                                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                                <tr>
                                                                                    <td class="main">
                                                                                        <div align="left">
                                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                                            <span class="text"><span class="fancyfirst">A</span> frameset is simply an HTML 
                                                                                            document that tells the browser how to divide the screen into split windows.<br />
                                                                                            <br />
                                                                                            <div align="center">
                                                                                                <center>
                                                                                                    <table bgcolor="#333333" border="1">
                                                                                                        <tr>
                                                                                                            <td bgcolor="#808080" rowspan="2" width="20">
                                                                                                                &nbsp;</td>
                                                                                                            <td bgcolor="#c0c0c0" height="80" width="100">
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td bgcolor="#008080">
                                                                                                                &nbsp;</td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </center>
                                                                                            </div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he HTML for the above frameset:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                                                    &lt;head&gt;<br />
                                                                                                                    &lt;title&gt;My Frames Page&lt;/title&gt;<br />
                                                                                                                    &lt;/head&gt;<br />
                                                                                                                    <br />
                                                                                                                    &lt;frameset cols=&quot;120,*&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;menupage.htm&quot; name=&quot;menu&quot;&gt;<br />
                                                                                                                    &lt;frameset rows=&quot;*,50&quot;&gt;
                                                                                                                    <br />
                                                                                                                    &lt;frame src=&quot;welcomepage.htm&quot; name=&quot;main&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;bottombanner.htm&quot; name=&quot;bottom&quot;&gt;<br />
                                                                                                                    &lt;/frameset&gt;
                                                                                                                    <br />
                                                                                                                    &lt;/frameset&gt;<br />
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
                                                                                            <br />
                                                                                            <span class="fancyfirst">N</span>ote that the frameset is only seven lines!<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">L</span>et's split it all up and add the lines one by 
                                                                                            one...<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                CREATING A FRAMESET</div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">A</span>s stated on the previous page, a frameset is 
                                                                                            simply an HTML document that tells the browser how to divide the screen into 
                                                                                            split windows.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">I</span>f the frameset looked like this:<br />
                                                                                            <br />
                                                                                            <div align="center">
                                                                                                <center>
                                                                                                    <table bgcolor="#333333" border="1">
                                                                                                        <tr>
                                                                                                            <td bgcolor="#808080" width="20">
                                                                                                                &nbsp;</td>
                                                                                                            <td bgcolor="#c0c0c0" height="100" width="100">
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </center>
                                                                                            </div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he code would be:<br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;frameset cols=&quot;120,*&quot;&gt;<br />
                                                                                                                    &lt;/frameset&gt;
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
                                                                                            <span class="fancyfirst">T</span>he screen is divided into two coloumns.
                                                                                            <br />
                                                                                            The left being 120 pixels and the right using the rest of the screen (indicated 
                                                                                            by the *).
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he frame windows would have no names, so the 
                                                                                            frameset really couldn't be used for any purpose.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">P</span>roceed to learn how to add names and default 
                                                                                            pages that load into your frame windows...<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                DEFAULT PAGES</div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">Y</span>ou can add default pages to frame windows with 
                                                                                            the <span class="style2">src</span> setting.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">D</span>efault pages are the pages that will be loaded 
                                                                                            when the frameset is opened the first time.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">F</span>urthermore, we can add names to each frame 
                                                                                            window using the <span class="style2">name</span> setting.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>his will allow us to make a link in one frame 
                                                                                            window, open a page in another frame window.
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">I</span>n this example we added names and default pages 
                                                                                            to the frame windows:<br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;frameset cols=&quot;120,*&quot; &gt;<br />
                                                                                                                    <span class="style1">&lt;frame src=&quot;menu.htm&quot; name=&quot;menu&quot; &gt;<br />
                                                                                                                    &lt;frame src=&quot;frontf.htm&quot; name=&quot;main&quot; &gt;</span><br />
                                                                                                                    &lt;/frameset&gt;
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
                                                                                            <span class="fancyfirst">T</span>he entire frameset will look like this:<br />
                                                                                            <br />
                                                                                            <div align="center">
                                                                                                <center>
                                                                                                    <table bgcolor="#333333" border="1">
                                                                                                        <tr>
                                                                                                            <td bgcolor="#808080" width="20">
                                                                                                                <div align="center">
                                                                                                                    <center>
                                                                                                                        <p>
                                                                                                                            <font color="#000000" face="Arial">m<br />
                                                                                                                            e<br />
                                                                                                                            n<br />
                                                                                                                            u</font></p>
                                                                                                                    </center>
                                                                                                                    </P>
                                                                                                                </div>
                                                                                                            </td>
                                                                                                            <td align="middle" bgcolor="#c0c0c0" height="100" valign="top" width="100">
                                                                                                                <div align="center">
                                                                                                                    <center>
                                                                                                                        <p>
                                                                                                                            <font color="#000000" face="Arial">
                                                                                                                            <br />
                                                                                                                            main</font></p>
                                                                                                                    </center>
                                                                                                                    </P>
                                                                                                                </div>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </center>
                                                                                            </div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">W</span>e still have the screen divided in two columns, 
                                                                                            the left being 120 pixels the right using the rest of the screen. (some screens 
                                                                                            are set to 640 pixels across, some to 800 and some to 1024, thats why the * is 
                                                                                            needed).<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">B</span>ut now we also have told the browser that the 
                                                                                            left frame window should load an HTML page called <span class="style4">menu.htm</span> 
                                                                                            and that the right window should load an HTML document called
                                                                                            <span class="style4">frontf.htm</span>.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">I</span>n addition we have assigned the names menu and 
                                                                                            main to the two frame windows, so now we're even able to link to specific 
                                                                                            windows.
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">W</span>e called the frame windows <span class="style4">
                                                                                            menu</span> and <span class="style4">main</span>, but you could name them 
                                                                                            whatever you pleased.
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he frameset with a menu window to the left and 
                                                                                            a main window to the right is the most common frameset seen on the web.
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>here are a few more settings we could add to 
                                                                                            the frameset.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">F</span>or instance you might want the frame borders to 
                                                                                            be invisible.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">P</span>roceed to the next page to learn how....
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                BORDERS</div>
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>o make frame borders invisible you simply need 
                                                                                            to add the parameters &quot;cols-line&quot; to the frameset :<br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;frameset cols=&quot;120,*&quot; <span class="style1">
                                                                                                                    frameborder=&quot;0&quot; border=&quot;0&quot; framespacing=&quot;0&quot;</span>&gt;<br />
                                                                                                                    &lt;frame src=&quot;menu.htm&quot; name=&quot;menu&quot; &gt;<br />
                                                                                                                    &lt;frame src=&quot;frontf.htm&quot; name=&quot;main&quot; &gt;<br />
                                                                                                                    &lt;/frameset&gt;
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
                                                                                            <span class="fancyfirst">T</span>he entire frameset would now look like this:<br />
                                                                                            <br />
                                                                                            <div align="center">
                                                                                                <center>
                                                                                                    <table bgcolor="#333333" border="1" cellspacing="1">
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <table border="1" cellspacing="0">
                                                                                                                    <tr>
                                                                                                                        <td bgcolor="#808080" style="BORDER-RIGHT: medium none" width="20">
                                                                                                                            <div align="center">
                                                                                                                                <center>
                                                                                                                                    <p>
                                                                                                                                        <font color="#000000" face="Arial">m<br />
                                                                                                                                        e<br />
                                                                                                                                        n<br />
                                                                                                                                        u</font></p>
                                                                                                                                </center>
                                                                                                                                </P>
                                                                                                                            </div>
                                                                                                                        </td>
                                                                                                                        <td align="middle" bgcolor="#c0c0c0" height="100" 
                                                                                                                            style="BORDER-LEFT: medium none" valign="top" width="100">
                                                                                                                            <div align="center">
                                                                                                                                <center>
                                                                                                                                    <p>
                                                                                                                                        <font color="#000000" face="Arial">
                                                                                                                                        <br />
                                                                                                                                        main</font></p>
                                                                                                                                </center>
                                                                                                                                </P>
                                                                                                                            </div>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </center>
                                                                                            </div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">W</span>e could still add a few more parameters to our 
                                                                                            frameset....
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                RESIZEABLE WINDOWS</div>
                                                                                            <br />
                                                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                                                <tr>
                                                                                                    <td class="main">
                                                                                                        <div align="left">
                                                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                                                            <span class="text"><span class="fancyfirst">I</span>f you don’t want the frame 
                                                                                                            windows to be resizeable, you should add the parameter &quot;noresize&quot; to the frame 
                                                                                                            src lines:<br />
                                                                                                            <br />
                                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                                cellspacing="1">
                                                                                                                <tr>
                                                                                                                    <td bgcolor="#99aa99">
                                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                                            <tr>
                                                                                                                                <td class="table1">
                                                                                                                                    <!-- perl mysql php web host -->&lt;frameset cols=&quot;120,*&quot; frameborder=&quot;0&quot; 
                                                                                                                                    border=&quot;0&quot; framespacing=&quot;0&quot;&gt;<br />
                                                                                                                                    &lt;frame src=&quot;menu.htm&quot; name=&quot;menu&quot; <span class="style1">noresize</span>&gt;<br />
                                                                                                                                    &lt;frame src=&quot;frontf.htm&quot; name=&quot;main&quot; <span class="style1">noresize</span>&gt;<br />
                                                                                                                                    &lt;/frameset&gt;
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
                                                                                                            <span class="fancyfirst">N</span>ow let's proceed with even more parameters for 
                                                                                                            our frameset...<br />
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
                                                                                                SCROLLBARS</div>
                                                                                            <br />
                                                                                            <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                                                                <tr>
                                                                                                    <td class="main">
                                                                                                        <div align="left">
                                                                                                            <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                                                            <span class="text"><span class="fancyfirst">L</span>ets say you don’t want a 
                                                                                                            scroll bar in the menu window.<br />
                                                                                                            <br />
                                                                                                            <span class="fancyfirst">F</span>urthermore the main window should have a 
                                                                                                            scrollbar if needed (if the HTML document doesn’t fit in the window), but if not 
                                                                                                            needed - there should be no scrollbars.
                                                                                                            <br />
                                                                                                            <br />
                                                                                                            <span class="fancyfirst">T</span>hen the code should look like this:<br />
                                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                                cellspacing="1">
                                                                                                                <tr>
                                                                                                                    <td bgcolor="#99aa99">
                                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                                            <tr>
                                                                                                                                <td class="table1">
                                                                                                                                    <!-- perl mysql php web host -->&lt;frameset cols=&quot;120,*&quot; frameborder=&quot;0&quot; 
                                                                                                                                    border=&quot;0&quot; framespacing=&quot;0&quot;&gt;<br />
                                                                                                                                    &lt;frame src=&quot;menu.htm&quot; name=&quot;menu&quot; noresize <span class="style1">scrolling=no</span>&gt;<br />
                                                                                                                                    &lt;frame src=&quot;frontf.htm&quot; name=&quot;main&quot; noresize <span class="style1">scrolling=auto</span>&gt;<br />
                                                                                                                                    &lt;/frameset&gt;
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
                                                                                                            <span class="fancyfirst">I</span>f you leave out the setting for scrolling, a 
                                                                                                            scrollbar will appear if needed - otherwise not.<br />
                                                                                                            <br />
                                                                                                            <span class="fancyfirst">T</span>he next page explains in detail how to link 
                                                                                                            within a frameset...<br />
                                                                                                            </span>
                                                                                                        </div>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="left" class="subline">
                                                                                            </div>
                                                                                            <div align="center" class="headline">
                                                                                                LINKS WITHIN</div>
                                                                                            <br />
                                                                                            <span class="fancyfirst">I</span>f you have an HTML document with a hyperlink on 
                                                                                            the text &quot;Analysis&quot; for instance, that links to a page called &quot;analysis.htm&quot; 
                                                                                            then it appears in the document as:<br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="height: 38px; width: 450px; background-color: #FFFFFF;">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->Jump to the &lt;a href=&quot;analysis.htm&quot;&gt;Analysis&lt;/a&gt; 
                                                                                                                    of the project
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
                                                                                            <span class="fancyfirst">N</span>ow if the link was in the menu window of our 
                                                                                            example, and we wanted it to load a page in the main window, the HTML code would 
                                                                                            be:<br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->Jump to the &lt;a href=&quot;analysis.htm&quot;<span 
                                                                                                                        class="style1"> target=&quot;main&quot;</span>&gt;Analysis&lt;/a&gt; of the project
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
                                                                                            <span class="fancyfirst">W</span>e simply added the parameter
                                                                                            <span class="style4">target=&quot;main&quot;</span> to
                                                                                            <br />
                                                                                            the <span class="style2">&lt;a href&gt;</span> tag.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">N</span>ow the link will be opened in the main frame 
                                                                                            window instead of the menu frame window where the link itself is located.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">F</span>our target names are reserved, and will be 
                                                                                            interpreted by the browser in this way:<br />
                                                                                            <ul>
                                                                                                <li><span class="style4">_blank</span> loads the page into a new browser window
                                                                                                    <br />
                                                                                                </li>
                                                                                                <li><span class="style4">_self</span> loads the page into the current window.
                                                                                                    <br />
                                                                                                </li>
                                                                                                <li><span class="style4">_parent</span> loads the page into the frame that is 
                                                                                                    superior to the frame the hyperlink is in.
                                                                                                    <br />
                                                                                                </li>
                                                                                                <li><span class="style4">_top</span> cancels all frames, loads in full browser 
                                                                                                    window.
                                                                                                    <br />
                                                                                                </li>
                                                                                            </ul>
                                                                                            <br />
                                                                                            <br />
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">I</span>f you read through the pages in this section 
                                                                                            you should know just about all there is to know about framesets in HTML.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">I</span>t is possible to further enhance the control of 
                                                                                            your framesets with <a href="http://www.echoecho.com/jsframes.htm">
                                                                                            <span class="link">javascript</span></a>. For example javascript can prevent 
                                                                                            pages that were designed to work only within framesets, from being loaded 
                                                                                            outside the frameset.<br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">T</span>he last page in this section will show you 
                                                                                            examples of different framesets. You can probably find and customize an example 
                                                                                            that is very close to what you want for your own site....<br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center" class="headline">
                                                                                                EXAMPLES</div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <span class="fancyfirst">O</span>n this page you can see examples of different 
                                                                                            framesets.<br />
                                                                                            <br />
                                                                                            <div align="center">
                                                                                                <center>
                                                                                                    <table bgcolor="#333333" border="1">
                                                                                                        <tr>
                                                                                                            <td bgcolor="#808080" width="100">
                                                                                                                <div align="center">
                                                                                                                    <center>
                                                                                                                        <p>
                                                                                                                            <font color="#000000" face="Arial">top</font></p>
                                                                                                                    </center>
                                                                                                                    </P>
                                                                                                                </div>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr align="middle">
                                                                                                            <td bgcolor="#c0c0c0" width="100">
                                                                                                                <div align="center">
                                                                                                                    <center>
                                                                                                                        <p>
                                                                                                                            <font color="#000000" face="Arial">bottom</font></p>
                                                                                                                    </center>
                                                                                                                    </P>
                                                                                                                </div>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </center>
                                                                                            </div>
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
                                                                                                                    <!-- perl mysql php web host -->&lt;frameset rows=&quot;16%,84%&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;top.htm&quot; name=&quot;top&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;bottom.htm&quot; name=&quot;bottom&quot;&gt;<br />
                                                                                                                    &lt;/frameset&gt;
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
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center">
                                                                                                <center>
                                                                                                    <table bgcolor="#333333" border="1">
                                                                                                        <tr>
                                                                                                            <td bgcolor="#808080" width="50">
                                                                                                                <div align="center">
                                                                                                                    <center>
                                                                                                                        <p>
                                                                                                                            <font color="#000000" face="Arial">tl</font></p>
                                                                                                                    </center>
                                                                                                                    </P>
                                                                                                                </div>
                                                                                                            </td>
                                                                                                            <td align="middle" bgcolor="#808080" width="50">
                                                                                                                <div align="center">
                                                                                                                    <center>
                                                                                                                        <p>
                                                                                                                            <font color="#000000" face="Arial">tr</font></p>
                                                                                                                    </center>
                                                                                                                    </P>
                                                                                                                </div>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr align="middle">
                                                                                                            <td bgcolor="#c0c0c0" colspan="2" width="100">
                                                                                                                &nbsp;
                                                                                                                <div align="center">
                                                                                                                    <center>
                                                                                                                        <p>
                                                                                                                            <font color="#000000" face="Arial">bottom</font></p>
                                                                                                                    </center>
                                                                                                                    </P>
                                                                                                                </div>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </center>
                                                                                            </div>
                                                                                            <br />
                                                                                            <br />
                                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                                cellspacing="1">
                                                                                                <tr>
                                                                                                    <td bgcolor="#99aa99">
                                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                                            style="height: 134px; width: 450px; background-color: #FFFFFF;">
                                                                                                            <tr>
                                                                                                                <td class="table1">
                                                                                                                    <!-- perl mysql php web host -->&lt;frameset rows=&quot;16%,84%&quot;&gt;<br />
                                                                                                                    &lt;frameset cols=&quot;50%,50%&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;tl.htm&quot; name=&quot;tl&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;tr.htm&quot; name=&quot;tr&quot;&gt;<br />
                                                                                                                    &lt;/frameset&gt;<br />
                                                                                                                    &lt;frame src=&quot;bottom.htm&quot; name=&quot;bottom&quot;&gt;<br />
                                                                                                                    &lt;/frameset&gt;
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
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center">
                                                                                                <center>
                                                                                                    <table bgcolor="#333333" border="1">
                                                                                                        <tr>
                                                                                                            <td bgcolor="#008080" colspan="2" width="100">
                                                                                                                <div align="center">
                                                                                                                    <center>
                                                                                                                        <p>
                                                                                                                            <font color="#000000" face="Arial">top</font></p>
                                                                                                                    </center>
                                                                                                                    </P>
                                                                                                                </div>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr align="middle">
                                                                                                            <td bgcolor="#808080" width="50">
                                                                                                                <div align="center">
                                                                                                                    <center>
                                                                                                                        <p>
                                                                                                                            <font color="#000000" face="Arial">
                                                                                                                            <br />
                                                                                                                            left<br />
                                                                                                                            </font>
                                                                                                                        </p>
                                                                                                                    </center>
                                                                                                                    </P>
                                                                                                                </div>
                                                                                                            </td>
                                                                                                            <td align="middle" bgcolor="#c0c0c0" width="50">
                                                                                                                <div align="center">
                                                                                                                    <center>
                                                                                                                        <p>
                                                                                                                            <font color="#000000" face="Arial">
                                                                                                                            <br />
                                                                                                                            right<br />
                                                                                                                            </font>
                                                                                                                        </p>
                                                                                                                    </center>
                                                                                                                    </P>
                                                                                                                </div>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </center>
                                                                                            </div>
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
                                                                                                                    <!-- perl mysql php web host -->&lt;frameset rows=&quot;16%,84%&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;top.htm&quot; name=&quot;top&quot;&gt;<br />
                                                                                                                    &lt;frameset cols=&quot;50%,50%&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;left.htm&quot; name=&quot;left&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;right.htm&quot; name=&quot;right&quot;&gt;<br />
                                                                                                                    &lt;/frameset&gt;<br />
                                                                                                                    &lt;/frameset&gt;
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
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center">
                                                                                                <center>
                                                                                                    <table bgcolor="#333333" border="1">
                                                                                                        <tr>
                                                                                                            <td align="middle" bgcolor="#c0c0c0" valign="center">
                                                                                                                <font color="#000000" face="Arial">topleft<br />
                                                                                                                </font>
                                                                                                            </td>
                                                                                                            <td bgcolor="#808080">
                                                                                                                <font color="#000000" face="Arial">topright<br />
                                                                                                                </font>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td bgcolor="#808080">
                                                                                                                <font color="#000000" face="Arial">
                                                                                                                <br />
                                                                                                                botleft</font></td>
                                                                                                            <td bgcolor="#c0c0c0">
                                                                                                                <font color="#000000" face="Arial">
                                                                                                                <br />
                                                                                                                botright</font></td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </center>
                                                                                            </div>
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
                                                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>
                                                                                                                    <br />
                                                                                                                    &lt;frameset rows=&quot;50%,50%&quot; cols=&quot;50%,50%&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;topleft.htm&quot; name=&quot;topleft&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;topright.htm&quot; name=&quot;topright&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;botleft.htm&quot; name=&quot;botleft&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;botright.htm&quot; name=&quot;botright&quot;&gt;<br />
                                                                                                                    &lt;/frameset&gt;
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
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center">
                                                                                                <center>
                                                                                                    <table bgcolor="#333333" border="1">
                                                                                                        <tr>
                                                                                                            <td align="middle" bgcolor="#c0c0c0" valign="center">
                                                                                                                <font color="#000000" face="Arial">topleft<br />
                                                                                                                </font>
                                                                                                            </td>
                                                                                                            <td bgcolor="#808080" colspan="2">
                                                                                                                <font color="#000000" face="Arial">topright<br />
                                                                                                                </font>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td bgcolor="#808080" rowspan="2">
                                                                                                                <font color="#000000" face="Arial">
                                                                                                                <br />
                                                                                                                botleft</font></td>
                                                                                                            <td bgcolor="#c0c0c0">
                                                                                                                <font color="#000000" face="Arial">brtl</font></td>
                                                                                                            <td bgcolor="#c0c0c0">
                                                                                                                <font color="#000000" face="Arial">brtr</font></td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td bgcolor="#c0c0c0" colspan="2">
                                                                                                                <div align="center">
                                                                                                                    <center>
                                                                                                                        <p>
                                                                                                                            <font color="#000000" face="Arial">botrbot</font></p>
                                                                                                                    </center>
                                                                                                                    </P>
                                                                                                                </div>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </center>
                                                                                            </div>
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
                                                                                                                    <!-- perl mysql php web host -->&lt;frameset rows=&quot;50%,50%&quot; cols=&quot;50%,50%&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;topleft.htm&quot; name=&quot;topleft&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;topright.htm&quot; name=&quot;topright&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;botleft.htm&quot; name=&quot;botleft&quot;&gt;<br />
                                                                                                                    &lt;frameset rows=&quot;50%,50%&quot;&gt;<br />
                                                                                                                    &lt;frameset cols=&quot;50%,50%&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;brtl.htm&quot; name=&quot;brtl&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;brtr.htm&quot; name=&quot;brtr&quot;&gt;<br />
                                                                                                                    &lt;/frameset&gt;<br />
                                                                                                                    &lt;frame src=&quot;botrbot.htm&quot; name=&quot;botrbot&quot;&gt;<br />
                                                                                                                    &lt;/frameset&gt;<br />
                                                                                                                    &lt;/frameset&gt;
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
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center">
                                                                                                <center>
                                                                                                    <table bgcolor="#333333" border="1">
                                                                                                        <tr>
                                                                                                            <td align="middle" bgcolor="#c0c0c0" valign="center">
                                                                                                                <font color="#000000" face="Arial">topleft<br />
                                                                                                                </font>
                                                                                                            </td>
                                                                                                            <td bgcolor="#808080">
                                                                                                                <font color="#000000" face="Arial">topright<br />
                                                                                                                </font>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td bgcolor="#808080">
                                                                                                                <font color="#000000" face="Arial">
                                                                                                                <br />
                                                                                                                botleft</font></td>
                                                                                                            <td bgcolor="#c0c0c0">
                                                                                                                <font color="#000000" face="Arial">
                                                                                                                <br />
                                                                                                                botright</font></td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </center>
                                                                                            </div>
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
                                                                                                                    <!-- perl mysql php web host -->&lt;frameset rows=&quot;240,240&quot; cols=&quot;320,320&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;topleft.htm&quot; name=&quot;topleft&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;topright.htm&quot; name=&quot;topright&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;botleft.htm&quot; name=&quot;botleft&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;botright.htm&quot; name=&quot;botright&quot;&gt;<br />
                                                                                                                    &lt;/frameset&gt;
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
                                                                                            <hr align="center" width="300" />
                                                                                            <br />
                                                                                            <br />
                                                                                            <div align="center">
                                                                                                <center>
                                                                                                    <table bgcolor="#333333" border="1">
                                                                                                        <tr>
                                                                                                            <td align="middle" bgcolor="#c0c0c0" valign="center">
                                                                                                                <font color="#000000" face="Arial">topleft<br />
                                                                                                                </font>
                                                                                                            </td>
                                                                                                            <td bgcolor="#808080">
                                                                                                                <font color="#000000" face="Arial">topright<br />
                                                                                                                </font>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td bgcolor="#808080">
                                                                                                                <font color="#000000" face="Arial">
                                                                                                                <br />
                                                                                                                botleft</font></td>
                                                                                                            <td bgcolor="#c0c0c0">
                                                                                                                <font color="#000000" face="Arial">
                                                                                                                <br />
                                                                                                                botright</font></td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </center>
                                                                                            </div>
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
                                                                                                                    <!-- perl mysql php web host -->&lt;frameset rows=&quot;50%,*&quot; cols=&quot;320,*&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;topleft.htm&quot; name=&quot;topleft&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;topright.htm&quot; name=&quot;topright&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;botleft.htm&quot; name=&quot;botleft&quot;&gt;<br />
                                                                                                                    &lt;frame src=&quot;botright.htm&quot; name=&quot;botright&quot;&gt;<br />
                                                                                                                    &lt;/frameset&gt;
                                                                                                                    <br />
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
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <BR>
                                                        </p>
                                                        <BLOCKQUOTE>
                                                        </BLOCKQUOTE>
                                                    </DIV>
                                                    <br />
          <p align="right">
            <a href="javascript:window.external.AddFavorite(location.href, document.title);">
Add this Page to your Favorites</a>&nbsp; |
             
&nbsp;<a href="javascript:window.print();">Print This Page</a></p>
          <br />
          <br />
            <DIV align=right style="color: #00FF00"><A 
            href="#top">Top    <br />
          <BR>
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
                                                PostBackUrl="~/HTML_L7.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L9.aspx">Next &gt;&gt;</asp:LinkButton>
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
