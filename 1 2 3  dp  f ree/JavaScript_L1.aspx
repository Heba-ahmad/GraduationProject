<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="JavaScript_L1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>JavaScript Tutorials</TITLE>
<META content="text/html; charset=windows-1256" http-equiv=Content-Type>
<META name=Description 
content="Lesson 1 on the VB IDE, the environment, creating a Project, creating a form">
<META name=Keywords 
content="VB 6, IT training, course, application, computer programming, file processing, database">
<META name=Distribution content=Global>
<META name=Rating content=General><LINK rel=StyleSheet type=text/css 
href="images\LessonsImages\JAVASCRIPTLessons\newstyles2.css">
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
  href="Signup.aspx">Signup</A>                                
                                                    <SPAN class=author>to add comment, &amp; 
          to Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/JavaScript_L1.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;<img alt="" src="images/JAVASCRIPT.PNG" 
                    style="width: 204px; height: 87px" /><br />
                &nbsp;
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/JavaScript_Contents.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/JavaScript_Contents.aspx">Back to JavaScript Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="JavaScript_L2.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 1 - JavaScript Basics </H2>
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
                                                        <span class="text"><span class="fancyfirst">J</span>avascript is a scripting 
                                                        language that will allow you to add real programming to your webpages.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can create small application type processes 
                                                        with javascript, like a calculator or a primitive game of some sort.<br />
                                                        <br />
                                                        <span class="fancyfirst">H</span>owever, there are more serious uses for 
                                                        javascript:<br />
                                                        <br />
                                                        <ul>
                                                            <li><span class="style2">Browser Detection</span><br />
                                                                Detecting the browser used by a visitor at your page. Depending on the browser, 
                                                                another page specifically designed for that browser can then be loaded.
                                                                <br />
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">Cookies </span>
                                                                <br />
                                                                Storing information on the visitor's computer, then retrieving this information 
                                                                automatically next time the user visits your page. This technique is called 
                                                                &quot;cookies&quot;.
                                                                <br />
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">Control Browsers</span>
                                                                <br />
                                                                Opening pages in customized windows, where you specify if the browser's buttons, 
                                                                menu line, status line or whatever should be present.
                                                                <br />
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">Validate Forms </span>
                                                                <br />
                                                                Validating inputs to fields before submitting a form.<br />
                                                                An example would be validating the entered email address to see if it has an @ 
                                                                in it, since if not, it's not a valid address.
                                                                <br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>efore you start out with more complex 
                                                        javascripts you should understand the basics.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his tutorial covers all the core things you 
                                                        need to know before you can build and customize your own cool scripts.<br />
                                                        </span>
                                                        <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            WHERE TO PLACE IT</div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">S</span>ince javascript isn't HTML, 
                                                            you will need to let the browser know in advance when you enter javascript to an 
                                                            HTML page. This is done using the <span class="style2">&lt;script&gt;</span> tag.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he browser will use the <span class="style2">
                                                            &lt;script&gt; type=&quot;text/javascript&quot;&gt;</span> and <span class="style2">&lt;/script&gt;</span> 
                                                            to tell where javascript starts and ends.<br />
                                                            <br />
                                                            <span class="fancyfirst">C</span>onsider this example:<br />
                                                            <br />
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
                                                                                    &lt;title&gt;My Javascript Page&lt;/title&gt;<br />
                                                                                    &lt;/head&gt;<br />
                                                                                    <br />
                                                                                    &lt;body&gt;<br />
                                                                                    <span class="style1">&lt;script type=&quot;text/javascript&quot;&gt;<br />
                                                                                    alert(&quot;Welcome to my world!!!&quot;);<br />
                                                                                    &lt;/script&gt;</span><br />
                                                                                    &lt;/body&gt;<br />
                                                                                    &lt;/html&gt;
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
                                                            <span class="fancyfirst">T</span>he word <span class="style4">alert</span> is a 
                                                            standard javascript command that will cause an alert box to pop up on the 
                                                            screen. The visitor will need to click the &quot;OK&quot; button in the alert box to 
                                                            proceed.
                                                            <br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">B</span>y entering the alert command between the
                                                            <br />
                                                            <span class="style2">&lt;script type=&quot;text/javascript&quot;&gt;</span> and
                                                            <span class="style2">&lt;/script&gt;</span> tags, the browser will recognize it as a 
                                                            javascript command.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>f we had not entered the <span class="style2">
                                                            &lt;script&gt;</span> tags, the browser would simply recognize it as pure text, and 
                                                            just write it on the screen.<br />
                                                            <br />
                                                            <span class="fancyfirst">Y</span>ou can enter javascript in both the
                                                            <span class="style2">&lt;head&gt;</span> and <span class="style2">&lt;body&gt;</span> 
                                                            sections of the document.<br />
                                                            In general however, it is advisable to keep as much as possible in the
                                                            <span class="style2">&lt;head&gt;</span> section.<br />
                                                            </span></p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            THE FIRST SCRIPT<br />
                                                        </div>
                                                        <span class="text"><span class="fancyfirst">K</span>nowing that javascript needs 
                                                        to be entered between <span class="style2">&lt;script&gt;</span> tags, is a start. But 
                                                        there are a few other things you need to know before writing your first 
                                                        javascript:<br />
                                                        <ul>
                                                            <li><span class="style2">Javascript lines end with a semicolon.</span>
                                                                <br />
                                                                You may have noticed from the example on the previous page that javascript lines 
                                                                end with a semicolon.
                                                                <br />
                                                                You can easily put all your javascript on a single line without destroying the 
                                                                performance of it.
                                                                <br />
                                                                However, you would destroy the overview of your script so it is not advisable.<br />
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">Always put the text within &quot; &quot;.</span><br />
                                                                When entering text to be handled by javascript, you should always put the text 
                                                                within &quot; &quot;.<br />
                                                                If you forget to enclose your text in &quot; &quot;, javascript will interpret your text 
                                                                as being variables rather than text.
                                                                <br />
                                                                In the next section you will learn why this would cause an error to your script.<br />
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">Capital letters are different from lowercase letters.</span><br />
                                                                You should always remember that capital letters are different from lowercase 
                                                                letters.
                                                                <br />
                                                                This means that when you write commands in javascript, you need to type capital 
                                                                letters in the correct places, and nowhere else.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="fancyfirst">I</span>ncorrect capitalization is probably the most 
                                                        common source of error for javascript programmers on all levels!!<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">N</span>ow consider this example:<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>nstead of having javascript write something in 
                                                        a popup box we could have it write directly into the document.
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
                                                                                <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                &lt;head&gt;<br />
                                                                                &lt;title&gt;My Javascript Page&lt;/title&gt;<br />
                                                                                &lt;/head&gt;<br />
                                                                                <br />
                                                                                &lt;body&gt;<br />
                                                                                <span class="style1">&lt;script&gt;<br />
                                                                                document.write(&quot;Welcome to my world!!!&quot;);<br />
                                                                                &lt;/script&gt;</span><br />
                                                                                &lt;/body&gt;<br />
                                                                                &lt;/html&gt;
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
                                                        <span class="fancyfirst">T</span>he <span class="note"><span class="style4">
                                                        document.write</span></span> is a javascript command telling the browser that 
                                                        what follows within the parentheses is to be written into the document.<br />
                                                        <br />
                                                        <span class="note"><span class="fancyfirst">N</span>ote: When entering text in 
                                                        javascript you need to include it in &quot; &quot;.</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he script in the example would produce this 
                                                        output on
                                                        <br />
                                                        your page:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table5">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>Welcome to my 
                                                                                world!!!<br />
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
                                                        <span class="fancyfirst">C</span>onsider this example to learn where javascript 
                                                        writes the text:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1" style="background-color: #FFFFFF">
                                                                                <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                &lt;head&gt;<br />
                                                                                &lt;title&gt;My Javascript Page&lt;/title&gt;<br />
                                                                                &lt;/head&gt;<br />
                                                                                <br />
                                                                                &lt;body&gt;<br />
                                                                                Hello!!!&lt;br&gt;<br />
                                                                                <span class="style1">&lt;script&gt;<br />
                                                                                document.write(&quot;Welcome to my world!!!&lt;br&gt;&quot;);<br />
                                                                                &lt;/script&gt;</span><br />
                                                                                Enjoy your stay...&lt;br&gt;<br />
                                                                                &lt;/body&gt;<br />
                                                                                &lt;/html&gt;
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
                                                        <span class="fancyfirst">T</span>he output from this example would look like 
                                                        this:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table5">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>Hello!!!<br />
                                                                                Welcome to my world!!!<br />
                                                                                Enjoy your stay...<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>s you can see, javascript simply writes the 
                                                        text to where the script is placed within the HTML codes.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>n interesting aspect is that you can write all 
                                                        kinds of HTML tags to webpages with the <span class="note"><span class="style4">
                                                        document.write</span></span> method.<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>or instance, if you wanted to make a long table 
                                                        that compared Fahrenheit and Celsius, instead of actually typing all the values 
                                                        into the table, you could have javascript calculate the values and write the 
                                                        table to the document.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>n example of a javascript generated table can 
                                                        be seen on the page explaining the
                                                        <a href="http://www.echoecho.com/htmlhexcolors07.htm"><span class="link">
                                                        hexadecimal colorsytem</span></a>.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>n that page, there are 15 tables with 25 
                                                        columns in each.
                                                        <br />
                                                        Each cell shows different mixtures of the basic colors red, green and blue.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>o set up these tables in HTML would demand 
                                                        almost an entire days work. Using javascript for the same purpose took less than 
                                                        15 minutes!<br />
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                            <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            CAPITAL LETTERS<br />
                                                        </div>
                                                        </span>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">I</span>t is extremely important to 
                                                            be aware that javascript makes a sharp distinction between capital and lowercase 
                                                            letters.<br />
                                                            <br />
                                                            <span class="fancyfirst">J</span>avascript does not consider a variable named
                                                            <span class="note"><span class="style4">myvalue</span></span> to be the same as 
                                                            a variable named <span class="note"><span class="style4">MYVALUE</span></span>.<br />
                                                            <br />
                                                            <span class="fancyfirst">C</span>onsider these examples:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>Example 1</td>
                                                                                <td class="table8">
                                                                                    Example 2
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    &lt;html&gt;<br />
                                                                                    &lt;head&gt;<br />
                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                    &lt;/head&gt;<br />
                                                                                    &lt;body&gt;<br />
                                                                                    &lt;script&gt;<br />
                                                                                    <span class="style1">myvalue=2;<br />
                                                                                    myvalue=5;<br />
                                                                                    result=myvalue+myvalue;</span><br />
                                                                                    document.write(result);<br />
                                                                                    &lt;/script&gt;<br />
                                                                                    &lt;/body&gt;<br />
                                                                                    &lt;/html&gt;<br />
                                                                                </td>
                                                                                <td class="table1">
                                                                                    &lt;html&gt;<br />
                                                                                    &lt;head&gt;<br />
                                                                                    &lt;title&gt;My Page&lt;/title&gt;<br />
                                                                                    &lt;/head&gt;<br />
                                                                                    &lt;body&gt;<br />
                                                                                    &lt;script&gt;<br />
                                                                                    <span class="style1">myvalue=2;<br />
                                                                                    MyValue=5;<br />
                                                                                    result=myvalue+MyValue;</span><br />
                                                                                    document.write(result);<br />
                                                                                    &lt;/script&gt;<br />
                                                                                    &lt;/body&gt;<br />
                                                                                    &lt;/html&gt;
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
                                                            <span class="fancyfirst">T</span>he output of example 1 would be 10 (5+5).<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he output of example 2 would be 7 (2+5).<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he best advice is to use the same syntax on all 
                                                            variables.<br />
                                                            <br />
                                                            <span class="fancyfirst">E</span>ither write all variables in small letters, 
                                                            start with one capital letter or write all variables in capitals.<br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>hich syntax you chose is not important
                                                            <br />
                                                            - as long as you chose just one!<br />
                                                            </span>
                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                        </p>
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            POP UP BOXES<br />
                                                        </div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">I</span>t is possible to make three 
                                                            different kinds of popup windows.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>ry clicking the buttons below to see the 
                                                            differences:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#aaaabb" border="1">
                                                                <tr>
                                                                    <td bgcolor="#c0c0c0">
                                                                        <br />
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;<input name="B1" onclick="alert('This is an alert box!')" type="button" 
                                                                            value="alert box" />&nbsp;&nbsp;
                                                                        <input name="B2" 
                                                                            onclick="confirm('Confirm boxes offer the user a choice of clicking OK or Cancel')" 
                                                                            type="button" value="confirm box" />&nbsp;&nbsp;
                                                                        <input name="B3" 
                                                                            onclick="prompt('Prompt boxes allow the user to enter text or a value!','Enter your text here')" 
                                                                            type="button" value="prompt box" />&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                                                        &nbsp;</td>
                                                                </tr>
                                                            </table>
                                                            <br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">A</span>LERT BOX</span><br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he syntax for an alert box is:
                                                            <span class="note"><span class="style4">alert(&quot;</span>yourtext<span 
                                                                class="style4">&quot;);</span></span><br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he user will need to click &quot;OK&quot; to proceed.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>ypical use is when you want to make sure 
                                                            information comes through to the user.<br />
                                                            <br />
                                                            <span class="fancyfirst">E</span>xamples could be warnings of any kind.<br />
                                                            (Typical examples are &quot;Adult Content&quot;, or technical matters like &quot;This site 
                                                            requires Shockwave Flash plug-in&quot;).<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">C</span>ONFIRM BOX:</span><br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he syntax for a confirm box is:
                                                            <span class="note"><span class="style4">confirm(&quot;</span>yourtext<span 
                                                                class="style4">&quot;);</span></span><br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he user needs to click either &quot;OK&quot; or &quot;Cancel&quot; 
                                                            to proceed.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>ypical use is when you want the user to verify 
                                                            or accept something.<br />
                                                            <br />
                                                            <span class="fancyfirst">E</span>xamples could be age verification like &quot;Confirm 
                                                            that you are at least 57 years old&quot; or technical matters like &quot;Do you have a 
                                                            plug-in for Shockwave Flash?&quot;<br />
                                                            <br />
                                                            <span class="fancyfirst">-</span> If the user clicks &quot;OK&quot;, the box returns the 
                                                            value <span class="note"><span class="style4">true</span></span>.<br />
                                                            - If the user clicks &quot;Cancel&quot;, the box returns the value <span class="note">
                                                            <span class="style4">false</span></span>.<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host --><span class="style1">if (confirm(&quot;</span>Do you 
                                                                                    agree<span class="style1">&quot;)) {alert(&quot;</span>You agree<span class="style1">&quot;)}<br />
                                                                                    else{alert (&quot;</span>You do not agree<span class="style1">&quot;)};</span><br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="note"><span class="fancyfirst">N</span>ote: The
                                                            <a href="http://www.echoecho.com/javascript6.htm"><span class="link">if 
                                                            statement</span></a> is explained later in this tutorial.</span><br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="style4"><span class="fancyfirst">P</span>ROMPT BOX:</span><br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he prompt box syntax is: <span class="note">
                                                            <span class="style4">prompt(&quot;</span>yourtext<span class="style4">&quot;,&quot;</span>defaultvalue<span 
                                                                class="style4">&quot;);</span></span><br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he user must click either &quot;OK&quot; or &quot;Cancel&quot; to 
                                                            proceed after entering the text.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>ypical use is when the user should input a 
                                                            value before entering the page.<br />
                                                            <br />
                                                            <span class="fancyfirst">E</span>xamples could be entering user's name to be 
                                                            stored in a cookie or entering a password or code of some kind.<br />
                                                            <br />
                                                            <span class="fancyfirst">-</span> If the user clicks &quot;OK&quot; the prompt box returns 
                                                            the entry.
                                                            <br />
                                                            - If the user clicks &quot;Cancel&quot; the prompt box returns <span class="note">
                                                            <span class="style4">null</span></span>.<br />
                                                            <br />
                                                            <span class="fancyfirst">S</span>ince you usually want to use the input from the 
                                                            prompt box for some purpose it is normal to store the input in a variable, as 
                                                            shown in this example:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host -->username=<span class="style1">prompt(&quot;</span>Please 
                                                                                    enter your name<span class="style1">&quot;,&quot;</span>Enter your name here<span 
                                                                                        class="style1">&quot;);</span>
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
            <DIV align=center><A 
            href="#top">Top</A></DIV></p>
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            VARIABLES<br />
                                                        </div>
                                                        <span class="text"><span class="fancyfirst">V</span>ariables can be compared to 
                                                        small boxes with names.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you were to store 5 pair of shoes, you might 
                                                        have a box for each pair. On each box you would write what is in it.<br />
                                                        <ul>
                                                            <li>The <span class="note">boxes</span> would be your <span class="note">variables</span>.<br />
                                                                - Places to store things.<br />
                                                                <br />
                                                            </li>
                                                            <li>The <span class="note">name on the boxes</span> would be the <span class="note">
                                                                variable names</span>.
                                                                <br />
                                                                - The ones you'd use when referring to each of the boxes.<br />
                                                                <br />
                                                            </li>
                                                            <li>And finally the <span class="note">shoes</span>, would be the <span class="note">
                                                                content of the variables</span>.<br />
                                                                - What is stored in the boxes.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="fancyfirst">A</span> variable is simply a place in the computer's 
                                                        memory to store information. All variables are referred to by the unique name 
                                                        you assigned to them.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>onsider this example:<br />
                                                        <br />
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
                                                                                &lt;title&gt;My Javascript Page&lt;/title&gt;<br />
                                                                                &lt;/head&gt;<br />
                                                                                <br />
                                                                                &lt;body&gt;<br />
                                                                                &lt;script&gt;<br />
                                                                                <span class="style1">myname=&quot;Henrik&quot;;<br />
                                                                                document.write(myname);</span><br />
                                                                                &lt;/script&gt;<br />
                                                                                &lt;/body&gt;<br />
                                                                                &lt;/html&gt;
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
                                                        <span class="fancyfirst">T</span>his example would write &quot;Henrik&quot; in the 
                                                        document.<br />
                                                        <br />
                                                        <span class="fancyfirst">N</span>ote that when you want text to be stored in a 
                                                        variable you need to put the text in &quot; &quot;.<br />
                                                        The reason is that javascript uses &quot; &quot; to tell the difference between text and 
                                                        variables.<br />
                                                        <br />
                                                        <span class="fancyfirst">L</span>ook at this example to see the importance of 
                                                        this.<br />
                                                        <br />
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
                                                                                &lt;title&gt;My Javascript Page&lt;/title&gt;<br />
                                                                                &lt;/head&gt;<br />
                                                                                <br />
                                                                                &lt;body&gt;<br />
                                                                                &lt;script&gt;<br />
                                                                                <span class="style1">Henrik=&quot;my first name&quot;;<br />
                                                                                myname=Henrik;<br />
                                                                                document.write(myname);</span><br />
                                                                                &lt;/script&gt;<br />
                                                                                &lt;/body&gt;<br />
                                                                                &lt;/html&gt;
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
                                                        <span class="fancyfirst">T</span>ry to predict the output of the example before 
                                                        reading on.<br />
                                                        <br />
                                                        <span class="fancyfirst">-</span> In the first line, the text &quot;my first name&quot; is 
                                                        stored in the <span class="note"><span class="style4">Henrik</span></span> 
                                                        variable.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">-</span> In the second line, the <span class="note">
                                                        <span class="style4">Henrik</span></span> variable is stored in the
                                                        <span class="note"><span class="style4">myname</span></span> variable.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">-</span> Finally in line 3, the <span class="note">
                                                        <span class="style4">myname</span></span> variable is written to the document.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he result is that &quot;my first name&quot; will be 
                                                        written on the page.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">A</span>SSIGNING VALUES TO 
                                                        VARIABLES</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he most common way to assign a value to a 
                                                        variable is using the equals sign.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>onsider these examples to see the different 
                                                        ways variables can be assigned to contain either values or text.
                                                        <br />
                                                        Note in particular how parentheses can be used to control how complex formulas 
                                                        are handled.<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table8">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>Example</td>
                                                                            <td class="table8">
                                                                                Resulting value
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                a=2;<br />
                                                                                <span class="style1">a=2; a++;</span><br />
                                                                                a=2; a--;<br />
                                                                                <span class="style1">a=2; b=3; c=a+b;</span><br />
                                                                                a=2; d=a+6;<br />
                                                                                <span class="style1">First=&quot;Henrik&quot;;</span><br />
                                                                                Last=&quot;Petersen&quot;;<br />
                                                                                <span class="style1">Full=First+&quot; &quot;+Last;</span><br />
                                                                                a=2*7;<br />
                                                                                <span class="style1">b=20/5;</span><br />
                                                                                c=(20/5)*2;<br />
                                                                                <span class="style1">d=20/(5*2);</span><br />
                                                                            </td>
                                                                            <td class="table5">
                                                                                a=2<br />
                                                                                <span class="style1">a=3 &nbsp;&nbsp;&nbsp;(2+1)</span><br />
                                                                                a=1 &nbsp;&nbsp;&nbsp;(2-1)<br />
                                                                                <span class="style1">c=5 &nbsp;&nbsp;&nbsp;(2+3)</span><br />
                                                                                d=8 &nbsp;&nbsp;&nbsp;(2+6)<br />
                                                                                <span class="style1">First=Henrik</span><br />
                                                                                Last=Petersen<br />
                                                                                <span class="style1">Full=Henrik Petersen</span><br />
                                                                                a=14 &nbsp;(2*7)<br />
                                                                                <span class="style1">b=4 &nbsp;&nbsp;&nbsp;(20/5)</span><br />
                                                                                c=8 &nbsp;&nbsp;&nbsp;(4*2)<br />
                                                                                <span class="style1">d=2 &nbsp;&nbsp;&nbsp;(20/10) </span>
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
                                                        <span class="style4"><span class="fancyfirst">A</span>RITHMETHIC OPERATORS</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he above table includes the so-called 
                                                        &quot;arithmethic operators&quot; <span class="note"><span class="style4">a++</span></span> 
                                                        and <span class="note"><span class="style4">a--</span></span>.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou could really live well without these, since 
                                                        what they do can be achieved by using the other operators available.<br />
                                                        <br />
                                                        <span class="fancyfirst">H</span>owever you will often see them used in scripts, 
                                                        and you might even be lazy enough to use them yourself, since it is faster to 
                                                        type <span class="note"><span class="style4">a++;</span></span> than it is to 
                                                        type <span class="note"><span class="style4">a=a+1;</span></span>.<br />
                                                        <br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="height: 277px; width: 450px; background-color: #FFFFFF;">
                                                                        <tr>
                                                                            <td class="table8">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>Operator</td>
                                                                            <td class="table8">
                                                                                Explanation</td>
                                                                            <td class="table8">
                                                                                Example
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                ++</td>
                                                                            <td class="table7">
                                                                                increment</td>
                                                                            <td class="table5">
                                                                                <span class="style1">a=5;<br />
                                                                                a++;</span><br />
                                                                                a would now equal 6
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                --</td>
                                                                            <td class="table7">
                                                                                decrement</td>
                                                                            <td class="table5">
                                                                                <span class="style1">a=5;<br />
                                                                                a--;</span><br />
                                                                                a would now equal 4
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                %</td>
                                                                            <td class="table7">
                                                                                returns modulus,<br />
                                                                                which is what is left when
                                                                                <br />
                                                                                two numbers are divided.</td>
                                                                            <td class="table5">
                                                                                <span class="style1">a=8 % 3;</span><br />
                                                                                a would now equal 2,<br />
                                                                                since 8 can be divided
                                                                                <br />
                                                                                by 3 two times leaving
                                                                                <br />
                                                                                a remainder of 2.<br />
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
                                                        <span class="style4"><span class="fancyfirst">C</span>OMPARING VARIABLES</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>here are several different ways to compare 
                                                        variables.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he simplest is comparing for equality, which is 
                                                        done using a double equals sign:<br />
                                                        <br />
                                                        <span class="note"><span class="style4">if (</span>a<span class="style4">==</span>b<span 
                                                            class="style4">) {alert(&quot;</span>a equals b<span class="style4">&quot;)};</span></span><br />
                                                        <br />
                                                        <span class="note"><span class="style4">if (</span>lastname<span class="style4">==</span>&quot;Petersen&quot;<span 
                                                            class="style4">) {alert(</span>&quot;Nice name!!!&quot;<span class="style4">)};</span></span><br />
                                                        <br />
                                                        <span class="note">Note: The <a href="http://www.echoecho.com/javascript6.htm">
                                                        <span class="link">if statement</span></a> is explained in the next section.</span><br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f you forget to use double equals signs when 
                                                        comparing variables for equality, and use a single equals sign instead, you will 
                                                        not compare the variables. What will happen is that the variable on the left 
                                                        side of the equals sign will be assigned the value of the variable to the right.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>n example of the error:<br />
                                                        <br />
                                                        <span class="note"><span class="style4">if (</span>lastname<span class="style4">=</span>&quot;Petersen&quot;<span 
                                                            class="style4">) {alert(</span>&quot;Nice name!!!&quot;<span class="style4">)};</span></span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his is a very common bug that will totally ruin 
                                                        the script.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his table contains the different comparing 
                                                        operators:
                                                        <br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="height: 452px; width: 450px; background-color: #FFFFFF;">
                                                                        <tr>
                                                                            <td class="table8">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>Operator</td>
                                                                            <td class="table8">
                                                                                Explanation</td>
                                                                            <td class="table8">
                                                                                Example
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                ==</td>
                                                                            <td class="table7">
                                                                                equal to</td>
                                                                            <td class="table5">
                                                                                4==5 (false)<br />
                                                                                <span class="style4">5==5 (true)</span><br />
                                                                                5==4 (false)
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                !=</td>
                                                                            <td class="table7">
                                                                                not equal to</td>
                                                                            <td class="table5">
                                                                                <span class="style4">4!=5 (true)</span><br />
                                                                                5!=5 (false)<br />
                                                                                <span class="style4">5!=4 (true)</span><br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;</td>
                                                                            <td class="table7">
                                                                                less than</td>
                                                                            <td class="table5">
                                                                                <span class="style4">4&lt;5 (true)</span><br />
                                                                                5&lt;5 (false)<br />
                                                                                5&lt;4 (false)
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &gt;</td>
                                                                            <td class="table7">
                                                                                greater than</td>
                                                                            <td class="table5">
                                                                                4&gt;5 (false)<br />
                                                                                5&gt;5 (false)<br />
                                                                                <span class="style4">5&gt;4 (true)</span>
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;=</td>
                                                                            <td class="table7">
                                                                                less than or equal to</td>
                                                                            <td class="table5">
                                                                                <span class="style4">4&lt;=5 (true)</span><br />
                                                                                <span class="style4">5&lt;=5 (true)</span><br />
                                                                                5&lt;=4 (false)
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &gt;=</td>
                                                                            <td class="table7">
                                                                                greater than or equal to</td>
                                                                            <td class="table5">
                                                                                4&gt;=5 (false)<br />
                                                                                <span class="style4">5&gt;=5 (true)</span><br />
                                                                                <span class="style4">5&gt;=4 (true)</span>
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
                                                        <span class="fancyfirst">O</span>n the
                                                        <a href="http://www.echoecho.com/javascript7.htm"><span class="link">function 
                                                        page</span></a> you will learn more about global and local variables.<br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>n the
                                                        <a href="http://www.echoecho.com/javascript10.htm"><span class="link">array page</span></a> 
                                                        you will learn more about ways to work with large amounts of variables.<br />
                                                        </span>
                                                        <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            IF AND ELSE<br />
                                                            <br />
                                                        </div>
                                                        <span class="text"><span class="fancyfirst">S</span>ometimes javascript requires 
                                                        the ability to make distinctions between different possibilities.<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>or example, you might have a script that checks 
                                                        which browser the user arrives with. If it's MSIE, a page specifically designed 
                                                        for that browser should be loaded, if it's Netscape another page should be 
                                                        loaded.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he general syntax for if statements is:<br />
                                                        <br />
                                                        <span class="note"><span class="style4"><span class="fancyfirst">i</span>f (</span>condition<span 
                                                            class="style4">) {</span>action1<span class="style4">} else {</span>action2<span 
                                                            class="style4">};</span></span><br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>n example could be:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host --><span class="style1">if (</span>browser==&quot;MSIE&quot;<span 
                                                                                    class="style1">) {</span>alert(&quot;You are using MSIE&quot;)<span class="style1">}<br />
                                                                                else {</span>alert(&quot;You are using Netscape&quot;)<span class="style1">};</span>
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
                                                        <span class="fancyfirst">A</span>gain it is important to note that
                                                        <span class="note"><span class="style4">if</span></span> is written as &quot;<span 
                                                            class="note"><span class="style4">if</span></span>&quot;.
                                                        <br />
                                                        Using the capital &quot;IF&quot; would cause an error.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>lso note that when comparing variables you will 
                                                        need to have two equals signs next to each other (==).<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f we wrote <span class="note">
                                                        <span class="style4">browser=&quot;MSIE&quot;</span></span> we would actually store &quot;MSIE&quot; 
                                                        in the variable called <span class="note"><span class="style4">browser</span></span>.<br />
                                                        <br />
                                                        <span class="fancyfirst">W</span>hen you write <span class="note">
                                                        <span class="style4">browser==&quot;MSIE&quot;</span></span> javascript knows that you 
                                                        want it to compare rather than assign a value.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he
                                                        <a href="http://www.echoecho.com/javascript7.htm"><span class="link">next 
                                                        section</span></a> explains the different operators (<span class="note"><span 
                                                            class="style4">=</span></span>, <span class="note"><span class="style4">&lt;</span></span>,
                                                        <span class="note"><span class="style4">&gt;</span></span> etc.).<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">M</span>ore complex if statements can be made by simply 
                                                        entering new if statements in the <span class="note"><span class="style4">else</span></span> 
                                                        part:<br />
                                                        <br />
                                                        <span class="note"><span class="style4">if (</span>condition<span 
                                                            class="style4">) {</span>action1<span class="style4">}<br />
                                                        else {if (</span>condition<span class="style4">) {</span>action2<span 
                                                            class="style4">} else {</span>action3<span class="style4">};};</span></span><br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>n example:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host --><span class="style1">if (</span>browser==&quot;MSIE&quot;<span 
                                                                                    class="style1">) {</span>alert(&quot;You are using MSIE&quot;<span class="style1">)}<br />
                                                                                else {if (</span>browser==&quot;Netscape&quot;<span class="style1">) {</span>alert(&quot;You 
                                                                                are using Netscape&quot;)<span class="style1">}<br />
                                                                                else {</span>alert(&quot;You are using an unknown browser&quot;)<span class="style1">};};</span><br />
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
                                                        <span class="style4"><span class="fancyfirst">A</span>ND, OR &amp; NOT</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>o further enhance your if statements you can 
                                                        use the so-called logical operators.<br />
                                                        <br />
                                                        <span class="style2"><span class="fancyfirst">A</span>nd</span> is written as
                                                        <span class="note"><span class="style4">&amp;&amp;</span></span> and is used when you 
                                                        want to check if more than one condition is true.<br />
                                                        <br />
                                                        <span class="note"><span class="fancyfirst">E</span>x: If the basket contains 
                                                        egg <span class="style4">and</span> the basket contains bacon, we can have egg 
                                                        and bacon.</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he syntax is: <span class="note">
                                                        <span class="style4">if (</span>condition <span class="style4">&amp;&amp;</span> 
                                                        condition<span class="style4">) {</span>action<span class="style4">}</span></span><br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->if (hour==12 <span class="style1">&amp;&amp;</span> 
                                                                                minute==0) {alert(&quot;it's noon&quot;)};
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
                                                        <span class="style2"><span class="fancyfirst">O</span>r</span> is written as
                                                        <span class="note"><span class="style4">||</span></span> and is used when more 
                                                        than a one condition should result in the check being true. (<span class="note"><span 
                                                            class="style4">||</span></span> is achieved by using the shift key combined 
                                                        with the \ key)<br />
                                                        <br />
                                                        <span class="note"><span class="fancyfirst">E</span>x: If the basket contains 
                                                        milk <span class="style4">or</span> the basket contains water, we can have 
                                                        something to drink.</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he syntax is: <span class="note">
                                                        <span class="style4">if (</span>condition <span class="style4">||</span> 
                                                        condition<span class="style4">) {</span>action<span class="style4">}</span></span><br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->if (hour==11 <span class="style1">||</span> 
                                                                                hour==10) {alert(&quot;it's less than 2 hours till noon&quot;)};
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
                                                        <span class="style2"><span class="fancyfirst">N</span>ot</span> is written as
                                                        <span class="note"><span class="style4">!</span></span> and is used to invert 
                                                        the result.<br />
                                                        <br />
                                                        <span class="note"><span class="fancyfirst">E</span>x: If <span class="style4">
                                                        not</span> the basket contains egg <span class="style4">or not</span> the basket 
                                                        contains bacon, we cant have egg and bacon.</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he syntax is: <span class="note">
                                                        <span class="style4">if (!(</span>condition<span class="style4">)) {</span>action<span 
                                                            class="style4">}</span></span><br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->if (<span class="style1">!</span>(hour==11)) 
                                                                                {alert(&quot;it's more than 1 hour till noon&quot;)};
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
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <p>
                                                            &nbsp;</p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            FUNCTIONS<br />
                                                        </div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">I</span>nstead of just adding your 
                                                            javascript to the page and having the browser perform the tasks as soon as the 
                                                            script is read, you might want your javascript to be performed only upon the 
                                                            detection of a certain event.<br />
                                                            <br />
                                                            <span class="fancyfirst">F</span>or example, if you made a javascript code that 
                                                            changed the background color of the page when the user clicked a button, then 
                                                            you would need to tell the browser, that the script should not be performed 
                                                            right away when loaded.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>o keep the browser from performing a script as 
                                                            soon as it is loaded you need to write the script as a function.<br />
                                                            <br />
                                                            <span class="fancyfirst">J</span>avascript written into functions will not be 
                                                            performed until you specifically ask for it. This way you gain complete control 
                                                            of the timing.<br />
                                                            <br />
                                                            <span class="fancyfirst">L</span>ook at this example of script lines written as 
                                                            a function:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="height: 278px; width: 450px; background-color: #FFFFFF;">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                    &lt;head&gt;<br />
                                                                                    &lt;script&gt;<br />
                                                                                    <span class="style1">function myfunction()<br />
                                                                                    {<br />
                                                                                    alert(&quot;Welcome to my world!!&quot;);<br />
                                                                                    }</span><br />
                                                                                    &lt;/script&gt;<br />
                                                                                    &lt;/head&gt;<br />
                                                                                    <br />
                                                                                    &lt;body&gt;<br />
                                                                                    &lt;form name=&quot;myform&quot;&gt;<br />
                                                                                    &lt;input type=&quot;button&quot; value=&quot;Hit me&quot; <span class="style1">onclick=&quot;myfunction()&quot;</span>&gt;<br />
                                                                                    &lt;/form&gt;<br />
                                                                                    &lt;/body&gt;<br />
                                                                                    &lt;/html&gt;
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
                                                            <span class="fancyfirst">C</span>lick the button to see what the script in the 
                                                            example does:<br />
                                                            <br />
<SCRIPT>function myfunction(){alert("Welcome to my world!!");}</SCRIPT>
                                                            <br />
                                                            <div align="center">
                                                                <input onclick="myfunction()" type="button" value="Hit me" /></div>
                                                            <br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>f the line: <span class="note">
                                                            <span class="style4">alert(&quot;</span>Welcome to my world!!<span class="style4">&quot;);</span></span> 
                                                            had not been written within a function, it would simply be performed as soon as 
                                                            the line was loaded.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">B</span>ut since we wrote it as a function, it was not 
                                                            performed until you hit the button.<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he call of the function is in this line:
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
                                                                                    <!-- perl mysql php web host -->&lt;input type=&quot;button&quot; value=&quot;Click Here&quot;
                                                                                    <span class="style1">onclick=&quot;myfunction()&quot;</span>&gt;<br />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- perl mysql php web host-->
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>s you can see, we placed the button in a form 
                                                            and added the event <span class="note"><span class="style4">onClick=&quot;</span>myfunction()<span 
                                                                class="style4">&quot;</span></span> to the properties of the button.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he
                                                            <a href="http://www.echoecho.com/javascript8.htm"><span class="link">next page</span></a> 
                                                            gives a detailed description of the different events you could use to trigger 
                                                            functions.<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he general syntax for a function is:<br />
                                                            <br />
                                                            <span class="note"><span class="style4"><span class="fancyfirst">f</span>unction 
                                                            functionname(</span>variable1<span class="style4">,</span> variable2<span 
                                                                class="style4">,...,</span> variableX<span class="style4">)<br />
                                                            { </span>
                                                            <br />
                                                            // Here goes the javascript lines for the function<br />
                                                            <span class="style4">}</span></span><br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he <span class="note"><span class="style4">{</span></span> 
                                                            and the <span class="note"><span class="style4">}</span></span> marks the start 
                                                            and end of the function.<br />
                                                            <br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">A</span> typical bug when entering javascript functions 
                                                            is to forget about the importance of capitals in javascript. The word
                                                            <span class="note"><span class="style4">function</span></span> must be spelled 
                                                            exactly as <span class="note"><span class="style4">function.</span></span>
                                                            <span class="note"><span class="style4">Function</span></span> or
                                                            <span class="note"><span class="style4">FUNCTION</span></span> would cause an 
                                                            error.<br />
                                                            <br />
                                                            <span class="fancyfirst">F</span>urthermore, use of capitals matters in the name 
                                                            of the function as well. If you had a function called <span class="note">
                                                            <span class="style4">myfunction()</span></span> it would cause an error if you 
                                                            referred to it as <span class="note"><span class="style4">Myfunction()</span></span>,
                                                            <span class="note"><span class="style4">MYFUNCTION()</span></span> or
                                                            <span class="note"><span class="style4">MyFunction()</span></span>.<br />
                                                            </span>
            <DIV align=center><A 
            href="#top">Top</A></DIV></p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            EVENTS<br />
                                                        </div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">E</span>vents are actions that can 
                                                            be detected by javascript.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>n example would be the <span class="note">
                                                            <span class="style4">onmouseover</span></span> event, which is detected when the 
                                                            user moves the mouse over an object.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>nother event is the <span class="note">
                                                            <span class="style4">onload</span></span> event, which is detected as soon as 
                                                            the page is finished loading.<br />
                                                            <br />
                                                            <span class="fancyfirst">U</span>sually, events are used in combination with 
                                                            functions, so that the function does not start until the event happens.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>n example would be a function that would
                                                            <a href="http://www.echoecho.com/jsbuttons.htm"><span class="link">animate a 
                                                            button</span></a>.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he function simply shifts two images. One image 
                                                            that shows the button in an &quot;up&quot; position, and another image that shows the 
                                                            button in a &quot;down&quot; position.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>f this function is called using an
                                                            <span class="note"><span class="style4">onmouseover</span></span> event, it will 
                                                            make it look as if the button is pressed down when the mouse is moved over the 
                                                            image.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he following are the most important events 
                                                            recognized by javascript:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host --><span class="fancyfirst"></span>Event</td>
                                                                                <td class="table8">
                                                                                    Detected when</td>
                                                                                <td class="table8">
                                                                                    HTML tags
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    onfocus=&quot;&quot;</td>
                                                                                <td class="table7">
                                                                                    Form field gets focus</td>
                                                                                <td class="table5">
                                                                                    select, text, textarea
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    onblur=&quot;&quot;</td>
                                                                                <td class="table7">
                                                                                    Form field looses focus</td>
                                                                                <td class="table5">
                                                                                    select, text, textarea
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    onchange=&quot;&quot;</td>
                                                                                <td class="table7">
                                                                                    Content of a field changes</td>
                                                                                <td class="table5">
                                                                                    select, text, textarea
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    onselect=&quot;&quot;</td>
                                                                                <td class="table7">
                                                                                    Text is selected</td>
                                                                                <td class="table5">
                                                                                    text, textarea
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    onmouseover=&quot;&quot;</td>
                                                                                <td class="table7">
                                                                                    Mouse moves over a link</td>
                                                                                <td class="table5">
                                                                                    A
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    onmouseout=&quot;&quot;</td>
                                                                                <td class="table7">
                                                                                    Mouse moves out of a link</td>
                                                                                <td class="table5">
                                                                                    A
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    onclick=&quot;&quot;</td>
                                                                                <td class="table7">
                                                                                    Mouse clicks an object</td>
                                                                                <td class="table5">
                                                                                    A, button, checkbox,
                                                                                    <br />
                                                                                    radio, reset, submit
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    onload=&quot;&quot;</td>
                                                                                <td class="table7">
                                                                                    Page is finished loading</td>
                                                                                <td class="table5">
                                                                                    body, frameset
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    onunload=&quot;&quot;</td>
                                                                                <td class="table7">
                                                                                    Browser opens new document</td>
                                                                                <td class="table5">
                                                                                    body, frameset
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    onSubmit=&quot;&quot;</td>
                                                                                <td class="table7">
                                                                                    Submit button is clicked</td>
                                                                                <td class="table5">
                                                                                    form
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
                                                            <span class="fancyfirst">E</span>vents are used for two main purposes:
                                                            <br />
                                                            <ul>
                                                                <li>To perform a function upon detection of the event,
                                                                    <br />
                                                                    <br />
                                                                </li>
                                                                <li>To show a popup box upon detection of the event.<br />
                                                                </li>
                                                            </ul>
                                                            <br />
                                                            <span class="fancyfirst">B</span>elow is a brief description of the main 
                                                            purposes for each event.<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="note"><span class="style4"><span class="fancyfirst">o</span>nFocus</span></span>,
                                                            <span class="note"><span class="style4">onblur</span></span> and
                                                            <span class="note"><span class="style4">onchange</span></span> are mainly used 
                                                            in combination with validation of form fields.<br />
                                                            <br />
                                                            <span class="fancyfirst">L</span>ets say you had a function called
                                                            <span class="note"><span class="style4">validateEmail()</span></span> that would 
                                                            check to see if an entered email address has an @ in it, and if it has a 
                                                            meaningful end, such as &quot;com&quot;, &quot;net&quot; or whatever. Furthermore, suppose the user 
                                                            could enter his email address in a form.<br />
                                                            <br />
                                                            <span class="fancyfirst">Y</span>ou would then use the <span class="note">
                                                            <span class="style4">onchange</span></span> event to call the function whenever 
                                                            the user changes the content of the field:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="height: 38px; width: 450px; background-color: #FFFFFF;">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host -->&lt;input type=&quot;text&quot; size=&quot;20&quot;
                                                                                    <span class="style1">onchange=&quot;validateEmail()&quot;</span>&gt;;
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
                                                            <span class="fancyfirst">C</span>lick
                                                            <a href="http://www.echoecho.com/htmlforms.htm"><span class="link">here</span></a> 
                                                            to learn more about forms.<br />
                                                            Click <a href="http://www.echoecho.com/jsforms.htm"><span class="link">here</span></a> 
                                                            to learn more about form field validation.<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="note"><span class="style4"><span class="fancyfirst">o</span>nload</span></span> 
                                                            and <span class="note"><span class="style4">onunload</span></span> are mainly 
                                                            used for popups that appear when the user enters or leaves the page.<br />
                                                            Another important use is in combination with cookies that should be set upon 
                                                            arrival or leaving your pages.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">F</span>or example, you might have a popup asking the 
                                                            user to enter his name upon his first arrival to your page. The name is then 
                                                            stored in a cookie. Furthermore, when the visitor leaves your page a cookie 
                                                            stores the current date.
                                                            <br />
                                                            Next time the visitor arrives at your page, it will have another popup saying 
                                                            something like: &quot;Welcome Bill Clinton, this page has not been updated since your 
                                                            last visit 8 days ago&quot;.<br />
                                                            <br />
                                                            <span class="fancyfirst">C</span>lick
                                                            <a href="http://www.echoecho.com/jscookies.htm"><span class="link">here</span></a> 
                                                            to learn more about setting cookies.<br />
                                                            Click <a href="http://www.echoecho.com/javascript4.htm"><span class="link">here</span></a> 
                                                            to learn more about popup boxes.<br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>nother common use of the <span class="note">
                                                            <span class="style4">onLoad</span></span> and <span class="note">
                                                            <span class="style4">onunload</span></span> events is: Some annoying pages have 
                                                            a function that immediately opens several other windows as soon as you enter the 
                                                            page. This is a clear break of netiquette, and is not considered proper 
                                                            webdesign.<br />
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV><br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="note"><span class="style4"><span class="fancyfirst">o</span>nsubmit</span></span> 
                                                            is used for one major purpose: To validate all fields within a form before 
                                                            actually submitting it.<br />
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>n the above example for <span class="note">
                                                            <span class="style4">onchange</span></span> we showed how you can validate a 
                                                            single form field.<br />
                                                            <br />
                                                            <span class="fancyfirst">S</span>ometimes however, the visitor might find it 
                                                            annoying to have validations in the middle of entering fields on a form. Rather 
                                                            than validating after each input, you might want the form to be validated only 
                                                            upon clicking the submit button.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>his can be done using the <span class="note">
                                                            <span class="style4">onsubmit</span></span> event.
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>ssume you made a function named
                                                            <span class="note"><span class="style4">checkform()</span></span> that would 
                                                            validate entries to a form.<br />
                                                            <br />
                                                            <span class="fancyfirst">N</span>ow you want this function to be called when the 
                                                            user clicks the submit button.<br />
                                                            If the content is not accepted by your function the submit should be cancelled.<br />
                                                            This way nothing would be submitted unless your function accepted the content.<br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>hat you should do, is: add an
                                                            <span class="note"><span class="style2">onsubmit</span></span> event to the
                                                            <span class="style2">&lt;form&gt;</span> tag this way:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host -->&lt;form method=&quot;yourchoice&quot; action=&quot;yourchoice&quot;
                                                                                    <span class="style1">onsubmit=&quot;return checkform()&quot;</span>&gt;
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
                                                            <span class="fancyfirst">T</span>he function <span class="note">
                                                            <span class="style4">checkform()</span></span> returns either <span class="note">
                                                            <span class="style4">true</span></span> or <span class="note">
                                                            <span class="style4">false</span></span>.
                                                            <br />
                                                            If it returns <span class="note"><span class="style4">true</span></span> the 
                                                            submit will take place.
                                                            <br />
                                                            If it returns <span class="note"><span class="style4">false</span></span> the 
                                                            submit will be cancelled.<br />
                                                            <br />
                                                            <span class="fancyfirst">C</span>lick
                                                            <a href="http://www.echoecho.com/htmlforms.htm"><span class="link">here</span></a> 
                                                            to learn more about forms.<br />
                                                            Click <a href="http://www.echoecho.com/jsforms.htm"><span class="link">here</span></a> 
                                                            to learn more about form validation.<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="note"><span class="style4"><span class="fancyfirst">o</span>nmouseover</span></span> 
                                                            and <span class="note"><span class="style4">onmouseout</span></span> are mainly 
                                                            used for one purpose: To create animated buttons.<br />
                                                            <br />
                                                            <span class="fancyfirst">Y</span>ou may have noticed that these events can only 
                                                            be used in combination with the link tag <span class="style2">&lt;a&gt;</span>.<br />
                                                            <br />
                                                            <span class="fancyfirst">H</span>owever, the events are often more useful in 
                                                            combination with the image tag <span class="style2">&lt;img&gt;</span>. The trick to 
                                                            making the event work on an image is simply to turn the image into a link. (If 
                                                            the image is not supposed to actually work as a link, you could always make it 
                                                            link to an empty anchor, as shown in the example below).<br />
                                                            <br />
                                                            <span class="fancyfirst">E</span>xample: an alert box appears when an 
                                                            onmouseover is detected on an image:<br />
                                                            <br />
                                                            <div align="center">
                                                                <a href="#" onmouseout="alert('I detected an onmouseout event'); return false" 
                                                                    onmouseover="alert('I detected an onmouseover event'); return false">
                                                                <img height="60" src="images/LessonsImages/JAVASCRIPTLessons/rainbow[1]_.gif" width="60" /></a></div>
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he HTML from the example:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host -->&lt;a href=&quot;#&quot; <span class="style1">onmouseover=&quot;</span>alert('I 
                                                                                    detected an onmouseover event'); return false<span class="style1">&quot; onmouseout=&quot;</span>alert('I 
                                                                                    detected an onmouseout event'); return false<span class="style1">&quot;</span>&gt;<br />
                                                                                    &lt;img src=&quot;rainbow.gif&quot; width=&quot;60&quot; height=&quot;60&quot;&gt;<br />
                                                                                    &lt;/a&gt;
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
                                                            <span class="note"><span class="fancyfirst">N</span>ote: The href=&quot;#&quot; links the 
                                                            image to nowhere. If you really wanted the image to link to a page you should 
                                                            enter the address of the page here instead.</span><br />
                                                            <br />
                                                            <span class="fancyfirst">C</span>lick
                                                            <a href="http://www.echoecho.com/htmllinks.htm"><span class="link">here</span></a> 
                                                            to learn more about links and anchors.<br />
                                                            Click <a href="http://www.echoecho.com/javascript4.htm"><span class="link">here</span></a> 
                                                            to learn more about alert boxes.<br />
                                                            </span></p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            LOOPS<br />
                                                            <br />
                                                        </div>
                                                        <span class="text" style="background-color: #FFFFFF"><span class="fancyfirst">I</span>magine 
                                                        that you wanted a script to perform the same routine over and over again 50 
                                                        times in a row.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>n example could be if you wanted a script to 
                                                        produce a table comparing temperatures in Fahrenheit and Celsius.<br />
                                                        The script should produce 50 lines in a table showing different temperatures 
                                                        according to the two scales.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>nstead of adding 50 almost equal lines in your 
                                                        script you could use loops to make the script perform a task like this.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>here are two different kinds of loops:
                                                        <span class="note"><span class="style4">for</span></span> and <span class="note">
                                                        <span class="style4">while</span></span>.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he <span class="note"><span class="style4">for</span></span> 
                                                        loop is used when you know in advance how many times the script should perform.<br />
                                                        For example if you wanted it to create exactly 50 lines.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he <span class="note"><span class="style4">
                                                        while</span></span> loop is used when you want the loop to continue until a 
                                                        certain condition becomes true.<br />
                                                        For example, if you wanted to make a table comparing Celsius and Fahrenheit, 
                                                        stepping 15 degrees for each row, and you wanted the table to contain values up 
                                                        to 1200 degrees of Celsius.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>elow is a description of each of these two 
                                                        loops:<br />
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV><br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">F</span>OR LOOPS:</span><br />
                                                        <br />
                                                        <span class="style2"><span class="fancyfirst">S</span>YNTAX:</span><br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table7">
                                                                                <!-- perl mysql php web host --><span class="style4">for (</span>variable<span 
                                                                                    class="style4">=</span>startvalue<span class="style4">;</span> variable<span 
                                                                                    class="style4">&lt;=</span>endvalue<span class="style4">;</span> variable<span 
                                                                                    class="style4">=</span>variable<span class="style4">+</span>incrementfactor<span 
                                                                                    class="style4">)
                                                                                <br />
                                                                                {</span><br />
                                                                                // Here goes the script lines you want to loop.<br />
                                                                                <span class="style4">}</span><br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">E</span>nter a <span class="note"><span class="style4">
                                                        variablename</span></span> where it says <span class="note">variable</span>.<br />
                                                        Enter the <span class="note"><span class="style4">startvalue of the loop</span></span> 
                                                        where it says <span class="note">startvalue</span>.<br />
                                                        Enter the <span class="note"><span class="style4">endvalue of the loop</span></span> 
                                                        where it says <span class="note">endvalue</span>.<br />
                                                        Enter the <span class="note"><span class="style4">factor each loop should 
                                                        increment</span></span> where it says <span class="note">incrementfactor</span>.<br />
                                                        <br />
                                                        <span class="note"><span class="fancyfirst">N</span>ote: The incrementfactor 
                                                        could be negative if you wanted.<br />
                                                        Furthermore the <span class="style4">&lt;=</span> could be any comparing statement, 
                                                        ex. <span class="style4">&gt;</span>, <span class="style4">==</span> or whatever.</span><br />
                                                        <br />
                                                        <span class="style2">EXAMPLE:</span>
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
                                                                                <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                &lt;head&gt;<br />
                                                                                &lt;title&gt;Celsius-Fahrenheit Converter&lt;/title&gt;<br />
                                                                                &lt;/head&gt;<br />
                                                                                <br />
                                                                                &lt;body&gt;<br />
                                                                                &lt;table border=3&gt;<br />
                                                                                &lt;tr&gt;&lt;td&gt;CELSIUS&lt;/td&gt;&lt;td&gt;FAHRENHEIT&lt;/td&gt;&lt;/tr&gt;<br />
                                                                                &lt;script language=&quot;javascript&quot;&gt;<br />
                                                                                <span class="style1">for (celsius=0; celsius&lt;=50; celsius=celsius+1)<br />
                                                                                {<br />
                                                                                document.write(&quot;&lt;tr&gt;&lt;td&gt;&quot;+celsius+&quot;&lt;/td&gt;&lt;td&gt;&quot;<br />
                                                                                +((celsius*9/5)+32)+&quot;&lt;/td&gt;&lt;/tr&gt;&quot;);<br />
                                                                                }</span><br />
                                                                                &lt;/script&gt;<br />
                                                                                &lt;/table&gt;<br />
                                                                                &lt;/body&gt;<br />
                                                                                &lt;/html&gt;
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
                                                        <span class="fancyfirst">C</span>lick
                                                        <a href="http://www.echoecho.com/sampleforloop.htm"><span class="link">here</span></a> 
                                                        to see the page from this example.<br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">W</span>HILE LOOPS:</span><br />
                                                        <br />
                                                        <span class="style2"><span class="fancyfirst">S</span>YNTAX: </span>
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table7">
                                                                                <!-- perl mysql php web host --><span class="note"><span class="style4">while (</span>variable<span 
                                                                                    class="style4">&lt;=</span>endvalue<span class="style4">)
                                                                                <br />
                                                                                {</span><br />
                                                                                // Here goes the script lines you want to loop.<br />
                                                                                <span class="style4">}</span> </span>
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
                                                        <span class="fancyfirst">E</span>nter a <span class="note"><span class="style4">
                                                        variablename</span></span> where it says <span class="note">variable</span>.<br />
                                                        Enter the <span class="note"><span class="style4">endvalue of the loop</span></span> 
                                                        where it says <span class="note">endvalue</span>.
                                                        <br />
                                                        <br />
                                                        <span class="note"><span class="fancyfirst">N</span>ote: The
                                                        <span class="style4">&lt;=</span> could be anything that would fit the purpose ex.
                                                        <span class="style4">&gt;</span>, <span class="style4">==</span> or whatever.
                                                        </span>
                                                        <br />
                                                        <br />
                                                        <span class="style2">EXAMPLE:</span>
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
                                                                                <!-- perl mysql php web host -->&lt;html&gt;<br />
                                                                                &lt;head&gt;<br />
                                                                                &lt;title&gt;Celsius-Fahrenheit converter&lt;/title&gt;<br />
                                                                                &lt;/head&gt;<br />
                                                                                <br />
                                                                                &lt;body&gt;<br />
                                                                                &lt;table border=3&gt;<br />
                                                                                &lt;tr&gt;&lt;td&gt;CELSIUS&lt;/td&gt;&lt;td&gt;FAHRENHEIT&lt;/td&gt;&lt;/tr&gt;<br />
                                                                                &lt;script language=&quot;javascript&quot;&gt;<br />
                                                                                <span class="style1">celsius=0;<br />
                                                                                while (celsius&lt;=50)<br />
                                                                                {<br />
                                                                                document.write(&quot;&lt;tr&gt;&lt;td&gt;&quot;+celsius+<br />
                                                                                &quot;&lt;/td&gt;&lt;td&gt;&quot;+((celsius*9/5)+32)+&quot;&lt;/td&gt;&lt;/tr&gt;&quot;);<br />
                                                                                celsius=celsius+1;<br />
                                                                                }</span><br />
                                                                                &lt;/script&gt;<br />
                                                                                &lt;/table&gt;<br />
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
                                                        <a href="http://www.echoecho.com/samplewhileloop.htm"><span class="link">here</span></a> 
                                                        to see the page from this example.<br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">B</span>REAK &amp; CONTINUE</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>wo special commands can be used in loops:
                                                        <span class="note"><span class="style4">break</span></span> and
                                                        <span class="note"><span class="style4">continue</span></span>.<br />
                                                        <br />
                                                        <span class="note"><span class="style4"><span class="fancyfirst">b</span>reak</span></span> 
                                                        simply breaks the loop and continues with what might follow after the loop.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>n example would be if you had a loop calculate 
                                                        the squareroot of numbers decrementing from 50.<br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>ince calculating the square root of a negative 
                                                        number is an illegal mathemathic operation you would like the loop to end when 
                                                        the square root of zero had been calculated.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>o do this you would add this inside your loop:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->if (value==0) {<span class="style1">break</span>};<br />
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
                                                        <span class="note"><span class="style4"><span class="fancyfirst">c</span>ontinue</span></span> 
                                                        breaks the current loop and continues with the next value.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>n example would be if you had a loop that 
                                                        divided a certain value with a factor of numbers ranging from -50 to +50.<br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>ince division by zero is an illegal mathemathic 
                                                        procedure the loop would look like this:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->for (value=-50; value&lt;=50; value=value+1)<br />
                                                                                {<br />
                                                                                if (value==0) {<span class="style1">continue</span>};<br />
                                                                                document.write((100/value)+&quot;&lt;br&gt;&quot;);<br />
                                                                                }
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
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <p>
                                                            &nbsp;</p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-weight: bold; color: #800000; font-size: 22px">
                                                            ARRAYS<br />
                                                        </div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">W</span>hen working with more 
                                                            complex scripts you might face a situation in which you would have many more or 
                                                            less<br />
                                                            similar variables.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>nstead of being forced to write a line for each 
                                                            operation<br />
                                                            done to such a variable, you can use arrays to help you automate the process.<br />
                                                            <br />
                                                            <span class="fancyfirst">C</span>onsider this example:<br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table8">
                                                                                    <!-- perl mysql php web host -->Example 1</td>
                                                                                <td class="table8">
                                                                                    Example 2
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    value1=10;<br />
                                                                                    value2=20;<br />
                                                                                    value3=30;<br />
                                                                                    ....<br />
                                                                                    here would go 96 similar lines<br />
                                                                                    ....<br />
                                                                                    value100=1000</td>
                                                                                <td class="table1">
                                                                                    <span class="style1">value=new Array;</span><br />
                                                                                    for (number=1; number&lt;=100; number=number+1)<br />
                                                                                    { <span class="style1">value[number]</span>=number*10};
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
                                                            <span class="fancyfirst">I</span>n example 1 you would need to enter 100 lines 
                                                            to perform an operation on your variables.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>n example 2 you only need to enter 3 lines no 
                                                            matter how many variables you have.<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>n array must be defined before referring to any 
                                                            of the<br />
                                                            variables in it.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>his is done using the syntax:
                                                            <span class="note">variablename=<span class="style4">new Array;</span></span><br />
                                                            <br />
                                                            <span class="fancyfirst">R</span>eplace <span class="note">variblename</span> 
                                                            with the desired name of your array.<br />
                                                            <br />
                                                            <span class="note"><span class="fancyfirst">N</span>ote: new must be written in 
                                                            small letters and Array must start with a capital A.</span><br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>s the example indicated, arrays become 
                                                            extremely powerful when used in combination with loops.<br />
                                                            <br />
                                                            <span class="fancyfirst">H</span>owever, you don't have to handle array 
                                                            variables in loops.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">S</span>ingle variables can be addressed with a syntax 
                                                            like this:<br />
                                                            <br />
                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                cellspacing="1">
                                                                <tr>
                                                                    <td bgcolor="#99aa99">
                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                            style="background-color: #FFFFFF" width="450">
                                                                            <tr>
                                                                                <td class="table1">
                                                                                    <!-- perl mysql php web host -->value[9]=170;<br />
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
                                                            <span class="style4"><span class="fancyfirst">C</span>ongratulations!</span><br />
                                                            <br />
                                                            <span class="fancyfirst">Y</span>ou have reached the end of the tutorial!<br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>hen you feel comfortable with the basic 
                                                            javascript explained
                                                            <br />
                                                            in this section you should continue by learning about the<br />
                                                            javascript objects.<br />
                                                            <br />
                                                            <span class="fancyfirst">O</span>bjects are predefined functions for maths, text 
                                                            variables, browser controlling, etc.<br />
                                                            <br />
                                                            <span class="fancyfirst">A</span>s a matter of fact each and every item placed 
                                                            on a webpage is an object that can be changed, read, or written to by 
                                                            javascript.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>his is where the real fun starts with 
                                                            javascript: When you start controlling the single objects (form fields, buttons, 
                                                            images, menus, etc. etc.) on the pages.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>hat is where you really start taking your pages 
                                                            beyond<br />
                                                            the average.<br />
                                                            <br />
                                                            <span class="fancyfirst">Y</span>ou can click
                                                            <a href="http://www.echoecho.com/jsquickref.htm"><span class="link">here</span></a> 
                                                            to explore the power of the javascript<br />
                                                            built-in objects.<br />
                                                            </span>
                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /></p>
                                                        <span class="text">
                                                        <br />
                                                        <br />
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
                    InsertCommand="INSERT JavaScript_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    
                      
                      
                      SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [JavaScript_tblComments]">
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
                    PostBackUrl="~/JavaScript_Contents.aspx">Back to JavaScript Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/JavaScript_Contents.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/JavaScript_L2.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
                                            <br />
                                            <br />
                                            <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </TD></TR></TBODY></TABLE>
      <SCRIPT type=text/javascript>
var dc_UnitID = 14;
var dc_PublisherID = 9313;
var dc_AdLinkColor = '#009600';
var dc_adprod='ADL';
</SCRIPT>

     </DIV></TR></TBODY></TABLE>
    </form>
</BODY></HTML>
