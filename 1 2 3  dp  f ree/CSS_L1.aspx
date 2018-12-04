<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="CSS_L1.aspx.cs" Inherits="_Default" %>



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
  href="Signup.aspx">Signup</A> to add comment, &amp; to Rate The Tutorials YOU Like!<SPAN class=author><br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/CSS_L1.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;<img alt="" src="images/CSS.JPG" style="width: 204px; height: 86px" />&nbsp;&nbsp;<br />
                &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/CSS_Contents.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/CSS_Contents.aspx">Back to CSS Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="CSS_L2.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 1 - CSS INTRODUCTION </H2>
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
                                                            <span class="text"><span class="fancyfirst">C</span>SS is an excellent addition 
                                                            to plain HTML.<br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>ith plain HTML you define the colors and sizes 
                                                            of text and tables throughout your pages. If you want to change a certain 
                                                            element you will therefore have to work your way through the document and change 
                                                            it.<br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>ith CSS you define the colors and sizes in 
                                                            &quot;styles&quot;. Then as you write your documents you refer to the styles. Therefore: 
                                                            if you change a certain style it will change the look of your entire site.<br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>nother big advantage is that CSS offers much 
                                                            more detailed attributes than plain HTML for defining the look and feel of your 
                                                            site.<br />
                                                            <br />
                                                            <span class="fancyfirst">F</span>inally, CSS can be written so the user will 
                                                            only need to download it once - in the external style sheet document. When 
                                                            surfing the rest of your site the CSS will be cached on the users computer, and 
                                                            therefore speed up the loading time.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he only reason not to use CSS in your design is 
                                                            not knowing how!<br />
                                                            </span>
                                                        </p>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">C</span>SS stands for Cascading 
                                                            Style Sheets. It is a way to divide the content from the layout on web pages.<br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">H</span>ow it works:</span><br />
                                                            <br />
                                                            A <span class="style4">style</span> is a definition of fonts, colors, etc.<br />
                                                            <br />
                                                            Each style has a unique name: a <span class="style4">selector</span>.<br />
                                                            <br />
                                                            The <span class="style4">selectors</span> and their <span class="style4">styles</span> 
                                                            are defined in one place.<br />
                                                            <br />
                                                            In your HTML contents you simply refer to the <span class="style4">selectors</span> 
                                                            whenever you want to activate a certain <span class="style4">style</span>.<br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">F</span>or example:</span><br />
                                                            <br />
                                                            Instead of defining fonts and colors each time you start a new table cell, you 
                                                            can define a style and then, simply refer to that style in your table cells.<br />
                                                            <br />
                                                            <span class="fancyfirst">C</span>ompare the following examples of a simple 
                                                            table:<br />
                                                            <br />
                                                            <span class="fancyfirst">C</span>lassic HTML</span></p>
                                                        <p>
                                                            <span class="text"><br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host -->&lt;table&gt;<br />
                                                                                    <br />
                                                                                    &lt;tr&gt;&lt;td bgcolor=&quot;#FFCC00&quot; align=&quot;left&quot;&gt;&lt;font face=&quot;arial&quot; size=&quot;2&quot; 
                                                                                    color=&quot;red&quot;&gt;&lt;b&gt;this is line 1&lt;/b&gt;&lt;/font&gt;&lt;/td&gt;&lt;/tr&gt;<br />
                                                                                    <br />
                                                                                    &lt;tr&gt;&lt;td bgcolor=&quot;#FFCC00&quot; align=&quot;left&quot;&gt;&lt;font face=&quot;arial&quot; size=&quot;2&quot; 
                                                                                    color=&quot;red&quot;&gt;&lt;b&gt;this is line 2&lt;/b&gt;&lt;/font&gt;&lt;/td&gt;&lt;/tr&gt;<br />
                                                                                    <br />
                                                                                    &lt;tr&gt;&lt;td bgcolor=&quot;#FFCC00&quot; align=&quot;left&quot;&gt;&lt;font face=&quot;arial&quot; size=&quot;2&quot; 
                                                                                    color=&quot;red&quot;&gt;&lt;b&gt;this is line 3&lt;/b&gt;&lt;/font&gt;&lt;/td&gt;&lt;/tr&gt;<br />
                                                                                    <br />
                                                                                    &lt;/table&gt;<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>ith CSS (assuming that a selector called 
                                                            subtext is defined)</span></p>
                                                        <p>
                                                            <span class="text"><br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host -->&lt;table&gt;<br />
                                                                                    &lt;tr&gt;&lt;td class=&quot;subtext&quot;&gt;this is line 1&lt;/td&gt;&lt;/tr&gt;<br />
                                                                                    &lt;tr&gt;&lt;td class=&quot;subtext&quot;&gt;this is line 2&lt;/td&gt;&lt;/tr&gt;<br />
                                                                                    &lt;tr&gt;&lt;td class=&quot;subtext&quot;&gt;this is line 3&lt;/td&gt;&lt;/tr&gt;<br />
                                                                                    &lt;/table&gt;<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>hile CSS lets you separate the layout from the 
                                                            content, it also lets you define the layout much more powerfully than you could 
                                                            with classic HTML.</span></p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="color: #800000; font-size: 24px; font-weight: bold">
                                                            ADVANTAGES<br />
                                                            <br />
                                                        </div>
                                                        <span class="text"><span class="fancyfirst">W</span>ith CSS, you will be able 
                                                        to:<br />
                                                        <br />
                                                        <span class="fancyfirst">-</span> <span class="style4">define the look of your 
                                                        pages in one place</span> rather than repeating yourself over and over again 
                                                        throughout your site. (Ever get tired of defining colors and fonts each time you 
                                                        start a new cell in a table? Those days are over with CSS!)<br />
                                                        <br />
                                                        <span class="fancyfirst">-</span> <span class="style4">easily change the look</span> 
                                                        of your pages even after they're created. Since the styles are defined in one 
                                                        place you can change the look of the entire site at once. (Ever get tired of 
                                                        replacing tags throughout your site when you want to change the look of a 
                                                        certain element? Those days are over with CSS!)<br />
                                                        <br />
                                                        <span class="fancyfirst">-</span> <span class="style4">define font sizes and 
                                                        similar attributes</span> with the same accuracy as you have with a word 
                                                        processor - not being limited to just the seven different font sizes defined in 
                                                        HTML.<br />
                                                        <br />
                                                        <span class="fancyfirst">-</span> <span class="style4">position the content</span> 
                                                        of your pages with pixel precision.<br />
                                                        <br />
                                                        <span class="fancyfirst">-</span> <span class="style4">redefine entire HTML tags</span>. 
                                                        Say for example, if you wanted the bold tag to be red using a special font - 
                                                        this can be done easily with CSS.<br />
                                                        <br />
                                                        <span class="fancyfirst">-</span> <span class="style4">define customized styles 
                                                        for links</span> - such as getting rid of the underline.<br />
                                                        <br />
                                                        <span class="fancyfirst">-</span> <span class="style4">define layers</span> that 
                                                        can be positioned on top of each other (often used for menus that pop up).<br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        Your pages will load faster, since they aren't filled with tags that define the 
                                                        look. The style definitions are kept in a single CSS document that is only 
                                                        loaded once when a visitor enters your site.<br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        The one disadvantage is:
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">-</span> <span class="style4">these will only work on 
                                                        version 4 browsers or newer</span>. However, more than 95% of all browsers live 
                                                        up to that.<br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="color: #800000; font-size: 24px; font-weight: bold">
                                                            USING THIS TUTORIAL<br />
                                                        </div>
                                                        </span>
                                                        <p>
                                                            &nbsp;</p>
                                                        <span class="text"><span class="fancyfirst">T</span>his tutorial has been laid 
                                                        out so that it can be used both as a future reference and as an ongoing tutorial 
                                                        starting at page 1.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he tutorial has been divided into 6 logical 
                                                        sections.<br />
                                                        <ul>
                                                            <li><span class="note">Explain the different types of selectors.</span><br />
                                                                <br />
                                                            </li>
                                                            <li><span class="note">Practical uses of selectors, easy ways to define styles, etc.</span><br />
                                                                <br />
                                                            </li>
                                                            <li><span class="note">How to define CSS at different levels: Tags, Pages and Sites.</span><br />
                                                                <br />
                                                            </li>
                                                            <li><span class="note">A listing of the attributes that can be set for inline tags, 
                                                                block tags and links.</span><br />
                                                                <br />
                                                            </li>
                                                            <li><span class="note">How to add layers to your pages.</span><br />
                                                                <br />
                                                            </li>
                                                            <li><span class="note">Problems related to cross browser compatibility.</span><br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="fancyfirst">A</span>nd that is all you need to know about CSS to 
                                                        become an expert!<br />
                                                        <br />
                                                        Proceed to start learning about selectors...<br />
                                                        <br />
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

                                                        <br />
                                                        <br />
                                                        </span>
                                                        <BLOCKQUOTE>
                                                        </BLOCKQUOTE>
                                                    </DIV>


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
                                                PostBackUrl="~/CSS_Contents.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/CSS_L2.aspx">Next &gt;&gt;</asp:LinkButton>
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
