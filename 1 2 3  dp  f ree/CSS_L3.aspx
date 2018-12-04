<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="CSS_L3.aspx.cs" Inherits="_Default" %>

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
  href="Signup.aspx">Signup</A> to add comment, &amp; to Rate The Tutorials YOU Like!<SPAN class=author><br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/CSS_L3.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;<img alt="" src="images/CSS.JPG" 
                    style="width: 204px; height: 86px" />&nbsp;
                <br />
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/CSS_L2.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/CSS_Contents.aspx">Back to CSS Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="CSS_L4.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 3 - WHERE TO PLACE IT</H2>
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
                                                            <span class="text"><span class="fancyfirst">C</span>SS can be added to your 
                                                            pages at 3 different levels.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>t is possible to create CSS styles that only 
                                                            work for the single tag it is defined for.<br />
                                                            <br />
                                                            <span class="fancyfirst">S</span>ingle tag CSS is used when the style is used in 
                                                            a single place on the entire site.<br />
                                                            <br />
                                                            <span class="fancyfirst">U</span>sually a certain style appears more than once 
                                                            on your pages, and thus you should use the second technique: adding styles that 
                                                            are defined once for the entire page.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>f, however, that certain style is used on more 
                                                            than a single page, you should use the third - and most powerful - technique 
                                                            described: adding styles that are defined once for the entire site.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he following pages will explain each of these 
                                                            techniques....<br />
                                                            </span>
                                                        </p>
                                                        <span class="text">
                                                        <hr align="center" width="300" />
                                                        </span>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            SINGLE TAGS</div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">C</span>SS can be defined for single 
                                                            tags by simply adding <span class="note">style=&quot;<span class="style4">styledefinition</span>:<span 
                                                                class="style4">styleattribute</span>;&quot;</span> to the tags.<br />
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
                                                                                    <!-- perl mysql php web host -->It is &lt;b <span class="style1">
                                                                                    style=&quot;font-size:16px;&quot;</span>&gt;NOT&lt;/b&gt; me.<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">Y</span>ou should limit your use of single tag CSS.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>f you define your styles for each and every tag 
                                                            they&#39;re used on, you will lose much of the power associated with CSS.<br />
                                                            <br />
                                                            <span class="fancyfirst">F</span>or example, you will have to define the style 
                                                            over and over again whenever it&#39;s used, rather than just defining it once and 
                                                            then referring to that one definition whenever it&#39;s used.<br />
                                                            <br />
                                                            <span class="fancyfirst">F</span>urthermore, if you wanted to change a certain 
                                                            style, you&#39;d have to change it all over in your document, rather than in one 
                                                            place.<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            </span></p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                          SINGLE PAGES</div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">C</span>SS can be defined for entire 
                                                            pages by simply adding a style definition to the head section.<br />
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
                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                    &lt;head&gt;<br />
                                                                                    &lt;title&gt;MY CSS PAGE&lt;/title&gt;<br />
                                                                                    <span class="style1">&lt;style type=&quot;text/css&quot;&gt;<br />
                                                                                    .headlines, .sublines, infotext {font-face:arial; color:black; 
                                                                                    background:yellow; font-weight:bold;}<br />
                                                                                    .headlines {font-size:14pt;}<br />
                                                                                    .sublines {font-size:12pt;}<br />
                                                                                    .infotext {font-size: 10pt;}<br />
                                                                                    &lt;/style&gt;</span><br />
                                                                                    &lt;/head&gt;<br />
                                                                                    <br />
                                                                                    &lt;body&gt;<br />
                                                                                    &lt;span <span class="style1">class=&quot;headlines&quot;</span>&gt;Welcome&lt;/span&gt;&lt;br&gt;<br />
                                                                                    <br />
                                                                                    &lt;div <span class="style1">class=&quot;sublines&quot;</span>&gt;<br />
                                                                                    This is an example page using CSS.&lt;br&gt;<br />
                                                                                    The example is really simple,&lt;br&gt;<br />
                                                                                    and doesn't even look good,&lt;br&gt;<br />
                                                                                    but it shows the technique.<br />
                                                                                    &lt;/div&gt;<br />
                                                                                    <br />
                                                                                    &lt;table border=&quot;2&quot;&gt;&lt;tr&gt;&lt;td <span class="style1">class=&quot;sublines&quot;</span>&gt;<br />
                                                                                    As you can see:&lt;br&gt;<br />
                                                                                    The styles even work on tables.<br />
                                                                                    &lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;<br />
                                                                                    <br />
                                                                                    &lt;hr&gt;<br />
                                                                                    <br />
                                                                                    &lt;div <span class="style1">class=&quot;infotext&quot;</span>&gt;<br />
                                                                                    Example from EchoEcho.Com.<br />
                                                                                    &lt;/div&gt;<br />
                                                                                    <br />
                                                                                    &lt;hr&gt;<br />
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
                                                            <span class="fancyfirst">I</span>n the above example, although we used the 
                                                            sublines style twice, we only had to define it once: in the <span class="note">
                                                            <span class="style4">&lt;head&gt;</span></span>section.<br />
                                                            <br />
                                                            <span class="fancyfirst">B</span>y defining styles for entire pages, you will 
                                                            gain the freedom to easily change the styles even after the entire page has been 
                                                            made.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>his is an obvious advantage for you as a 
                                                            designer. But the advantage is on the visitors side as well.<br />
                                                            <br />
                                                            <span class="fancyfirst">S</span>ince the styles are only defined in one place, 
                                                            the page size will be smaller, and thus faster to load.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>here is a way to emphasize these advantages 
                                                            even more: using external CSS styles that work for entire sites.<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            </span></p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            ENTIRE SITES</div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">C</span>SS can be defined for entire 
                                                            sites by simply writing the CSS definitions in a plain text file that is 
                                                            referred to from each of the pages in the site.<br />
                                                            <br />
                                                            <span class="fancyfirst">R</span>ather than writing the entire CSS definition on 
                                                            each page, as in the previous examples, you can write it to a text file that is 
                                                            only loaded on the first page that a visitor sees at your site.
                                                            <br />
                                                            When the visitor jumps to other pages, the CSS text file will be cached and thus 
                                                            doesn't have to be transferred via the internet for subsequent pages.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>his means that your pages will load faster 
                                                            while at the same time you will have extreme flexibility to change the style for 
                                                            your entire site even after it has been made.<br />
                                                            <br />
                                                            <span class="fancyfirst">L</span>ook at this example:<br />
                                                            <br />
                                                            File: <span class="note">example.html</span><br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="style5">
                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                    &lt;head&gt;<br />
                                                                                    &lt;title&gt;MY CSS PAGE&lt;/title&gt;<br />
                                                                                    <span class="style1">&lt;link rel=stylesheet href=&quot;whatever.css&quot; type=&quot;text/css&quot;&gt;</span><br />
                                                                                    &lt;/head&gt;<br />
                                                                                    &lt;body&gt;<br />
                                                                                    &lt;span <span class="style1">class=&quot;headlines&quot;</span>&gt;Welcome&lt;/span&gt;&lt;br&gt;<br />
                                                                                    <br />
                                                                                    &lt;div <span class="style1">class=&quot;sublines&quot;</span>&gt;<br />
                                                                                    This is an example of a page using CSS.&lt;br&gt;<br />
                                                                                    The example is really simple,&lt;br&gt;<br />
                                                                                    and doesn't even look good,&lt;br&gt;<br />
                                                                                    but it shows the technique.<br />
                                                                                    &lt;/div&gt;<br />
                                                                                    <br />
                                                                                    &lt;table border=&quot;2&quot;&gt;&lt;tr&gt;&lt;td <span class="style1">class=&quot;sublines&quot;</span>&gt;<br />
                                                                                    As you can see:&lt;br&gt;<br />
                                                                                    The styles even work on tables.<br />
                                                                                    &lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;<br />
                                                                                    <br />
                                                                                    &lt;hr&gt;<br />
                                                                                    <br />
                                                                                    &lt;div <span class="style1">class=&quot;infotext&quot;</span>&gt;Example from 
                                                                                    EchoEcho.Com.&lt;/div&gt;<br />
                                                                                    <br />
                                                                                    &lt;hr&gt;<br />
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
                                                            <span class="fancyfirst">T</span>he above example is the exact same as we used 
                                                            for CSS defined for entire pages, with one important exception:<br />
                                                            There is no style definition on the page. Instead we added a reference to an 
                                                            external style sheet:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="style5">
                                                                                    <!-- perl mysql php web host -->&lt;link rel=stylesheet href=&quot;whatever.css&quot; 
                                                                                    type=&quot;text/css&quot;&gt;<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>his means that the browser will look for a file 
                                                            called whatever.css and insert it at the place where the reference was found in 
                                                            the
                                                            <br />
                                                            html document.<br />
                                                            <br />
                                                            <span class="fancyfirst">S</span>o in order to complete our example we need to 
                                                            have a file called whatever.css that looks like this:<br />
                                                            <br />
                                                            File: <span class="note">whatever.css</span><br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="style5">
                                                                                    <!-- perl mysql php web host -->.headlines, .sublines, infotext 
                                                                                    {font-face:arial; color:black; background:yellow; font-weight:bold;}<br />
                                                                                    .headlines {font-size:14pt;}<br />
                                                                                    .sublines {font-size:12pt;}<br />
                                                                                    .infotext {font-size: 10pt;}<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">N</span>ow if you just add the line <span class="note">
                                                            <span class="style4">&lt;link rel=stylesheet href=&quot;whatever.css&quot; type=&quot;text/css&quot;&gt;</span></span> 
                                                            to the <span class="note"><span class="style4">&lt;head&gt;</span></span> of all your 
                                                            pages, then the one style definition will be in effect for your entire site.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>magine the power and flexibility this gives you 
                                                            to make changes to the layout even after the site is done.<br />
                                                            But also realize how using an external style sheet will guarantee that all pages 
                                                            are following the same thread.<br />
                                                            There won't be single pages that you forgot to update when you decided to change 
                                                            the style for your headers.<br />
                                                            <br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>t this point of the tutorial you should know:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="style6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>1: how to define 
                                                                                    styles for tags, classes and objects with ID's.<br />
                                                                                    2: how to group styles and make them context dependent
                                                                                    <br />
                                                                                    3: how to add styles to single tags, single pages and entire sites<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>ll we need now is a walkthrough of the various 
                                                            style attributes that can be assigned.<br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>e will divide them into three categories:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450">
                                                                            <tr>
                                                                                <td class="style6">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>1: Inline 
                                                                                    attributes. (Works on tags like: &lt;SPAN&gt;, &lt;B&gt; and &lt;I&gt;).<br />
                                                                                    2: Block attributes. (Works on block tags: &lt;DIV&gt;, &lt;TD&gt; and &lt;P&gt;).<br />
                                                                                    3: Link attributes. (Works on links and use a special syntax).<br />
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
                                                        </p>
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
                                                PostBackUrl="~/CSS_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/CSS_L4.aspx">Next &gt;&gt;</asp:LinkButton>
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
