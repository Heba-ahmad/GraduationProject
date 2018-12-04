<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="HTML_L6.aspx.cs" Inherits="_Default" %>

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
        DestinationPageUrl="~/HTML_L6.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;<img alt="" src="images/html.jpg" style="width: 204px; height: 86px" />&nbsp;&nbsp;<br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L5.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/HTML_Contents.aspx">Back to HTML Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="HTML_L7.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 6 - HTML BACKGROUNDS</H2>
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
                                                                            <span class="text"><span class="fancyfirst">W</span>hen deciding whether you 
                                                                            want to use a plain color or an image you should consider the fact that very few 
                                                                            of the web's 100 most visited sites use background images.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">M</span>ore than 90 percent have a plain white 
                                                                            background.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he few pages that actually do use images use 
                                                                            very discrete and fast loading images for the purpose.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">W</span>hen picking the desired color - whether it be 
                                                                            plain or an image - you should also consider the fact that some colors work with 
                                                                            almost any other color - while there are colors that only work with a limited 
                                                                            number of contrasts.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>f you use green on a red background, it will 
                                                                            look different than if you use the same green on a blue background. Without 
                                                                            digging into deep theories about colors, we will make a note on the fact that 
                                                                            white, gray and black colors tend to be balanced against other colors. That is, 
                                                                            white, gray and black work with any of the colors in the rainbow.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>his is probably the reason that white, black 
                                                                            and gray are the most widely used background colors found on the net.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>f you're designing for a company that has a 
                                                                            certain color they use in other graphics, it is very tempting to pick that same 
                                                                            color for the background of the webpage. This might be a good idea, but there 
                                                                            are other ways to emphasize a certain color than to use it as background for the 
                                                                            page.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>f, for example, you see a huge white wall with 
                                                                            a bright red dot on it, which color makes the biggest impression on you? The 500 
                                                                            square feet of white or the one square foot of red?<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he conclusion is, that limited use of colors 
                                                                            often makes the appearence of the colors more powerful than if the entire page 
                                                                            was one big painting.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">F</span>urthermore, when you limit your use of colors, 
                                                                            you can use the colors more to underscore the navigation of the page. If 
                                                                            secondary navigation elements are held in pale colors while primary elements are 
                                                                            sharp - then the user will, by intuition, get the point.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">Y</span>ou can read more about colors on webpages
                                                                            <a href="http://www.echoecho.com/designcolors.htm"><span class="link">here</span></a>.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">W</span>hether you want to add an image or a plain 
                                                                            color as background you need to specify it in the <span class="style2">&lt;body&gt;</span> 
                                                                            tag.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he following pages will teach you how.....<br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline">
                                                                                BACKGROUND COLOR</div>
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">A</span>dding a plain background color to your page is 
                                                                            easy.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">A</span>ll you need to do is add a bgcolor property to 
                                                                            the body tag:<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                                            style="background-color: #FFFFFF">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;body bgcolor=&quot;#FF0000&quot;&gt;
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
                                                                            <span class="fancyfirst">A</span>s you see, the background color (#FF0000) is 
                                                                            entered as a hexadecimal value. You can click
                                                                            <a href="HTML_L11.aspx"><span class="link">here</span></a> 
                                                                            to learn about the hexadecimal system used on HTML pages.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">W</span>hile plain white and plain black are the most 
                                                                            widely used colors on the net, there seems to be a trend moving towards slight 
                                                                            variations of these.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he reason is that the sharp contrast between 
                                                                            pure white or black and the text color might be less readable than a slightly 
                                                                            faded white/black.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">L</span>ook at these examples and choose for yourself 
                                                                            which is most readable. To the left are plain white/black and to the right are 
                                                                            slight variations.<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#aaaabb" border="1" cellpadding="5" 
                                                                                cellspacing="5" width="230">
                                                                                <tr>
                                                                                    <td bgcolor="#ffffff" width="100">
                                                                                        <font color="#000000" face="arial" size="2">Bla bla bla bla bla bla bla bla bla 
                                                                                        bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla 
                                                                                        bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla</font></td>
                                                                                    <td bgcolor="#fffcff" width="100">
                                                                                        <font color="#000000" face="arial" size="2">Bla bla bla bla bla bla bla bla bla 
                                                                                        bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla 
                                                                                        bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla</font></td>
                                                                                </tr>
                                                                            </table>
                                                                            <br />
                                                                            <table align="center" bgcolor="#aaaabb" border="1" cellpadding="5" 
                                                                                cellspacing="5" width="230">
                                                                                <tr>
                                                                                    <td bgcolor="#000000" width="100">
                                                                                        <font color="#ffffff" face="arial" size="2">Bla bla bla bla bla bla bla bla bla 
                                                                                        bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla 
                                                                                        bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla</font></td>
                                                                                    <td bgcolor="#333333" width="100">
                                                                                        <font color="#fffff4" face="arial" size="2">Bla bla bla bla bla bla bla bla bla 
                                                                                        bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla 
                                                                                        bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla</font></td>
                                                                                </tr>
                                                                            </table>
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">A</span>nother popular technique to give the background 
                                                                            more of a paper touch is to use an image as background.<br />
                                                                            The next page will teach you how.....<br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline">
                                                                                BACKGROUND IMAGE<br />
                                                                            </div>
                                                                            <span class="fancyfirst">I</span>f you want to add a background image instead of 
                                                                            a plain color there are some considerations you should make before doing so:<br />
                                                                            <ul>
                                                                                <li>Is the background image discrete enough to not take away the focus from what's 
                                                                                    written on it?<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>Will the background image work with the text colors and link colors I set up for 
                                                                                    the page?<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>Will the background image work with the other images I want to put on the page?<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>How long will the page take to load my background<br />
                                                                                    image? Is it simply too big?<br />
                                                                                    <br />
                                                                                </li>
                                                                                <li>Will the background image work when it is copied to fill the entire page? In all 
                                                                                    screen resolutions?
                                                                                    <br />
                                                                                </li>
                                                                            </ul>
                                                                            <br />
                                                                            <span class="fancyfirst">A</span>fter answering these questions, if you still 
                                                                            want to add the background image you will need to specify in the
                                                                            <span class="style2">&lt;body&gt;</span> tag which image should be used for the 
                                                                            background.<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;body background=&quot;drkrainbow.gif&quot;&gt;
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
                                                                            <span class="note"><span class="fancyfirst">N</span>ote:<br />
                                                                            If the image you're using is smaller than the screen, the image will be 
                                                                            replicated until it fills the entire screen.</span><br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>f, say you wanted a striped background for your 
                                                                            page, you wouldn't have to make a huge image for it. Basically you could just 
                                                                            make an image that is two pixels high and one pixel wide. When inserted on the 
                                                                            page the two dots will be copied to fill the page - thus making what looks like 
                                                                            a full screen striped image.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">W</span>hen you choose to use a background image for 
                                                                            the page it is always a good idea to specify a background color as well.<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;body background=&quot;drkrainbow.gif&quot;
                                                                                                    <span class="style1">bgcolor=&quot;#333333&quot;</span>&gt;
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
                                                                            <span class="fancyfirst">T</span>he reason is that until the background image is 
                                                                            loaded, the background color will be shown.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">I</span>f there is too much difference between the 
                                                                            background color and the background image, it will look disturbing once the 
                                                                            browser shifts from the background color to the image.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>herefore it is a good idea to specify a 
                                                                            background color that matches the colors of the image as close as possible.<br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">Y</span>ou may have noticed that background images 
                                                                            scroll with the page when you use the scroll bar.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he last page in this section will teach you how 
                                                                            to add a fixed image to your page.....<br />
                                                                            <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                            <br />
                                                                            <br />
                                                                            <div align="center" class="headline">
                                                                                FIXED IMAGE<br />
                                                                            </div>
                                                                            <span class="fancyfirst">T</span>he background image will scroll when the user 
                                                                            scrolls down the page, unless you have set it to be fixed:<br />
                                                                            <br />
                                                                            <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                                                cellspacing="1">
                                                                                <tr>
                                                                                    <td bgcolor="#99aa99">
                                                                                        <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                                            style="background-color: #FFFFFF" width="450">
                                                                                            <tr>
                                                                                                <td class="table1">
                                                                                                    <!-- perl mysql php web host -->&lt;body background=&quot;drkrainbow.gif&quot;
                                                                                                    <span class="style1">bgproperties=&quot;fixed&quot;</span>&gt;
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
                                                                            <span class="fancyfirst">B</span>y adding the <span class="style2">
                                                                            bgproperties=&quot;fixed&quot;</span> you force the browser to let the background be fixed 
                                                                            even if the user is scrolling down the page.
                                                                            <br />
                                                                            <br />
                                                                            <span class="note"><span class="fancyfirst">N</span>ote: Fixed backgrounds are 
                                                                            only supported by MSIE and do not work in Netscape browsers - instead they 
                                                                            simply act as normal backgrounds.</span><br />
                                                                            <br />
                                                                            <br />
                                                                            <hr align="center" width="300" />
                                                                            <br />
                                                                            <br />
                                                                            <span class="fancyfirst">A</span>s mentioned earlier in this section a limited 
                                                                            use of colors can add more power to the few colors that are used.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he most important tool for adding colors to 
                                                                            certain areas of the page rather than the entire background is tables.<br />
                                                                            <br />
                                                                            <span class="fancyfirst">T</span>he
                                                                            <a href="HTML_L7.aspx"><span class="link">next section</span></a> 
                                                                            will teach you how to add tables to your pages....<br />
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
                                                    <BR>
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
                                                PostBackUrl="~/HTML_L5.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L7.aspx">Next &gt;&gt;</asp:LinkButton>
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
