<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="HTML_L4.aspx.cs" Inherits="_Default" %>

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
        DestinationPageUrl="~/HTML_L4.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;&nbsp;<img alt="" src="images/html.jpg" 
                    style="width: 204px; height: 86px" /><br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L3.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/HTML_Contents.aspx">Back to HTML Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="HTML_L5.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 4 - HTML Images </H2>
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
                                                            <BR>
                                                        </p>
                                                        <span class="text"><span class="fancyfirst">T</span>his section will show how to 
                                                        add images to your pages.<br />
                                                        We will start out with a presentation of the two main image types on webpages:
                                                        <span class="style2">jpg</span> and <span class="style2">gif</span>.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>fter that, we will proceed with various ways to 
                                                        insert and customize images, with a special focus on the different alignments 
                                                        you can choose.<br />
                                                        <br />
                                                        <span class="fancyfirst">W</span>hile the focus of this section is images, there 
                                                        are a couple of aspects related to images that are not covered here.<br />
                                                        <br />
                                                        <ul>
                                                            <li>If you want to learn how to make images work as links, you should go to the
                                                                <a href="#"><span class="link">links section</span></a>.<br />
                                                                <br />
                                                            </li>
                                                            <li>If you want to learn about browser safe colors for images, you should go to the
                                                                <a href="#"><span class="link">hexcolor 
                                                                section</span></a>.<br />
                                                                <br />
                                                            </li>
                                                            <li>If you want to learn about mouseover effects on images, you should go to the
                                                                <a href="#"><span class="link">javascript 
                                                                section</span></a>.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="fancyfirst">O</span>therwise - let's get started.....<br />
                                                        </span>
                                                        <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><div 
                                                            align="center" class="headline">
                                                            GIF &amp; JPG</div>
                                                        <br />
                                                        <br />
                                                        <span class="text"><span class="fancyfirst">C</span>omputers store images in 
                                                        several different ways.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>ome storage methods focus on compressing the 
                                                        size of the image as much as possible.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">A</span> major problem with using images on websites is 
                                                        that images take much longer to load than text.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>o reduce download times as much as possible two 
                                                        of the best image compressing formats used on the web are:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table8">
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>GIF</td>
                                                                            <td class="table8">
                                                                                JPG<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table5">
                                                                                256 colors</td>
                                                                            <td class="table5">
                                                                                Unlimited colors<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table5">
                                                                                Can handle transparent areas</td>
                                                                            <td class="table5">
                                                                                Can't handle transparent areas<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table5">
                                                                                This format is not good at compressing photographs</td>
                                                                            <td class="table5">
                                                                                Excellent for compressing photographs and complex images<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table5">
                                                                                In general, it is excellent for banners, buttons and clipart</td>
                                                                            <td class="table5">
                                                                                In general, it is not good for banners, buttons and clipart.<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his means that:<br />
                                                        <ul>
                                                            <li>Banners, buttons, dividers, clipart and other simple images usually work best as
                                                                <span class="style2">GIF</span>'s.
                                                                <br />
                                                                <br />
                                                            </li>
                                                            <li>Photographs and other complex images usually work best as <span class="style2">
                                                                JPG</span>'s.<br />
                                                            </li>
                                                        </ul>
                                                        <span class="fancyfirst">I</span>f you want to use an image that is in a format 
                                                        other than JPG or GIF, you will need to load the image into a graphics program 
                                                        and save it as either JPG or GIF.<br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            INSERTING IN HTML</div>
                                                        </span><br />
                                                        <br />
                                                        <span class="text"><span class="fancyfirst">T</span>he tag used to insert an 
                                                        image is called <span class="style2">img</span>.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>elow you see an image called &quot;rainbow.gif&quot;.<br />
                                                        <br />
                                                        <table align="center" bgcolor="#aaaabb" border="1">
                                                            <tr>
                                                                <td bgcolor="#ffffff">
                                                                    <img alt="rainbow.gif" height="60" src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" 
                                                                        width="60" /></td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">H</span>ere is the HTML code used to insert the image 
                                                        on this webpage:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;img src=&quot;http://www.echoecho.com/rainbow.gif&quot;&gt;
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
                                                        <span class="fancyfirst">I</span>f the image is stored in the same folder as the 
                                                        HTML page, you can leave out the domain reference (http://www.echoecho.com/) and 
                                                        simply insert the image with this code:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;img src=&quot;rainbow.gif&quot;&gt;
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>n the following pages we will discuss different 
                                                        ways to control how your image is inserted.<br />
                                                        </span>
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            RESIZING</div>
                                                        <br />
                                                        <br />
                                                        <span class="text" style="background-color: #FFFFFF"><span class="fancyfirst">Y</span>ou 
                                                        can change the size of an image using the <span class="style2">width</span> and
                                                        <span class="style2">height</span> attributes.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n general, it is not advisable to reduce image 
                                                        size using these settings, since the image will be transferred over the internet 
                                                        in its original size no matter what reduction is set for it. This will slow the 
                                                        loading of your webpage.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his means, that if you have an image that is 
                                                        bigger in size than you want it to be on your page, you should reduce the size 
                                                        in a graphics program, rather than reducing the size on the webpage using the 
                                                        width and height attributes.<br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>n the contrary, sometimes, it can be wise to 
                                                        enlarge images using this technique.<br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>elow are two presentations of the exact same 
                                                        image - with different settings for width and height.<br />
                                                        <br />
                                                        <table align="center" bgcolor="#aaaabb" border="1">
                                                            <tr>
                                                                <td bgcolor="#ffffff">
                                                                    <img alt="rainbow.gif (2273 bytes)" height="60" 
                                                                        src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="60" /></td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                        style="background-color: #FFFFFF">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;img src=&quot;http://www.echoecho.com/rainbow.gif&quot;
                                                                                <span class="style1">width=&quot;60&quot; height=&quot;60&quot;</span>&gt;
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
                                                        <table align="center" bgcolor="#aaaabb" border="1">
                                                            <tr>
                                                                <td bgcolor="#ffffff">
                                                                    <img alt="rainbow.gif (2273 bytes)" height="120" 
                                                                        src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="120" /></td>
                                                            </tr>
                                                        </table>
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
                                                                                <!-- perl mysql php web host -->&lt;img src=&quot;http://www.echoecho.com/rainbow.gif&quot;
                                                                                <span class="style1">width=&quot;120&quot; height=&quot;120&quot;</span>&gt;
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
                                                        <span class="fancyfirst">I</span>f you leave out the settings for width and 
                                                        height, the browser will automatically use the real size of the image.<br />
                                                        <br />
                                                        <span class="fancyfirst">H</span>owever, you should always enter the settings 
                                                        for width and height, even when using the real size!<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he reason is that if the settings are left out, 
                                                        the browser can't build the page until the image is loaded entirely.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his means, that the visitor cannot read text 
                                                        around the image while the image itself is loading - which in turn will give the 
                                                        visitor an impression of a slow loading page.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his becomes especially true if the image is 
                                                        inside a table.<br />
                                                        In that case, the whole table will not be shown until the image is loaded 
                                                        entirely.<br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            <br />
                                                            BORDER AROUND</div>
                                                        <br />
                                                        <br />
                                                        <span class="text"><span class="fancyfirst">Y</span>ou can add a border to the 
                                                        image using the <span class="style2">border</span> setting shown in the example 
                                                        below:<br />
                                                        <span class="note">
                                                        <br />
                                                        Note:
                                                        <br />
                                                        Netscape browsers will only show the border if the image is a link.<br />
                                                        </span>
                                                        <br />
                                                        <br />
                                                        <div align="center">
                                                            <img border="5" src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" 
                                                                style="background-color: #FFFFFF" /></div>
                                                        <br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" width="450" 
                                                                        style="background-color: #FFFFFF">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;img src=&quot;http://www.echoecho.com/rainbow.gif&quot;
                                                                                <span class="style1">border=&quot;5&quot;</span>&gt;
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
                                                        <span class="fancyfirst">A</span>dding a border to your image might help the 
                                                        visitor recognize that the image is a link. However, the net is filled with 
                                                        images that work as links and have no borders indicating it - so the average 
                                                        visitor is used to letting the mouse run over images to see if they are links.<br />
                                                        <br />
                                                        <span class="fancyfirst">S</span>till - if you have an image that is often 
                                                        mistaken you might consider adding a border to it - although you should probably 
                                                        consider changing the image entirely - since if it does not indicate by itself 
                                                        that it is a link then it isn't serving it's purpose.<br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline">
                                                            ALTERNATIVE TEXT</div>
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can add an alternative text to an image 
                                                        using the <span class="style2">alt</span> setting shown in the example below:<br />
                                                        <br />
                                                        <div align="center">
                                                            <img alt="This is a text that goes with the image" height="60" 
                                                                src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="60" /></div>
                                                        <br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1" style="background-color: #FFFFFF">
                                                            <tr>
                                                                <td bgcolor="#99aa99" style="background-color: #FFFFFF">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;img src=&quot;http://www.echoecho.com/rainbow.gif&quot;
                                                                                <span class="style1">alt=&quot;This is a text that goes with the image&quot;</span>&gt;<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou should always add alternative texts to your 
                                                        images, so the users can get an idea of what the image is about before it is 
                                                        loaded.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his becomes particulary important if the image 
                                                        is a link.<br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>ew things are as annoying as knowing that you 
                                                        want to leave the current page - and at the same time being forced to wait for 
                                                        an image to load before being able to do so.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>t is extremely tempting to use the browser's 
                                                        straightforward options to leave the entire site instead.<br />
                                                        <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                        <div align="center" class="headline">
                                                            SPACING AROUND</div>
                                                        <br />
                                                        <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                            <tr>
                                                                <td class="main">
                                                                    <div align="left">
                                                                        <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                        <span class="text"><span class="fancyfirst">Y</span>ou can easily add space over 
                                                                        and under your images
                                                                        <br />
                                                                        with the <span class="style2">Vspace</span> attribute.
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">I</span>n a similar way you can add space to the left 
                                                                        and right of the image using the <span class="style2">Hspace</span> attribute.
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">B</span>elow is an example using these attributes:<br />
                                                                        <br />
                                                                        <table align="center" bgcolor="#aaaabb" border="1">
                                                                            <tr>
                                                                                <td bgcolor="#ffffff">
                                                                                    <img border="0" height="60" hspace="30" 
                                                                                        src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" vspace="10" width="60" /></td>
                                                                            </tr>
                                                                        </table>
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
                                                                                                <!-- perl mysql php web host -->&lt;img src=&quot;rainbow.gif&quot; <span class="style1">
                                                                                                Hspace=&quot;30&quot; Vspace=&quot;10&quot;</span>&gt;<br />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        <!-- perl mysql php web host-->
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">A</span>s you see these settings allow you to add 
                                                                        spacing around your image. Unfortunately, they also force you to add the same 
                                                                        spacing to each side of the image (over and under - or left and right).
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he workaround for this, if you only want 
                                                                        spacing on one side of the image is to use a 1x1 pixel transparent gif image.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">I</span>f, for example, you wanted a 10 pixel spacing 
                                                                        to the left of your image you could use the transparent image (pixel.gif) this 
                                                                        way:<br />
                                                                        <br />
                                                                        <table align="center" bgcolor="#aaaabb" border="1">
                                                                            <tr>
                                                                                <td bgcolor="#ffffff">
                                                                                    <img height="1" src="http://www.echoecho.com/pixel.gif" width="10" /><img 
                                                                                        src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" /></td>
                                                                            </tr>
                                                                        </table>
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
                                                                                                <!-- perl mysql php web host --><span class="style1">&lt;img src=&quot;pixel.gif&quot; 
                                                                                                width=&quot;10&quot; height=&quot;1&quot;&gt;</span>&lt;img src=&quot;rainbow.gif&quot;&gt;<br />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        <!-- perl mysql php web host-->
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he 1x1 pixel transparent gif image is simply 
                                                                        stretched to whatever size you want the spacing to have.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>his 1x1 pixel &quot;cowboy-trick&quot; is probably one of 
                                                                        the most widely used workarounds on the entire net.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he reasons are obvious: It works on all 
                                                                        browsers and it gives you complete pixel precision in your design!<br />
                                                                        <br />
                                                                        </span>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <div align="center" class="headline">
                                                            <br />
                                                            <br />
                                                            ALIGNMENT OF IMAGES</div>
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can align images according to the text 
                                                        around it, using the following alignments:<br />
                                                        <br />
                                                        <ul>
                                                            <li><span class="style2">default</span> aligns the image using the default settings 
                                                                of the Web browser. Same as baseline.
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">left</span> aligns the image in the left margin and wraps 
                                                                the text that follows the image.
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">right</span> aligns the image in the right margin and wraps 
                                                                the text that precedes the image.
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">top</span> aligns the top of the image with the surrounding 
                                                                text.
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">texttop</span> aligns the top of the image with the top of 
                                                                the tallest text in the line.
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">middle</span> aligns the middle of the image with the 
                                                                surrounding text.
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">absmiddle</span> aligns the image with the middle of the 
                                                                current line.
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">baseline</span> aligns the image with the baseline of the 
                                                                current line.
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">bottom</span> aligns the bottom of the image with the 
                                                                surrounding text.
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">absbottom</span> aligns the image with the bottom of the 
                                                                current line.
                                                                <br />
                                                            </li>
                                                            <li><span class="style2">center</span> aligns the center of the image with the 
                                                                surrounding text.
                                                                <br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="fancyfirst">I</span>n the table below you can see examples of the 
                                                        different vertical alignments you can make for an image.
                                                        <br />
                                                        <br />
                                                        <span class="note">
                                                        <br />
                                                        The note
                                                        <img align="baseline" alt="node.gif" height="20" 
                                                            src="images/LessonsImages/HTMLLessons/node[1]_.gif" width="20" /> in the examples is 
                                                        only there to show how the circular sign
                                                        <img align="baseline" alt="rainbow.gif" height="20" 
                                                            src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="20" /> is affected by other 
                                                        images on the same line.<br />
                                                        <br />
                                                        This means, that the alignments shown in the example are made to the circular 
                                                        sign and not the note.
                                                        <br />
                                                        </span>
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
                                                                                <!-- perl mysql php web host --><span class="fancyfirst"></span>HTML</td>
                                                                            <td class="table8">
                                                                                EXAMPLE<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;img src=&quot;rainbow.gif&quot; <span class="style1">align=&quot;texttop&quot;</span>&gt;</td>
                                                                            <td class="table5">
                                                                                <br />
                                                                                bla
                                                                                <img align="baseline" alt="node.gif" height="40" 
                                                                                    src="images/LessonsImages/HTMLLessons/node[1]_.gif" width="40" />bla
                                                                                <img align="textTop" alt="texttop aligned image" height="30" 
                                                                                    src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="30" />bla bla<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;img src=&quot;rainbow.gif&quot; <span class="style1">align=&quot;top&quot;</span>&gt;</td>
                                                                            <td class="table5">
                                                                                <br />
                                                                                bla
                                                                                <img align="baseline" alt="node.gif" height="40" 
                                                                                    src="images/LessonsImages/HTMLLessons/node[1]_.gif" width="40" />bla
                                                                                <img align="top" alt="top aligned image" height="30" 
                                                                                    src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="30" />bla bla<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table8">
                                                                                </td>
                                                                            <td class="table8">
                                                                                &nbsp;<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;img src=&quot;rainbow.gif&quot; <span class="style1">align=&quot;middle&quot;</span>&gt;</td>
                                                                            <td class="table5">
                                                                                <br />
                                                                                bla
                                                                                <img align="baseline" alt="node.gif" height="40" 
                                                                                    src="images/LessonsImages/HTMLLessons/node[1]_.gif" width="40" />bla
                                                                                <img align="middle" alt="middle aligned image" height="30" 
                                                                                    src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="30" />bla bla<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;img src=&quot;rainbow.gif&quot; <span class="style1">align=&quot;absmiddle&quot;</span>&gt;</td>
                                                                            <td class="table5">
                                                                                <br />
                                                                                bla
                                                                                <img align="baseline" alt="node.gif" height="40" 
                                                                                    src="images/LessonsImages/HTMLLessons/node[1]_.gif" width="40" />bla
                                                                                <img align="absMiddle" alt="middle aligned image" height="30" 
                                                                                    src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="30" />bla bla<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table8">
                                                                                &nbsp;</td>
                                                                            <td class="table8">
                                                                                &nbsp;<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;img src=&quot;rainbow.gif&quot; <span class="style1">align=&quot;bottom&quot;</span>&gt;</td>
                                                                            <td class="table5">
                                                                                <br />
                                                                                bla
                                                                                <img align="textTop" alt="node.gif" height="40" 
                                                                                    src="images/LessonsImages/HTMLLessons/node[1]_.gif" width="40" />bla
                                                                                <img align="bottom" alt="bottom aligned image" height="30" 
                                                                                    src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="30" />bla bla<br />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                &lt;img src=&quot;rainbow.gif&quot; <span class="style1">align=&quot;absbottom&quot;</span>&gt;</td>
                                                                            <td class="table5">
                                                                                <br />
                                                                                bla
                                                                                <img align="textTop" alt="node.gif" height="40" 
                                                                                    src="images/LessonsImages/HTMLLessons/node[1]_.gif" width="40" />bla
                                                                                <img align="absBottom" alt="absbottom aligned image" height="30" 
                                                                                    src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="30" />bla bla</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <br />
                                                                                &lt;img src=&quot;rainbow.gif&quot; <span class="style1">align=&quot;baseline&quot;</span>&gt;</td>
                                                                            <td class="table5">
                                                                                <br />
                                                                                bla
                                                                                <img align="textTop" alt="node.gif" height="40" 
                                                                                    src="images/LessonsImages/HTMLLessons/node[1]_.gif" width="40" />bla
                                                                                <img align="baseline" alt="baseline aligned image" height="30" 
                                                                                    src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="30" />bla bla<br />
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
                                                        <div align="center" class="headline">
                                                            WRAP TEXT AROUND</div>
                                                        <br />
                                                        <span class="fancyfirst">I</span>n addition to the vertical alignments covered 
                                                        on the <a href="HTML_L3.aspx"><span class="link">
                                                        previous page</span></a>, images can also be aligned horizontally.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>o do this, add <span class="style2">
                                                        align=&quot;left&quot;</span> or <span class="style2">align=&quot;right&quot;</span> to the
                                                        <span class="style2">&lt;img&gt;</span> tag.<br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>onsider these examples to see how it works:<br />
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
                                                                                EXAMPLE</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <br />
                                                                                <img height="1" src="http://www.echoecho.com/i/p.gif" width="200" /><br />
                                                                                <br />
                                                                                &lt;img src=&quot;rainbow.gif&quot;<br />
                                                                                <span class="style1">align=&quot;left&quot;</span>&gt;<br />
                                                                                bla bla bla bla bla<br />
                                                                                bla bla bla bla bla<br />
                                                                                bla bla bla bla bla</td>
                                                                            <td class="table5">
                                                                                <br />
                                                                                <img align="left" alt="left aligned image" height="60" 
                                                                                    src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="60" />bla bla bla bla bla 
                                                                                blabla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla 
                                                                                bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla 
                                                                                bla bla bla</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <br />
                                                                                <img height="1" src="http://www.echoecho.com/i/p.gif" width="200" /><br />
                                                                                <br />
                                                                                &lt;img src=&quot;rainbow.gif&quot;<br />
                                                                                <span class="style1">align=&quot;right&quot;</span>&gt;<br />
                                                                                bla bla bla bla bla<br />
                                                                                bla bla bla bla bla<br />
                                                                                bla bla bla bla bla</td>
                                                                            <td class="table5">
                                                                                <br />
                                                                                <img align="right" alt="left aligned image" height="60" 
                                                                                    src="images/LessonsImages/HTMLLessons/rainbow[1]_.gif" width="60" />bla bla bla bla bla 
                                                                                blabla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla 
                                                                                bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla 
                                                                                bla bla bla<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>nother way to obtain the same effect would be 
                                                        to enter the image and text in an invisible table. Entering text in one column 
                                                        and the image in another would create a similar effect.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can learn more about tables
                                                        <a href="HTML_L7.aspx"><span class="link">here</span></a>.<br />
                                                        <br />
                                                        <span class="fancyfirst">O</span>therwise, you should proceed to the
                                                        <a href="HTML_L6.aspx"><span class="link">next 
                                                        section</span></a> to learn how to use images as backgrounds for the entire 
                                                        page.<br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        </span>
                                                        <br />
                                                        </span>
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
                                                PostBackUrl="~/HTML_L3.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/HTML_L5.aspx">Next &gt;&gt;</asp:LinkButton>
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
