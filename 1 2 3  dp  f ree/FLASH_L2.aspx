<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="FLASH_L2.aspx.cs" Inherits="_Default" %>

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
        DestinationPageUrl="~/FLASH_L2.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                                                PostBackUrl="~/FLASH_L1.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/FLASH_Contents.aspx">Back to FLASH Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="FLASH_L3.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 2 - Flash Drawing </H2>
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
                                                            Flash Drawing </div>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">T</span>he drawing tools in Flash 
                                                            let you create and modify shapes for the artwork in your movies. For an 
                                                            interactive introduction to drawing in Flash, choose <span class="note">Help &gt; 
                                                            Lessons &gt; Drawing</span> in your Flash program.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he tools for painting are kept in the &quot;Tools&quot; 
                                                            bar, usually positioned at the left top of your Flash Screen.<br />
                                                            <br />
                                                            <img alt="Flash Drawing Toolbar" height="493" 
                                                                src="images/LessonsImages/FLASHLessons/03toolbox[1]_.gif" width="240" />.<br />
                                                            <br />
                                                            <span class="fancyfirst">O</span>n the following pages we will guide you through 
                                                            the use of each of these tools, starting with the simplest.<br />
                                                            <br />
                                                            <span class="fancyfirst">B</span>ut before going through the different tools, we 
                                                            will look at the way Flash handle drawings.<br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>he most important thing to understand is the 
                                                            distinction between outlines and fills.<br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>hen you draw a line there is no fill - only the 
                                                            outline.<br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>hen you draw a rectangle (or a circle) you 
                                                            actually draw two things: The outline (border) and the fill. Unlike most other 
                                                            programs, Flash doesn't automatically combine these two into one object.<br />
                                                            <br />
                                                            <hr align="center" width="300" />
                                                            <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            PENCIL TOOL </div>
                                                        <br />
                                                        <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                            <tr>
                                                                <td class="main">
                                                                    <div align="left">
                                                                        <br />
                                                                        <span class="text">
                                                                        <br />
                                                                        <img alt="Pencil Tool" height="25" src="images/LessonsImages/FLASHLessons/03pencil[1]_.gif" 
                                                                            width="25" />
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he Pencil tool is used in much the same way 
                                                                        that you would use a real pencil to draw. Simply select the tool and drag on the 
                                                                        Stage to draw with the Pencil tool.
                                                                        <br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">SHIFT key : Constrain directions</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can press the Shift key while dragging to 
                                                                        constrain lines to vertical or horizontal directions.
                                                                        <br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Colors</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can specify the color with the Stroke Color 
                                                                        Tool.<br />
                                                                        <br />
                                                                        <span class="note">Color Tools:</span><br />
                                                                        <img alt="Tool Box : Colors" height="144" 
                                                                            src="images/LessonsImages/FLASHLessons/04toolbox_colors[1]_.gif" width="185" /><br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Smoothing and Straightening</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can apply smoothing or straightening to the 
                                                                        lines by setting a Pencil mode.<br />
                                                                        <br />
                                                                        <span class="note">Pencil Modes:</span><br />
                                                                        <img alt="Pencil Tool : drawing modes" height="115" 
                                                                            src="images/LessonsImages/FLASHLessons/03pencil_mode[1]_.gif" width="459" /><br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Stroke panel : Window &gt; Panels &gt; Stroke</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">F</span>inally, you can specify line style (solid, 
                                                                        dotted etc.), line width in pixels and color using the Stroke panel.<br />
                                                                        <br />
                                                                        <span class="note">Stroke Panel:</span><br />
                                                                        <img alt="Panels : Stroke" height="156" 
                                                                            src="images/LessonsImages/FLASHLessons/04stroke_inspector[1]_.gif" width="310" /><br />
                                                                        <br />
                                                                        </span>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <br />
                                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            BRUSH TOOL </div>
                                                        <br />
                                                        <img alt="Brush Tool" height="25" src="images/LessonsImages/FLASHLessons/brush.gif" 
                                                            width="25" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he Brush tool draws brushlike strokes, as if 
                                                        you were painting. It lets you create special effects, including calligraphic 
                                                        effects.<br />
                                                        <br />
                                                        <span class="fancyfirst">U</span>nlike the
                                                        <a href="FLASH_L1.aspx"><span class="link">Pencil 
                                                        tool</span></a>, the Brush tool draws both a fill and an outline.
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <span class="style4">SHIFT key : Constrain directions</span><br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can press the Shift key while dragging to 
                                                        constrain drawing to vertical or horizontal directions.
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <span class="style4">Colors</span><br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can specify the color with the Stroke and 
                                                        Fill Color tools.<br />
                                                        <br />
                                                        <span class="note">Color Tools:</span><br />
                                                        <img alt="Tool Box : Colors" height="144" 
                                                            src="images/LessonsImages/FLASHLessons/04toolbox_colors.gif" width="185" /><br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <span class="style4">Brush Modes</span><br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can specify the Brush Mode in order to 
                                                        define the way the tool works:<br />
                                                        <ul>
                                                            <li>Paint Normal - paints over lines and fills on the same layer.<br />
                                                            </li>
                                                            <li>Paint Behind - paints in blank areas of the Stage on the same layer, leaving 
                                                                lines and fills unaffected.<br />
                                                            </li>
                                                            <li>Paint Selection - applies a new fill to the selection when you select a fill in 
                                                                the Fill modifier or the Fill panel. (This option is the same as simply 
                                                                selecting a filled area and applying a new fill.)<br />
                                                            </li>
                                                            <li>Paint Fills - paints fills and empty areas, leaving lines unaffected.<br />
                                                            </li>
                                                            <li>Paint Inside - paints the fill in which you start a brush stroke and never 
                                                                paints lines. This works much like a smart coloring book that never allows you 
                                                                to paint outside the lines. If you start painting in an empty area, the fill 
                                                                doesn't affect any existing filled areas.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="note">Brush Modes:</span><br />
                                                        <img alt="Brush Mode Examples" height="80" 
                                                            src="images/LessonsImages/FLASHLessons/03fill_example.gif" width="352" /><br />
                                                        <span class="note">NONE | NORMAL | BEHIND | SELECTION | FILLS | INSIDE</span><br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <span class="style4">Brush Size</span><br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>lso, in the Brush options, there is a drop down 
                                                        that lets you select the size of the brush. Simply click the size you want.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <span class="style4">Brush Shape</span><br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>inally, the Brush options lets you select the 
                                                        shape of the brush. Try experimenting with the different shapes and see what 
                                                        effect each offers.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <span class="style4">Lock Fill</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he last option listed under Brush options, is 
                                                        the Lock Fill option. The explanation for this is a bit tricky.<br />
                                                        <br />
                                                        <span class="fancyfirst">W</span>hen you use the brush tool in it's default 
                                                        state this option is not turned on. Let's assume that you selected a gradient 
                                                        fill and painted something using the brush tool. In this case the brush tool 
                                                        would use the center of your painting as the center for the gradient fill.<br />
                                                        <br />
                                                        <span class="fancyfirst">N</span>ow, if you paint yet another drawing next to 
                                                        the first one, Flash will use the new drawing's center as center for the 
                                                        gradient fill.<br />
                                                        <br />
                                                        <span class="fancyfirst">H</span>owever, had you pressed the &quot;Lock Fill&quot; option 
                                                        before drawing the second painting, Flash will maintain the gradient center from 
                                                        the first painting.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he best way to understand this option is trial 
                                                        and error, so if you don't get the above explanation, then try painting with and 
                                                        without the &quot;Lock Fill&quot; option set. While doing so, make sure that you use a 
                                                        gradient fill for the drawing or you won't see any effect at all (because plain 
                                                        colored fills have no center).<br />
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            LINE TOOL </div>
                                                        <br />
                                                        <br />
                                                        <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                            <tr>
                                                                <td class="main">
                                                                    <div align="left">
                                                                        <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><span 
                                                                            class="text"><br />
                                                                        <img alt="Line Tool" height="25" src="images/LessonsImages/FLASHLessons/linetool.gif" 
                                                                            width="25" />
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he Line tool is used in much the same way that 
                                                                        you would use a real pencil to draw with a ruler. Simply select the tool and 
                                                                        drag on the Stage to draw a straight line between the start and end points.
                                                                        <br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">SHIFT key : Constrain angles</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can press the Shift key while dragging to 
                                                                        constrain possible angles for the line. By default this will only allow for 
                                                                        lines that are either horizontal, vertical or 45 degrees between.<br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Colors</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can specify the color with the Stroke Color 
                                                                        Tool.<br />
                                                                        <br />
                                                                        <span class="note">Color Tools:</span><br />
                                                                        <img alt="Tool Box : Colors" height="144" 
                                                                            src="images/LessonsImages/FLASHLessons/04toolbox_colors.gif" width="185" /><br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Curving</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can turn a straight line into a curve with 
                                                                        the Arrow tool
                                                                        <img alt="Tool Box : Arrow" height="25" 
                                                                            src="images/LessonsImages/FLASHLessons/07arrow.gif" width="25" /><br />
                                                                        <br />
                                                                        1: Make sure the line is not selected (you can do this by clicking somewhere on 
                                                                        an empty spot on the stage).<br />
                                                                        <br />
                                                                        2: Select the Arrow tool.<br />
                                                                        <br />
                                                                        3: Click on the line, and while holding down the mouse button, drag the curve.<br />
                                                                        <br />
                                                                        4: Release the mouse button and your curve is finished.<br />
                                                                        <br />
                                                                        <span class="note">Curving Lines and Edges:</span><br />
                                                                        <img alt="Curving Lines and Corners" height="134" 
                                                                            src="images/LessonsImages/FLASHLessons/corner.gif" width="159" /><br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Moving</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can move a line with the mouse, quite 
                                                                        similar to how you'd turn it into a curve or you can move it with the arrow 
                                                                        keys.
                                                                        <br />
                                                                        <br />
                                                                        1: Select the Arrow tool.<br />
                                                                        <br />
                                                                        2: Make sure the line is selected (you can do this by clicking once on the line 
                                                                        then release the mouse button).<br />
                                                                        <br />
                                                                        3a: Click on the line, and while holding down the mouse button, move it to the 
                                                                        new position.<br />
                                                                        <br />
                                                                        3b: Press the arrow keys on your keyboard to move the line.<br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Precise size and positioning</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can position the line perfectly by using the 
                                                                        info panel.<br />
                                                                        <br />
                                                                        <span class="note">Info Panel : Window &gt; Panels &gt; Info</span><br />
                                                                        <img alt="Panels : Info Panel" height="156" 
                                                                            src="images/LessonsImages/FLASHLessons/01info_panel.gif" width="287" /><br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he &quot;square&quot; connected to the line where it says 
                                                                        &quot;Click this square&quot; is used to set the origin for coordinates - either at top 
                                                                        left or center of the stage.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">F</span>ields for X and Y are used to enter the 
                                                                        position of the selected object.
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">F</span>ields for W and H are used to enter the width 
                                                                        and height of the selected object.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">W</span>hen working with lines, one might think that 
                                                                        height would be 1 for a thin line. However, width and height refers to the 
                                                                        square between the start and end points of the selected object.
                                                                        <br />
                                                                        A horizontal line that is 100 pixels wide and 1 pixel high spans a square of 100 
                                                                        x 1 pixels.<br />
                                                                        A similar line would span a square of 100 x 100 pixels if it was turned 45 
                                                                        degrees.<br />
                                                                        <br />
                                                                        </span>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            OVAL TOOL
                                                            <br />
                                                        </div>
                                                        <br />
                                                        <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                            <tr>
                                                                <td class="main">
                                                                    <div align="left">
                                                                        <span class="text">
                                                                        <br />
                                                                        <img alt="Oval Tool" height="25" src="images/LessonsImages/FLASHLessons/circletool.gif" 
                                                                            width="25" />
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he Oval tool is used to make circular objects. 
                                                                        Simply select the tool and drag on the Stage to draw a circle that spans between 
                                                                        the start and end points.
                                                                        <br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">SHIFT key : Round Circles</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can press the Shift key while dragging to 
                                                                        ensure your circle is perfectly round.<br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Colors</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can specify the colors with the Stroke and 
                                                                        Fill Color Tools.<br />
                                                                        <br />
                                                                        <span class="note">Color Tools:</span><br />
                                                                        <img alt="Tool Box : Colors" height="144" 
                                                                            src="images/LessonsImages/FLASHLessons/04toolbox_colors.gif" width="185" /><br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Ctrl+G : Grouping Outline with Fill</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">W</span>hen you draw a circle, Flash actually creates 
                                                                        two objects: the fill and the outline. This may cause problems if you try to 
                                                                        move your circle to a new position, because if you fail to select both objects, 
                                                                        only the one selected will be moved. To avoid this it's often a good idea to 
                                                                        &quot;group&quot; the outline with the fill, thus locking them together as if it was a 
                                                                        single object.<br />
                                                                        <br />
                                                                        1: Make sure both the fill and the outline is selected.<br />
                                                                        (You can do this in two ways: 1) Select the Arrow tool in the toolbox, and while 
                                                                        holding down the SHIFT key click on both the fill and the outline. 2) Select the 
                                                                        Arrow tool in the toolbox, and drag a rectangle outside your circle)<br />
                                                                        <br />
                                                                        2: Press Ctrl+G to group the selected objects.<br />
                                                                        <br />
                                                                        (If at a later point you want to &quot;break&quot; apart the grouped objects, you can do 
                                                                        it by selecting the grouped object then pressing Ctrl+B).<br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Precise size and positioning</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can position the oval perfectly using the 
                                                                        info panel.<br />
                                                                        <br />
                                                                        <span class="note">Info Panel : Window &gt; Panels &gt; Info</span><br />
                                                                        <img alt="Panels : Info Panel" height="156" 
                                                                            src="images/LessonsImages/FLASHLessons/01info_panel.gif" width="287" /><br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he &quot;square&quot; connected to the line where it says 
                                                                        &quot;Click this square&quot; is used to set the origin for coordinates - either at top 
                                                                        left or center of the stage.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">F</span>ields for X and Y are used to enter the 
                                                                        position of the selected object.
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">F</span>ields for W and H are used to enter the width 
                                                                        and height of the selected object.<br />
                                                                        <br />
                                                                        </span>
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            RECTANGLE TOOL
                                                            <br />
                                                        </div>
                                                        <br />
                                                        <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                            <tr>
                                                                <td class="main">
                                                                    <div align="left">
                                                                        <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                        <span class="text">
                                                                        <br />
                                                                        <img alt="rectangle Tool" height="25" 
                                                                            src="images/LessonsImages/FLASHLessons/squaretool.gif" width="25" />
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he Rectangle tool is used to make rectangular 
                                                                        objects. Simply select the tool and drag on the Stage to draw a rectangle that 
                                                                        spans between the start and end points.
                                                                        <br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">SHIFT key : Proportioned Squares</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can press the Shift key while dragging to 
                                                                        constrain proportions for the rectangle, to ensure your rectangle is a perfect 
                                                                        square.<br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Colors</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can specify the colors with the Stroke and 
                                                                        Fill Color Tools.<br />
                                                                        <br />
                                                                        <span class="note">Color Tools:</span><br />
                                                                        <img alt="Tool Box : Colors" height="144" 
                                                                            src="images/LessonsImages/FLASHLessons/04toolbox_colors.gif" width="185" /><br />
                                                                        <br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Rounded Corners</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can specify the rounding of the corners with 
                                                                        the &quot;Round Rectangle Options&quot; at the bottom of the toolbox.<br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Ctrl+G : Grouping Outline with Fill</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">W</span>hen you draw a rectangle, Flash actually 
                                                                        creates two objects: the fill and the outline. This may cause problems if you 
                                                                        want to move your rectangle to a new position, because if you fail to select 
                                                                        both objects, only the one selected will be moved. To avoid this it's often a 
                                                                        good idea to &quot;group&quot; the outline with the fill, thus locking them together as if 
                                                                        they were a single object.<br />
                                                                        <br />
                                                                        1: Make sure both the fill and the outline are selected.<br />
                                                                        (You can do this in two ways: 1) Select the Arrow tool in the toolbox, and while 
                                                                        holding down the SHIFT key click on both the fill and the outline. 2) Select the 
                                                                        Arrow tool in the toolbox, and drag a rectangle outside your rectangle)<br />
                                                                        <br />
                                                                        2: Press Ctrl+G to group the selected objects.<br />
                                                                        <br />
                                                                        (If at a later point you want to &quot;break&quot; apart the grouped objects, you can do 
                                                                        it by selecting the grouped object then pressing Ctrl+B).<br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Skewing</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">B</span>efore skewing a rectangle make sure it has been 
                                                                        grouped. You can skew the rectangle in two ways.
                                                                        <br />
                                                                        <br />
                                                                        <span class="note">To skew an object by dragging:</span><br />
                                                                        <br />
                                                                        1. Select the object with the Arrow tool.
                                                                        <br />
                                                                        2. Click the Rotate button in the toolbox options.<br />
                                                                        3. Drag one of the centered handles.
                                                                        <br />
                                                                        <img alt="Skewing by dragging" height="47" 
                                                                            src="images/LessonsImages/FLASHLessons/07skew_ab.gif" width="82" /><br />
                                                                        <br />
                                                                        <br />
                                                                        <span class="note">To skew an object using the Transform panel:</span><br />
                                                                        <br />
                                                                        1. Select the object.
                                                                        <br />
                                                                        2. Choose <span class="note">Window &gt; Panels&gt; Transform</span>.
                                                                        <br />
                                                                        3. Click Skew.<br />
                                                                        4. Enter angles for the horizontal and vertical values.
                                                                        <br />
                                                                        <img alt="Skewing using the Transform panel" height="156" 
                                                                            src="images/LessonsImages/FLASHLessons/07transform_inspector.gif" width="218" /><br />
                                                                        <br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Precise size and positioning</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can position the Rectangle perfectly using 
                                                                        the info panel.<br />
                                                                        <br />
                                                                        <span class="note">Info Panel : Window &gt; Panels &gt; Info</span><br />
                                                                        <img alt="Panels : Info Panel" height="156" 
                                                                            src="images/LessonsImages/FLASHLessons/01info_panel.gif" width="287" /><br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he &quot;square&quot; connected to the line where it says 
                                                                        &quot;Click this square&quot; is used to set the origin for coordinates - either at top 
                                                                        left or center of the stage.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">F</span>ields for X and Y are used to enter the 
                                                                        position of the selected object.
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">F</span>ields for W and H are used to enter the width 
                                                                        and height of the selected object.<br />
                                                                        </span>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            ERASER TOOL 
                                                            <br />
                                                        </div>
                                                        <br />
                                                        <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                            <tr>
                                                                <td class="main">
                                                                    <div align="left">
                                                                        <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><span 
                                                                            class="text"><br />
                                                                        <img alt="Erase Tool" height="25" src="images/LessonsImages/FLASHLessons/eraser.gif" 
                                                                            width="25" />
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he Erase tool works similar to a classic 
                                                                        eraser. Simply select the tool and drag on the Stage to erase things.
                                                                        <br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Double-click Eraser Tool: Erase All</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can double click the Eraser tool to delete 
                                                                        everything on the stage. (If you happen to do this by mistake you can always 
                                                                        click Ctrl+Z to undo).<br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">
                                                                        <img alt="Eraser Mode Modifier" height="25" 
                                                                            src="images/LessonsImages/FLASHLessons/erase_options_mode.gif" width="25" /> Using 
                                                                        the Eraser Mode Option</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">I</span>n the options listed at the bottom of the 
                                                                        toolbox you can specify the Eraser Mode:<br />
                                                                        <ul>
                                                                            <li>Erase Normal - erases strokes and fills on the same layer.<br />
                                                                            </li>
                                                                            <li>Erase Fills - erases only fills; strokes are not affected.<br />
                                                                            </li>
                                                                            <li>Erase Lines - erases only strokes; fills are not affected.<br />
                                                                            </li>
                                                                            <li>Erase Selected Fills - erases only the currently selected fills and does not 
                                                                                affect strokes, selected or not. (Select the fills you want to erase before 
                                                                                using the Eraser tool in this mode.)<br />
                                                                            </li>
                                                                            <li>Erase Inside - erases only the fill on which you begin the eraser stroke. If you 
                                                                                begin erasing from an empty point, nothing will be erased. Strokes are 
                                                                                unaffected by the eraser in this mode.<br />
                                                                            </li>
                                                                        </ul>
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">
                                                                        <img alt="Faucet Modifier" height="25" 
                                                                            src="images/LessonsImages/FLASHLessons/faucet.gif" width="25" /> Using the Faucet 
                                                                        Option</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>o remove stroke segments or filled areas:
                                                                        <br />
                                                                        <br />
                                                                        1. Select the Eraser tool and then click the Faucet modifier.
                                                                        <br />
                                                                        <br />
                                                                        2. Click the stroke segment or filled area that you want to delete.
                                                                        <br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">
                                                                        <img alt="Eraser Shape Modifier" height="25" 
                                                                            src="images/LessonsImages/FLASHLessons/erase_options_shape.gif" width="50" /> Using 
                                                                        the Eraser Shape Option</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">I</span>n the options listed at the bottom of the 
                                                                        toolbox there is a drop down that lets you specify the Eraser shape and size.<br />
                                                                        Use this option to customize the size and look of the eraser.<br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Alternative ways to delete things</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>here are other ways to delete things besides 
                                                                        using the Eraser tool.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he most common way is to select one or more 
                                                                        objects and then press the DEL key on the keyboard.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can delete an entire layer by clicking the 
                                                                        layer at the top of your screen and dragging it to the Trash bin.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can delete several frames at once by 
                                                                        selecting the frames (and layers) in the timeline, then right click and choose 
                                                                        &quot;cut frames&quot;.<br />
                                                                        </span>
                                                                        <img alt="" height="25" src="http://www.echoecho.com/p.gif" width="1" /><br />
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            <br />
                                                            INK BOTTLE TOOL 
                                                            <br />
                                                        </div>
                                                        <br />
                                                        <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                            <tr>
                                                                <td class="main">
                                                                    <div align="left">
                                                                        <span class="text">
                                                                        <img alt="Ink Bottle Tool" height="25" 
                                                                            src="images/LessonsImages/FLASHLessons/04ink_bottle.gif" width="25" />
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">T</span>he Ink Bottle tool lets you change the stroke 
                                                                        color, line width, and style of lines or shape outlines.
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">U</span>sing the Ink Bottle tool, rather than selecting 
                                                                        individual lines and objects, makes it easier to change the stroke attributes of 
                                                                        multiple objects at one time.<br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">To use the Ink Bottle tool:</span><br />
                                                                        <br />
                                                                        1. Select the Ink Bottle tool.
                                                                        <br />
                                                                        <br />
                                                                        2. Choose a stroke color as described in Using the Stroke and Fill controls in 
                                                                        the toolbox.
                                                                        <br />
                                                                        <br />
                                                                        <span class="note">Color Tools:</span><br />
                                                                        <img alt="Tool Box : Colors" height="144" 
                                                                            src="images/LessonsImages/FLASHLessons/04toolbox_colors.gif" width="185" /><br />
                                                                        <br />
                                                                        3. Choose line style and line width from the Stroke panel.
                                                                        <br />
                                                                        <br />
                                                                        <span class="note">Stroke Panel : Window &gt; Panels &gt; Stroke</span><br />
                                                                        <img alt="Panels : Stroke" height="156" 
                                                                            src="images/LessonsImages/FLASHLessons/04stroke_inspector.gif" width="310" /><br />
                                                                        <br />
                                                                        4. Click an object on the Stage to apply the stroke modifications.
                                                                        <br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Applying outlines to existing objects:</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can use the stroke tool to apply outlines 
                                                                        even for things that were initially made without outlines.<br />
                                                                        For example, if you initially created a rectangle with no outline, then later 
                                                                        decided you wanted an outline, simply use the Ink Bottle tool as described above 
                                                                        and a new outline will be applied.<br />
                                                                        </span>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            <br />
                                                            PAINT BUCKET TOOL 
                                                            <br />
                                                        </div>
                                                        <br />
                                                        <img alt="Paint Bucket Tool" height="25" 
                                                            src="images/LessonsImages/FLASHLessons/04paint_bucket.gif" width="25" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he Paint Bucket tool fills enclosed areas with 
                                                        color.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>t can both fill empty areas and change the 
                                                        color of already painted areas.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can paint with solid colors, gradient fills, 
                                                        and bitmap fills.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can also use the Paint Bucket tool to adjust 
                                                        the size, direction, and center of gradient and bitmap fills.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <span class="style4">To use the Paint Bucket tool to fill an area: </span>
                                                        <br />
                                                        <br />
                                                        1. Select the Paint Bucket tool.
                                                        <br />
                                                        <br />
                                                        2. Choose a fill color from the color tool box.<br />
                                                        <br />
                                                        <span class="note">Color Tools:</span><br />
                                                        <img alt="Tool Box : Colors" height="144" 
                                                            src="images/LessonsImages/FLASHLessons/04toolbox_colors.gif" width="185" /><br />
                                                        <br />
                                                        3. Click the Gap Size modifier
                                                        <img alt="Gap Size Modifier Option" height="25" 
                                                            src="images/LessonsImages/FLASHLessons/paintbucket_options_gapsize.gif" width="25" /> 
                                                        and choose a gap size option:<br />
                                                        <ul>
                                                            <li>Don't Close Gaps : if you want to close gaps manually before filling the shape. 
                                                                Closing gaps manually can be faster for complex drawings.
                                                                <br />
                                                            </li>
                                                            <li>Choose one of the Close options to have Flash fill a shape that has gaps.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        4. Click the shape or enclosed area that you want to fill.
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <span class="style4">To adjust a gradient or bitmap fill with the Paint Bucket 
                                                        tool:</span><br />
                                                        <br />
                                                        1. Select the Paint Bucket tool.
                                                        <br />
                                                        <br />
                                                        2. Click the Transform Fill
                                                        <img alt="Transform Fill Modifier" height="25" 
                                                            src="images/LessonsImages/FLASHLessons/04modify_fill_button.gif" width="25" />.
                                                        <br />
                                                        <br />
                                                        3. Click an area filled with a gradient or bitmap fill.
                                                        <br />
                                                        Depending on the type of object you're painting you will see different handles:<br />
                                                        <br />
                                                        <span class="note">a. Transform Linear Gradient Fills</span><br />
                                                        <img alt="Transform Linear Fill" height="218" 
                                                            src="images/LessonsImages/FLASHLessons/04scale_linear.gif" width="288" />.<br />
                                                        <br />
                                                        <span class="note">b. Transform Radial Gradient Fills</span><br />
                                                        <img alt="Transform Radial Fill" height="98" 
                                                            src="images/LessonsImages/FLASHLessons/04scale_radial.gif" width="104" />.<br />
                                                        <br />
                                                        <span class="note">c. Transform Bitmap Fills</span><br />
                                                        <img alt="Transform Bitmap Fill" height="78" 
                                                            src="images/LessonsImages/FLASHLessons/04bmp_width.gif" width="226" />.<br />
                                                        <br />
                                                        4. Reshape the fill in any of the following ways:
                                                        <br />
                                                        <br />
                                                        <span class="note">a.</span> To <span class="note">reposition the center point</span>, 
                                                        drag the center point.
                                                        <br />
                                                        <img alt="Reposition center point of fill" height="78" 
                                                            src="images/LessonsImages/FLASHLessons/04bmp_move.gif" width="94" /><br />
                                                        <br />
                                                        <span class="note">b.</span> To <span class="note">change the width</span> of 
                                                        the fill, drag the square handle on the side of the bounding box. (This option 
                                                        resizes only the fill, not the object containing the fill.)
                                                        <br />
                                                        <img alt="Change the width of fill" height="78" 
                                                            src="images/LessonsImages/FLASHLessons/04bmp_width.gif" width="226" /><br />
                                                        <br />
                                                        <span class="note">c.</span> To <span class="note">change the height</span> of 
                                                        the fill, drag the square handle at the bottom of the bounding box.
                                                        <br />
                                                        <img alt="Change the height of fill" height="204" 
                                                            src="images/LessonsImages/FLASHLessons/04bmp_height.gif" width="94" /><br />
                                                        <br />
                                                        <span class="note">d.</span> To <span class="note">rotate the fill</span>, drag 
                                                        the circular rotation handle at the corner. You can also drag the lowest handle 
                                                        on the bounding circle of a circular gradient or fill.
                                                        <br />
                                                        <img alt="Rotate fill" height="123" 
                                                            src="images/LessonsImages/FLASHLessons/04bmp_rotate.gif" width="111" /><br />
                                                        <br />
                                                        <span class="note">e.</span> To <span class="note">scale a linear gradient</span>, 
                                                        drag the square handle at the center of the bounding box.
                                                        <br />
                                                        <img alt="Scale linear fill" height="218" 
                                                            src="images/LessonsImages/FLASHLessons/04scale_linear.gif" width="288" /><br />
                                                        <br />
                                                        <span class="note">f.</span> To <span class="note">change the radius of a 
                                                        circular gradient</span>, drag the middle circular handle on the bounding 
                                                        circle.
                                                        <br />
                                                        <img alt="Scale radial fill" height="98" 
                                                            src="images/LessonsImages/FLASHLessons/04scale_radial.gif" width="104" /><br />
                                                        <br />
                                                        <span class="note">g.</span> To <span class="note">skew or slant a fill within a 
                                                        shape</span>, drag one of the circular handles on the top or right side of the 
                                                        bounding box.
                                                        <br />
                                                        <img alt="Skew a fill inside a shape" height="80" 
                                                            src="images/LessonsImages/FLASHLessons/04bmp_skew.gif" width="163" /><br />
                                                        <br />
                                                        <span class="note">h.</span> To <span class="note">tile (repeat) a bitmap inside 
                                                        a shape</span>, scale the fill.
                                                        <br />
                                                        <img alt="Tile a fill inside a shape" height="70" 
                                                            src="images/LessonsImages/FLASHLessons/04bmp_tile.gif" width="87" /><br />
                                                        <br />
                                                        Note: To see all of the handles when working with large fills or fills close to 
                                                        the edge of the Stage, choose <span class="note">View &gt; Work Area</span>.<br />
                                                        <br />
                                                        <br />
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            EYE DROPPER TOOL
                                                            <br />
                                                        </div>
                                                        <br />
                                                        <table align="center" border="0" cellpadding="2" cellspacing="0" width="520">
                                                            <tr>
                                                                <td class="main">
                                                                    <div align="left">
                                                                        <img alt="" height="8" src="http://www.echoecho.com/p.gif" width="1" /><span 
                                                                            class="text"><br />
                                                                        <img alt="Eye Dropper Tool" height="25" 
                                                                            src="images/LessonsImages/FLASHLessons/04dropper.gif" width="25" />
                                                                        <br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou can use the Eye Dropper tool to copy fill 
                                                                        and stroke attributes from objects.<br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">To use the Eyedropper tool:</span><br />
                                                                        <br />
                                                                        1. Select the Eye Dropper tool and click the object whose attributes you want to 
                                                                        copy. (When you click a stroke, the tool automatically changes to the Ink Bottle 
                                                                        tool. When you click a filled area, the tool automatically changes to the Paint 
                                                                        Bucket tool)<br />
                                                                        <br />
                                                                        2. Click the object that you want to apply the new attributes to.<br />
                                                                        <br />
                                                                        <br />
                                                                        <hr align="center" width="300" />
                                                                        <br />
                                                                        <span class="style4">Using the Eyedropper tool to select a bitmap fill:</span><br />
                                                                        <br />
                                                                        <span class="fancyfirst">R</span>ather than painting with a fixed color or 
                                                                        gradient you can paint using a bitmap image. A very important special use of the 
                                                                        eyedropper tool is to select bitmap fills.<br />
                                                                        <br />
                                                                        1. Place a bitmap image on the stage. Either drag it from your symbol library (<span 
                                                                            class="note">Ctrl+L</span> or <span class="note">Window &gt; Library</span>) or 
                                                                        import a bitmap image from a file (<span class="note">Ctrl+R</span> or
                                                                        <span class="note">File &gt; Import</span>).<br />
                                                                        <br />
                                                                        2. Make sure the imported bitmap is selected. (If not: click on it with the 
                                                                        Arrow tool).<br />
                                                                        <br />
                                                                        3. Press Ctrl+B to break apart the image.<br />
                                                                        <br />
                                                                        4. Select the Eye Dropper tool and click on the image.<br />
                                                                        <br />
                                                                        <span class="fancyfirst">Y</span>ou will now see a miniature of your image in 
                                                                        the Color Fill tool box. Use the Paint Bucket tool to apply the bitmap fill to 
                                                                        an object. (Note: you can apply the fill to any filled object as well as any 
                                                                        closed outlined area.)<br />
                                                                        </span>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            PEN TOOL 
                                                            <br />
                                                        </div>
                                                        <br />
                                                        <br />
                                                        <img alt="Pen Tool" height="25" src="images/LessonsImages/FLASHLessons/03pen.gif" 
                                                            width="25" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he Pen tool is the only tool in the Flash 
                                                        toolbox that doesn't resemble a tool from everyday life. Although the tool 
                                                        symbol looks a lot like an ordinary pen it works quite a bit different.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he purpose of the Pen tool is to allow you to 
                                                        draw precise paths as straight lines or smooth, flowing curves.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou can create straight or curved line segments 
                                                        and adjust the angle and length of straight segments and the slope of curved 
                                                        segments afterwards.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>here are two methods for drawing with the Pen 
                                                        tool:<br />
                                                        <br />
                                                        1. <span class="note">Click</span> to create points on straight line segments<br />
                                                        <br />
                                                        2. <span class="note">Click and drag</span> to create points on curved line 
                                                        segments.
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">E</span>ach method is described below.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4">To draw straight lines with the Pen tool:</span><br />
                                                        <br />
                                                        1. Select the Pen tool.
                                                        <br />
                                                        <br />
                                                        2. Click on the stage to set points, and watch how Flash automatically connects 
                                                        points as you set them.<br />
                                                        <img alt="Using the Pen Tool" height="192" 
                                                            src="images/LessonsImages/FLASHLessons/03pen_line.gif" width="188" />
                                                        <br />
                                                        <br />
                                                        3. To complete the path leaving it as either an open or closed shape. Do one of 
                                                        the following:
                                                        <br />
                                                        <br />
                                                        3a. <span class="note">To complete an open path</span>, double click the last 
                                                        point or click the Pen tool in the toolbox, or Control-click (Windows) or 
                                                        Command-click (Macintosh) anywhere away from the path.
                                                        <br />
                                                        <br />
                                                        3b. <span class="note">To close a path</span>, position the Pen tool over the 
                                                        first anchor point. A small circle appears next to the pen tip when it is 
                                                        positioned correctly. Click to close the path, and watch how Flash automatic 
                                                        adds a fill once the path becomes a closed outline.<br />
                                                        <img alt="Closing a path with the Pen Tool" height="244" 
                                                            src="images/LessonsImages/FLASHLessons/03closing_pen_line.gif" width="146" />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <span class="style4">To draw curves with the Pen tool:</span><br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>irst look at this 4 step example:<br />
                                                        <br />
                                                        <span class="note">An example of curve drawing with the pen tool</span><br />
                                                        <img alt="Pen Toll Curve Example" height="579" 
                                                            src="images/LessonsImages/FLASHLessons/pentool_example.gif" width="281" />
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">1</span>. Select the pen tool and click twice to create 
                                                        a straight line - on the second click keep the mouse button down.<br />
                                                        <br />
                                                        <span class="fancyfirst">2</span>. Drag the mouse towards yourself - which will 
                                                        cause the control line to appear. The control line is pulled in the one end and 
                                                        has a drag point in the other end.<br />
                                                        <br />
                                                        <span class="fancyfirst">3</span>. Move the mouse from side to side (B) and 
                                                        forward and down (A)- still holding down the button, and see how the drag point 
                                                        moves accordingly.<br />
                                                        The drag point defines both how much and in which direction the initial straight 
                                                        line is dragged.<br />
                                                        <br />
                                                        <span class="fancyfirst">4</span>. When the curve on the initial straight line 
                                                        is shaped the way you want it release the mouse button, and the end result 
                                                        appears while the control line disappears.<br />
                                                        <br />
                                                            </span>
            <DIV align=center><A 
            href="#top">Top</A></DIV></p>
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
                                                PostBackUrl="~/FLASH_L1.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/FLASH_L3.aspx">Next &gt;&gt;</asp:LinkButton>
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
