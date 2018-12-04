<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="DreamWeaver_L3.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>DreamWeaver Tutorials</TITLE>
<META content="text/html; charset=windows-1256" http-equiv=Content-Type>
<META name=Description 
content="Lesson 1 on the VB IDE, the environment, creating a Project, creating a form">
<META name=Keywords 
content="VB 6, IT training, course, application, computer programming, file processing, database">
<META name=Distribution content=Global>
<META name=Rating content=General><LINK rel=StyleSheet type=text/css 
href="images\LessonsImages\DREAMWEAVERLessons\newstyles2.css">
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
        DestinationPageUrl="~/DreamWeaver_L3.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img alt="" 
                    src="images/Dreamweaver.JPG" style="width: 204px; height: 85px" /><br />
                &nbsp;
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/DreamWeaver_L2.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/DreamWeaver_Contents.aspx">Back to DreamWeaver Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="DreamWeaver_L4.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 3 - Basic Features   </H2>
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
                                                        <h4>
                                                            <a name="2C"></a><strong>C. Basic Elements </strong>
                                                        </h4>
                                                        <p>
                                                            This section covers how to insert text, hyperlinks, images, horizontal rules and 
                                                            tables; how to change their appearance using the <b>Properties</b> panel; and 
                                                            how to copy and import text from Word.</p>
                                                        <p>
                                                            We will begin building our course web site from scratch, and as we develop the 
                                                            site we will use more sophisticated elements. In this section, you will make a 
                                                            basic page. Many of the following steps are similar to what would be done in a 
                                                            normal word processing program.</p>
                                                        <p>
                                                            Type the title of the course in the document window:</p>
                                                        <p align="center">
                                                            <img alt="Tutorial Image" height="119" 
                                                                src="images/LessonsImages/DREAMWEAVERLessons/2b1.GIF" />
                                                        </p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <p>
                                                            From the <strong>File</strong> menu, <strong>Save</strong> your web page now in 
                                                            the <b>Tutorial</b> folder as <strong>start.html</strong>. (Note: We will 
                                                            discuss <a href="#save">saving and file names</a> a more in the next section.)</p>
                                                        <p>
                                                            Use a soft return to separate the line into two. Move the cursor to right after 
                                                            the colon. While holding down the <b>Shift</b> key, press the <b>Enter</b> key.
                                                        </p>
                                                        <blockquote>
                                                            <div align="center">
                                                                <center>
                                                                    <table bgcolor="#33ffcc" border="1" cellpadding="10" cellspacing="0" 
                                                                        width="80%">
                                                                        <tr>
                                                                            <td align="middle">
                                                                                <p class="text">
                                                                                    <b>Soft Returns and Hard Returns</b></p>
                                                                                <blockquote>
                                                                                    <p class="text">
                                                                                        Pressing the <b>Enter</b> key results in a hard return, and a line break that 
                                                                                        acts like double-space.</p>
                                                                                    <p class="text">
                                                                                        Holding the <b>Shift</b> key while pressing the <b>Enter</b> key results in a 
                                                                                        soft return, and will act like a single space.</p>
                                                                                </blockquote>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </center>
                                                            </div>
                                                        </blockquote>
                                                        Highlight the text by clicking and holding at the beginning of the text and 
                                                        dragging the cursor to the end of the text.
                                                        <blockquote>
                                                            <div align="center">
                                                                <img alt="Tutorial Image" height="141" 
                                                                    src="images/LessonsImages/DREAMWEAVERLessons/2b2.GIF" 
                                                                    width="420" /></div>
                                                        </blockquote>
                                                        <p>
                                                            With the text selected, change its appearance by changing its properties in the 
                                                            Properties panel.
                                                        </p>
                                                        <p>
                                                            In the drop-down menu, change the format to <b>Heading 3</b></p>
                                                        <p>
                                                            In the drop-down menu, change the font to <b>Arial,Helvetica,sans-serif</b>
                                                        </p>
                                                        <p>
                                                            Selecting from the four alignment buttons on the right, change the alignment to
                                                            <b>Center</b></p>
                                                        <p>
                                                            The <b>bold</b> and <i>italic</i> features are in this panel (underlines are 
                                                            conventionally reserved in Web documents for hyperlinks). Indenting and list 
                                                            features are also be found here.Your text selection should now look like this:</p>
                                                        <p align="center">
                                                            <img alt="Tutorial Image" height="212" 
                                                                src="images/LessonsImages/DREAMWEAVERLessons/2b3.GIF" 
                                                                width="565" />
                                                        </p>
                                                        <blockquote>
                                                            <blockquote>
                                                                <div align="center">
                                                                    <center>
                                                                        <table bgcolor="#33ffcc" border="1" cellpadding="10" cellspacing="0" 
                                                                            width="80%">
                                                                            <tr>
                                                                                <td align="middle">
                                                                                    <p class="text">
                                                                                        <b>The Undo Command</b></p>
                                                                                    <blockquote>
                                                                                        <p class="text">
                                                                                            If you ever make a mistake, you can undo it by choosing <b>Edit &gt; Undo</b> on 
                                                                                            the top menu or the equivalent keyboard shortcut (as noted in the menu).</p>
                                                                                    </blockquote>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </center>
                                                                </div>
                                                            </blockquote>
                                                        </blockquote>
                                                        <p>
                                                            Enter a page title under <b>Modify &gt; Page Properties</b>. You can change other 
                                                            page settings here.</p>
                                                        <p>
                                                            Insert a horizontal rule right after the text. A horizontal rule visually 
                                                            divides the page up and often makes the page more clear. Click the mouse at the 
                                                            end of the selected text to place the cursor at the end of the line. Press <b>
                                                            Enter</b> once to start a new line. From the <b>Insert Panel</b> on the left, 
                                                            choose the object that is shown below:
                                                        </p>
                                                        <blockquote>
                                                            <div align="center">
                                                                <img alt="Tutorial Image" height="36" 
                                                                    src="images/LessonsImages/DREAMWEAVERLessons/2b4.GIF" 
                                                                    width="31" />
                                                            </div>
                                                        </blockquote>
                                                        Alternatively, you can insert horizontal rules by choosing <b>Insert &gt; 
                                                        Horizontal Rule</b> from the top menu.
                                                        <blockquote>
                                                            <blockquote>
                                                                <div align="center">
                                                                    <center>
                                                                        <table bgcolor="#33ffcc" border="1" cellpadding="10" cellspacing="0" 
                                                                            width="80%">
                                                                            <tr>
                                                                                <td align="middle">
                                                                                    <p class="text">
                                                                                        <b>Moving the cursor with the arrow keys</b></p>
                                                                                    <blockquote>
                                                                                        <p class="text">
                                                                                            Right after you insert the horizontal rule, it is selected. To place the cursor 
                                                                                            right after the horizontal rule, press the<b> -&gt;</b> key on your keyboard.</p>
                                                                                    </blockquote>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </center>
                                                                </div>
                                                            </blockquote>
                                                        </blockquote>
                                                        Insert an image on the page. Start a new line and change the alignment to 
                                                        left-aligned with the <b>Properties</b> panel at the bottom of the screen. From 
                                                        the <b>Common<strong> </strong></b>tab in the <strong>Insert</strong> menu on 
                                                        top, choose the object that is shown below:
                                                        <blockquote>
                                                            <div align="center">
                                                                <img alt="Tutorial Image" height="29" 
                                                                    src="images/LessonsImages/DREAMWEAVERLessons/2b5.GIF" 
                                                                    width="25" /></div>
                                                        </blockquote>
                                                        <p>
                                                            (You can also choose <b>Image</b> from the <b>Insert</b> menu). A new window 
                                                            will appear asking you to specify where the image file is. Navigate to the 
                                                            folder where you saved the tutorial files and select the image named 
                                                            &quot;collage.jpg&quot;. Select the image file and click <b>OK</b>. Dreamweaver will then 
                                                            insert the image in the page. With each substantial image you insert, you should 
                                                            also enter an accompanying ALT tag - within the <b>Properties</b> panel - for 
                                                            users unable to see images.</p>
                                                        <p>
                                                            Add an <i>absolute</i> hyperlink to the Haverford College home page. Start a new 
                                                            line and type the words <b>Haverford College</b>. Now highlight these words. In 
                                                            the Properties panel, type in the URL of the Haverford home page, <b>
                                                            http://www.haverford.edu</b>, in link section. When you press <b>Enter</b>, the 
                                                            link will be added, indicated by the underline and a change in the text's color.
                                                            <br />
                                                            <br />
                                                            Note: Rather than typing &quot;http://www.haverford.edu&quot; you can cut and paste this 
                                                            from your browser window. This will help ensure that you type the link 
                                                            correctly. Not all links are eligible as hyperlinks. Some links are not stable, 
                                                            meaning that the same page may not always have the same address; you cannot link 
                                                            to such pages directly.
                                                        </p>
                                                        <blockquote>
                                                            <div align="center">
                                                                <img alt="Tutorial Image" height="210" 
                                                                    src="images/LessonsImages/DREAMWEAVERLessons/2b6.GIF" 
                                                                    width="564" />
                                                            </div>
                                                            <blockquote>
                                                                <blockquote>
                                                                    <table align="center" bgcolor="#33ffcc" border="1" cellpadding="10" 
                                                                        cellspacing="0" width="80%">
                                                                        <tr>
                                                                            <td align="middle">
                                                                                <p class="text">
                                                                                    <b>About Links</b></p>
                                                                                <blockquote>
                                                                                    <p class="text">
                                                                                        When linking to another web page you can either use an <strong>absolute link</strong> 
                                                                                        (such as <em>http://www.haverford.edu</em>) with the full address of a file, or 
                                                                                        a <strong>relative link</strong> (such as <em>filename.html</em>), which points 
                                                                                        to a file that is on the same web site--often in the same folder or in a 
                                                                                        subfolder--relative to the page linking that file.
                                                                                    </p>
                                                                                    <p class="text">
                                                                                        You can also link to a specified spot within a web page. Such a spot is called 
                                                                                        an <strong>anchor link</strong>. You need to first create an anchor in your web 
                                                                                        page, and then link to it.</p>
                                                                                    <p class="text">
                                                                                        One other popular type of link is a <strong>mailto link</strong>. This type of 
                                                                                        link lets your readers email a comment or question to the person at the linked 
                                                                                        address.</p>
                                                                                </blockquote>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </blockquote>
                                                            </blockquote>
                                                        </blockquote>
                                                        <p>
                                                            Now is a good time to save your file and to start work on a related file. From 
                                                            the <strong>File</strong> menu select <strong>Save</strong>. (See
                                                            <a href="#save">more about saving files</a> below.)</p>
                                                        <p>
                                                            Create a separate file for a related web page called &quot;about.html&quot;</p>
                                                        <p>
                                                            Add a description of the course, copying text from a Microsoft Word document. 
                                                            Start your text editing program and open the file named &quot;blurb.doc&quot; (included 
                                                            with this tutorial). Highlight the text and copy it. In Dreamweaver, start a new 
                                                            line under the Haverford link and choose <b>Edit &gt; Paste</b>.
                                                        </p>
                                                        <p>
                                                            Notice that Dreamweaver does not include any font or size attributes from the 
                                                            text editor. To do so, you need to import Word HTML into Dreamweaver. We will 
                                                            try that now.
                                                        </p>
                                                        <p>
                                                            Choose <b>File &gt; Import &gt; Import Word HTML</b> (note that you can import other 
                                                            file formats here as well). Open the &quot;blurb.html&quot; included with the tutorial 
                                                            file. This HTML file was saved using Word's <b>Save as HTML</b> feature. In the 
                                                            window that opens, leave the default selections as they are and click <b>OK</b>. 
                                                            A new Web page window opens with the description text which retains the font and 
                                                            size attributes. Highlight the text and copy it. Your Web page window is now 
                                                            hidden behind this new one. Close the new Web window without saving. Highlight 
                                                            the text that we pasted before, and choose <b>Edit &gt; Paste</b>.
                                                        </p>
                                                        <blockquote>
                                                            <blockquote>
                                                                <div align="center">
                                                                    <center>
                                                                        <table bgcolor="#33ffcc" border="1" cellpadding="10" cellspacing="0" 
                                                                            width="80%">
                                                                            <tr>
                                                                                <td align="middle">
                                                                                    <p class="text">
                                                                                        <b>Clean Up Word HTML</b></p>
                                                                                    <blockquote>
                                                                                        <p class="text">
                                                                                            When a document is saved using MS Word's <b>Save as HTML</b> feature, Word 
                                                                                            imbeds many tags into the document that some programs will not use. To remove 
                                                                                            these tags, choose <b>Commands &gt; Clean up Word HTML</b>.</p>
                                                                                    </blockquote>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </center>
                                                                </div>
                                                            </blockquote>
                                                        </blockquote>
                                                        <p>
                                                            Because the image that was inserted takes up the whole row space it is in, there 
                                                            is an awkward blank space in the middle of our page. We can use tables to solve 
                                                            problems like these. Using tables, textual and graphical elements can be 
                                                            arranged better. To position the cursor right before the image, click the image 
                                                            to select it and then press the <b>&lt;-</b> arrow key. With the cursor in front of 
                                                            the image, start a new line and then use the <b>Up</b> key to move to this new 
                                                            line.</p>
                                                        <p>
                                                            From the <b>Common<strong> </strong></b>tab in the <strong>Insert</strong> menu 
                                                            on top, choose the object that is shown below:
                                                        </p>
                                                        <blockquote>
                                                            <div align="center">
                                                                <img alt="Tutorial Image" height="31" 
                                                                    src="images/LessonsImages/DREAMWEAVERLessons/2b7.GIF" 
                                                                    width="33" /></div>
                                                        </blockquote>
                                                        (You can also choose <b>Table</b> from the <b>Insert</b> menu). In the window 
                                                        that pops up, enter the following settings:
                                                        <blockquote>
                                                            <div align="center">
                                                                <img alt="Tutorial Image" height="191" 
                                                                    src="images/LessonsImages/DREAMWEAVERLessons/2b8.GIF" 
                                                                    width="359" /></div>
                                                        </blockquote>
                                                        <p>
                                                            We will now copy the image and the hyperlink into the left cell of the table, 
                                                            and the description text into the right cell of the table. This time we will use 
                                                            cut and paste because we don't want two copies of everything on the page. 
                                                            Highlight the image and hyperlink and choose <b>Edit &gt; Cut</b>. Click inside the 
                                                            left cell of the table and choose <b>Edit &gt; Paste</b> (keyboard shortcuts for 
                                                            these commands will also work). You can also click and drag the objects into the 
                                                            appropriate places. Now cut and then paste the description text into the right 
                                                            cell. Your Web page should now look like this.</p>
                                                        <p align="center">
                                                            <img alt="Tutorial Image" height="200" 
                                                                src="images/LessonsImages/DREAMWEAVERLessons/2b9.GIF" 
                                                                width="425" /></p>
                                                        <p>
                                                            Check the spelling in the page.<b> </b>You can add words to Dreamweaver's 
                                                            personal dictionary as needed.
                                                        </p>
                                                        <blockquote>
                                                            <blockquote>
                                                                <div align="center">
                                                                    <center>
                                                                        <table bgcolor="#33ffcc" border="1" cellpadding="10" cellspacing="0" 
                                                                            width="80%">
                                                                            <tr>
                                                                                <td align="middle">
                                                                                    <p class="text">
                                                                                        <b>Spell Checking</b></p>
                                                                                    <blockquote>
                                                                                        <p class="text">
                                                                                            To spell-check a document, choose <b>Check Spelling </b>from the<b> Text</b> 
                                                                                            menu.</p>
                                                                                    </blockquote>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </center>
                                                                </div>
                                                            </blockquote>
                                                        </blockquote>
                                                        <p>
                                                            You now have a basic Web page. To preview your Web page in a browser, choose <b>
                                                            File &gt; Preview in Browser &gt; [Browser].</b> It is best to preview your page in 
                                                            several browsers (for example, Netscape and Internet Explorer). It may look 
                                                            different with different browsers.</p>
                                                        <h4>
                                                            <a name="save"></a>D. Save your File Locally</h4>
                                                        <p>
                                                            When you save your file, you need to consider the structure of your web site and 
                                                            use a legal file name. From the <strong>File</strong> menu, select <strong>Save</strong>.</p>
                                                        <p>
                                                            Be sure to save your files into the top level of your site (the top folder) or 
                                                            the correct subfolder. This should follow the structure determined during your
                                                            <a href="#2A">site definition process</a> discussed above.</p>
                                                        <p>
                                                            You also <strong>need to follow the general rules for filenames on the web</strong>.
                                                        </p>
                                                        <ol>
                                                            <li>Use proper extensions (.html, .jpeg, .gif) </li>
                                                            <li>No spaces, no slashes, no colons, no percent signs, no asterisks </li>
                                                            <li>If in doubt, stick with letters and numbers only </li>
                                                            <li>Special file names: welcome.html, index.html </li>
                                                        </ol>
                                                        <p>
                                                            For additional information about filenames, see the ACC web page,
                                                            <a href="http://www.haverford.edu/acc/webdev/publishing/naming.html">Naming Your 
                                                            Web Files and Folders</a>.</p>
                                                        <h4>
                                                            <a name="2D"></a><strong>E. Publishing the Site</strong>
                                                        </h4>
                                                        <p>
                                                            Once you have the page the way you want it, you are ready to post it for all to 
                                                            see. There are several methods with which to post pages. Refer to the special 
                                                            instructions for
                                                            <a href="http://www.haverford.edu/acc/webdev/webdev-faculty.html">faculty</a> or
                                                            <a href="http://www.haverford.edu/acc/webdev/webdev-student.html">students</a> 
                                                            (linked from the ACC home page) to find out where you can post.</p>
                                                        <p>
                                                            Regardless of where you are posting, Dreamweaver provides a handy tool to help 
                                                            you with this process. In this section we will go through the steps necessary to 
                                                            put a web page online using Dreamweaver.</p>
                                                        <p>
                                                            <b>Caution: Only use Dreamweaver site definition features you understand. There 
                                                            are some features that can potentially delete or change files posted by others 
                                                            in your work group.</b>
                                                        </p>
                                                        <p>
                                                            Open the <b>Site Files</b> window. You can open this window by choosing <b>Site&gt; 
                                                            Site Files</b>.
                                                        </p>
                                                        <p>
                                                            In the window that opens, choose <b>Edit Sites</b> as shown below.
                                                        </p>
                                                        <blockquote>
                                                            <div align="center">
                                                                <img alt="Tutorial Image" height="158" 
                                                                    src="images/LessonsImages/DREAMWEAVERLessons/2c1[1]..GIF" 
                                                                    width="488" /></div>
                                                        </blockquote>
                                                        <p>
                                                            Select the site you are using, <i><b>Tutorial</b></i>, and click on <b>Edit</b>.</p>
                                                        <p>
                                                            Select <b>Remote Info</b> on the left, and enter the relevant information. The 
                                                            information you enter varies, depending upon the system from which you are 
                                                            connecting, and whether you are<a 
                                                                href="http://www.haverford.edu/acc/webdev/webdev-faculty.html"> posting to 
                                                            the College's official web server</a> (www.haverford.edu),<a 
                                                                href="http://www.haverford.edu/acc/webdev/webdev-student.html"> posting to 
                                                            the student web server</a> (student.haverford.edu), or posting to another web 
                                                            server at Haverford or elsewhere.
                                                        </p>
                                                        <p>
                                                            Make sure you enter the correct <strong>access</strong> method server name or 
                                                            location. In most cases you will want to access the web server via <strong>
                                                            Local/Network</strong>. However, if you are off-campus, you may need to access 
                                                            via <strong>FTP</strong>. Either way, you need a valid password to access the 
                                                            server. If you are accessing the server via Local/Network, <strong>you may also 
                                                            need to mount the server before you can set up or use the Dreamweaver site 
                                                            management tool</strong>. Again, refer to the instructions for
                                                            <a href="http://www.haverford.edu/acc/webdev/webdev-faculty.html">faculty</a> or
                                                            <a href="http://www.haverford.edu/acc/webdev/webdev-student.html">students</a> 
                                                            (linked from the ACC home page) to find out how to access the server you need 
                                                            from the system you are using.</p>
                                                        <h5>
                                                            From Windows PC to www.haverford.edu</h5>
                                                        <blockquote>
                                                            <p>
                                                                If you are posting to the college web (www.haverford.edu) server from a PC.</p>
                                                            <p align="center">
                                                                <img alt="Tutorial Image" height="278" 
                                                                    src="images/LessonsImages/DREAMWEAVERLessons/2c3new.GIF" 
                                                                    width="564" /></p>
                                                            <p>
                                                                Click <b>OK</b>.</p>
                                                        </blockquote>
                                                        <h5>
                                                            From a Macintosh to www.haverford.edu</h5>
                                                        <blockquote>
                                                            <p>
                                                                If you are posting from a Macintosh to www.haverford.edu, Then use the following 
                                                                settings:
                                                            </p>
                                                            <ol>
                                                                <li><strong>Mount webpublish.haverford.edu</strong> in the HC ACC Services AppleTalk 
                                                                    zone. </li>
                                                                <li><strong>Edit the site definition</strong> </li>
                                                                <li>Select the <strong>Advanced</strong> menu. </li>
                                                                <li>Select <strong>Remote</strong> <strong>Info</strong> from the left menu.
                                                                </li>
                                                                <li>Where prompted for <strong>Access</strong> type, select<strong> Local/Network</strong>.
                                                                </li>
                                                                <li>Where prompted for <strong>Remote Folder</strong> select <strong>
                                                                    webpublish.haverford.edu:www:<em>your department folder</em></strong> </li>
                                                            </ol>
                                                        </blockquote>
                                                        You are ready to upload the files onto the server. Back on the <b>Site Files</b> 
                                                        window, click on the <b>Connect </b>button (<img height="36" 
                                                            src="images/LessonsImages/DREAMWEAVERLessons/connect.gif" 
                                                            width="35" />). Once connected, highlight the &quot;start.html&quot; file and the 
                                                        &quot;download&quot; folder. Then click on <b>Put</b> (the blue up arrow). Dreamweaver 
                                                        uses the same directory structure that is on your computer. Your files are now 
                                                        online; you can use your Web browser to view the page by entering the correct 
                                                        URL. Once the file is posted, you can use Dreamweaver's <b>Get</b> (the green 
                                                        down arrow) and <b>Refresh</b> (the dark blue circular arrow) buttons are used 
                                                        to download and synchronize files on the Web server with those on your 
                                                        computer.You can then make any changes needed to your file, and post again. This 
                                                        is useful for correcting any errors, or making other changes to your page(s) 
                                                        now, or in the future.
                                                        <p>
                                                            &nbsp;</p>
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
                    InsertCommand="INSERT DreamWeaver_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    
                      
                      
                      
                      
                      
                      SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [DreamWeaver_tblComments]">
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
                    PostBackUrl="~/DreamWeaver_Contents.aspx">Back to DreamWeaver Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/DreamWeaver_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/DreamWeaver_L4.aspx">Next &gt;&gt;</asp:LinkButton>
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
