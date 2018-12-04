<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="HTML_L3.aspx.cs" Inherits="_Default" %>

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
  href="Signup.aspx">Signup</A> <SPAN class=author>to add comment, &amp; 
          to Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/HTML_L3.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;<img alt="" src="images/html.jpg" 
                    style="width: 204px; height: 86px" />&nbsp;<br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L2.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/HTML_Contents.aspx">Back to HTML Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="HTML_L4.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 3 - HTML Lists</H2>
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
                                                                            <span class="text"><span class="fancyfirst">T</span>o create a bulleted list you 
                                                                            need to add a <span class="style2">&lt;ul&gt;</span> and a <span class="style2">&lt;/ul&gt;</span> 
                                                                            tag at the beginning and the end of the list.
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">N</span>umbered lists have <span class="style2">&lt;ol&gt;</span> 
                                                                            tags instead of <span class="style2">&lt;ul&gt;</span> tags.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>o separate single list items use
                                                                            <span class="style2">&lt;li&gt;</span> and <span class="style2">&lt;/li&gt;</span> tags.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>here are special settings that you can use to 
                                                                            customize the lists on your page.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">O</span>n the following two pages you can learn in 
                                                                            detail about bulleted and numbered lists.<br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline">
                                                                                BULLETED LISTS</div>
                                                                            </span>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <BR>
                                                        </p>
                                                        <span class="text"><span class="fancyfirst">T</span>his page shows how to make 
                                                        different kinds of bulleted lists.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou have the following bullet options:<br />
                                                        <ul>
                                                            <li><span class="style4">disc</span><br />
                                                            </li>
                                                            <li><span class="style4">circle</span><br />
                                                            </li>
                                                            <li><span class="style4">square</span><br />
                                                            </li>
                                                        </ul>
                                                        <span class="fancyfirst">L</span>ook at these examples to see the detailed 
                                                        syntax.<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table8">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>HTML-CODE</td>
                                                                            <td class="table8">
                                                                                EXPLANATION / EXAMPLE<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <span class="style1">&lt;ul&gt;</span><br />
                                                                                &lt;li&gt;text&lt;/li&gt;<br />
                                                                                &lt;li&gt;text&lt;/li&gt;<br />
                                                                                &lt;li&gt;text&lt;/li&gt;<br />
                                                                                <span class="style1">&lt;/ul&gt;</span><br />
                                                                            </td>
                                                                            <td class="table5">
                                                                                Makes a bulleted list using the default bullet type:<br />
                                                                                <ul>
                                                                                    <li>text </li>
                                                                                    <li>text </li>
                                                                                    <li>text</li>
                                                                                </ul>
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;ul <span class="style1">type=&quot;disc&quot;</span>&gt;<br />
                                                                            </td>
                                                                            <td class="table5">
                                                                                Starts a bulleted list using discs as bullets:<br />
                                                                                <ul type="disc">
                                                                                    <li>This is one line </li>
                                                                                    <li>This is another line </li>
                                                                                    <li>And this is the final line</li>
                                                                                </ul>
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;ul <span class="style1">type=&quot;circle&quot;</span>&gt;<br />
                                                                            </td>
                                                                            <td class="table5">
                                                                                Starts a bulleted list using circles as bullets:
                                                                                <br />
                                                                                <ul type="circle">
                                                                                    <li>This is one line </li>
                                                                                    <li>This is another line </li>
                                                                                    <li>And this is the final line</li>
                                                                                </ul>
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;ul <span class="style1">type=&quot;square&quot;</span>&gt;<br />
                                                                            </td>
                                                                            <td class="table5">
                                                                                Starts a bulleted list using squares as bullets:
                                                                                <br />
                                                                                <ul type="square">
                                                                                    <li>This is one line </li>
                                                                                    <li>This is another line </li>
                                                                                    <li>And this is the final line</li>
                                                                                </ul>
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
                                                        <span class="fancyfirst">O</span>n the next page you can learn how to create and 
                                                        customize numbered lists....<br />
                                                        <br />
                                                        </span>
                                                        <div align="center" class="headline">
                                                            NUMBERED LISTS</div>
                                                        <span class="text"><span class="fancyfirst">T</span>his page shows how to make 
                                                        different kinds of numbered lists.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou have the following number options:<br />
                                                        <ul>
                                                            <li><span class="style4">Plain numbers</span><br />
                                                            </li>
                                                            <li><span class="style4">Capital Letters</span><br />
                                                            </li>
                                                            <li><span class="style4">Small Letters</span><br />
                                                            </li>
                                                            <li><span class="style4">Capital Roman Numbers</span><br />
                                                            </li>
                                                            <li><span class="style4">Small Roman Numbers</span><br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="fancyfirst">I</span>n addition to these options you can specify at 
                                                        which number the list should start. The default start value for numbered lists 
                                                        is at number one (or the letter A).<br />
                                                        <br />
                                                        <span class="fancyfirst">L</span>ook at these examples to see the detailed 
                                                        syntax.<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table8">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>HTML-CODE</td>
                                                                            <td class="table8">
                                                                                EXPLANATION / EXAMPLE<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <span class="style1">&lt;ol&gt;</span><br />
                                                                                &lt;li&gt;text&lt;/li&gt;<br />
                                                                                &lt;li&gt;text&lt;/li&gt;<br />
                                                                                &lt;li&gt;text&lt;/li&gt;<br />
                                                                                <span class="style1">&lt;/ol&gt;</span><br />
                                                                            </td>
                                                                            <td class="table5">
                                                                                Makes a numbered list using the default number type:<br />
                                                                                <ol>
                                                                                    <li>text </li>
                                                                                    <li>text </li>
                                                                                    <li>text</li>
                                                                                </ol>
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;ol <span class="style1">start=&quot;5&quot;</span>&gt;<br />
                                                                            </td>
                                                                            <td class="table5">
                                                                                Starts a numbered list, first # being 5.<br />
                                                                                <ol start="5">
                                                                                    <li>This is one line </li>
                                                                                    <li>This is another line </li>
                                                                                    <li>And this is the final line
                                                                                        <br />
                                                                                    </li>
                                                                                </ol>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;ol <span class="style1">type=&quot;A&quot;</span>&gt;<br />
                                                                            </td>
                                                                            <td class="table5">
                                                                                Starts a numbered list, using capital letters.<br />
                                                                                <ol type="A">
                                                                                    <li>This is one line </li>
                                                                                    <li>This is another line </li>
                                                                                    <li>And this is the final line
                                                                                        <br />
                                                                                    </li>
                                                                                </ol>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;ol <span class="style1">type=&quot;a&quot;</span>&gt;<br />
                                                                            </td>
                                                                            <td class="table5">
                                                                                Starts a numbered list, using small letters.<br />
                                                                                <ol type="a">
                                                                                    <li>This is one line </li>
                                                                                    <li>This is another line </li>
                                                                                    <li>And this is the final line
                                                                                        <br />
                                                                                    </li>
                                                                                </ol>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;ol <span class="style1">type=&quot;I&quot;</span>&gt;<br />
                                                                            </td>
                                                                            <td class="table5">
                                                                                Starts a numbered list, using capital roman numbers.<br />
                                                                                <ol type="I">
                                                                                    <li>This is one line </li>
                                                                                    <li>This is another line </li>
                                                                                    <li>And this is the final line
                                                                                        <br />
                                                                                    </li>
                                                                                </ol>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;ol <span class="style1">type=&quot;i&quot;</span>&gt;<br />
                                                                            </td>
                                                                            <td class="table5">
                                                                                Starts a numbered list, using small roman numbers.<br />
                                                                                <ol type="i">
                                                                                    <li>This is one line </li>
                                                                                    <li>This is another line </li>
                                                                                    <li>And this is the final line
                                                                                        <br />
                                                                                    </li>
                                                                                </ol>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;ol <span class="style1">type=&quot;1&quot;</span>&gt;<br />
                                                                            </td>
                                                                            <td class="table5">
                                                                                Starts a numbered list, using normal numbers.<br />
                                                                                <ol type="1">
                                                                                    <li>This is one line </li>
                                                                                    <li>This is another line </li>
                                                                                    <li>And this is the final line
                                                                                        <br />
                                                                                    </li>
                                                                                </ol>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;ol <span class="style1">type=&quot;I&quot; start=&quot;7&quot;</span>&gt;<br />
                                                                            </td>
                                                                            <td class="table5">
                                                                                An example of how type and start can be combined.<br />
                                                                                <ol start="7" type="I">
                                                                                    <li>This is one line </li>
                                                                                    <li>This is another line </li>
                                                                                    <li>And this is the final line
                                                                                        <br />
                                                                                    </li>
                                                                                </ol>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
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
                                                PostBackUrl="~/HTML_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L4.aspx">Next &gt;&gt;</asp:LinkButton>
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
