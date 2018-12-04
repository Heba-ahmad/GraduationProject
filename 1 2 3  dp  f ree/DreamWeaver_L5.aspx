<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="DreamWeaver_L5.aspx.cs" Inherits="_Default" %>

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
        DestinationPageUrl="~/DreamWeaver_L5.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img alt="" src="images/Dreamweaver.JPG" style="width: 204px; height: 85px" />&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/DreamWeaver_L4.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/DreamWeaver_Contents.aspx">Back to DreamWeaver Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="DreamWeaver_L6.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 5 -  Advanced Features   </H2>
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
                                                            <a name="3A"></a><strong>A. Site Management</strong></h4>
                                                        <p>
                                                            To make changes in all pages of your site, the <b>Edit &gt; Find and Replace</b> 
                                                            command from the Site Files window is useful. All other site management 
                                                            functions are listed in Dreamweaver under the <b>Site</b> menu. Even if you are 
                                                            not using Dreamweaver’s FTP functions (described above), you can still use the
                                                            <b>Edit Sites</b> command to organize your files (but not transfer them between 
                                                            your computer and the Web server). Also, you must define your site in order to 
                                                            work with Templates and Library Objects.
                                                        </p>
                                                        <p>
                                                            Selecting <b>Site &gt; Site Map</b> will display a folder tree of your site. From 
                                                            here you can drag and drop files, and delete and rename files as needed.
                                                        </p>
                                                        <p>
                                                            Dreamweaver will prompt you when you make a change that effects other pages (for 
                                                            example if you rename a page that other pages in your site link to), and ask you 
                                                            if the filenames and links in your site should be automatically changed. In most 
                                                            cases you will want Dreamweaver to make automatic adjustments as needed. Another 
                                                            useful tool in the <b>Site</b> menu is the <b>Check Links Sitewide</b> command. 
                                                            This is used to automatically check and fix dead links within your pages (it 
                                                            does not check for dead links pointing to external sites).</p>
                                                        <h4>
                                                            <a name="3B"></a><strong>B. Rollovers and JavaScript Behaviors</strong></h4>
                                                        <p>
                                                            A rollover image is an image that changes when the mouse cursor hovers over it. 
                                                            Rollover images are currently used on the <a href="http://www.haverford.edu/">
                                                            Haverford College Homepage</a>.
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
                                                                                        <b>Why use Rollovers?</b></p>
                                                                                    <blockquote>
                                                                                        <p class="text">
                                                                                            Web designers usually use rollovers to add interactive elements to their web 
                                                                                            sites. Rollovers are usually used to embellish graphic navigation menus. The 
                                                                                            downside to using many rollovers is that it slows down the loading of a site, 
                                                                                            because two images need to be loaded for each rollover.</p>
                                                                                    </blockquote>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </center>
                                                                </div>
                                                            </blockquote>
                                                        </blockquote>
                                                        <p>
                                                            Start a new line after the description within the table. From the <b>Common<strong>
                                                            </strong></b>tab in the <strong>Insert</strong> menu on top, click the rollover 
                                                            button:</p>
                                                        <p align="center">
                                                            <img alt="Tutorial Image" height="28" 
                                                                src="images/LessonsImages/DREAMWEAVERLessons/2d1.GIF" 
                                                                width="34" /></p>
                                                        <p>
                                                            In the options windows that appears, enter the following information (you can 
                                                            click the <b>Browse...</b> button to locate and select the image files):</p>
                                                        <p align="center">
                                                            <img alt="Tutorial Image" height="234" 
                                                                src="images/LessonsImages/DREAMWEAVERLessons/2d2.GIF" 
                                                                width="569" /></p>
                                                        <p>
                                                            Click <b>OK</b>. That's it! To see the rollover effect, preview the page in your 
                                                            browser.</p>
                                                        <p>
                                                            Rollovers are a type of JavaScript command. You can use other JavaScript 
                                                            commands, such as browser checks and popup messages, using Dreamweaver's <b>
                                                            Behaviors</b> feature. Now let's try another way of adding a rollover image by 
                                                            using Dreamweaver's <b>Behaviors</b>. This will serve as an introduction to how 
                                                            to attach behaviors to objects.</p>
                                                        <p>
                                                            Insert an image by clicking on the image object in the <b>Insert Panel</b>. 
                                                            Insert the arrow_up.GIF image.</p>
                                                        <p>
                                                            Select the &quot;start&quot; graphic that was inserted and open the <b>Behaviors</b> 
                                                            window. You can open the Behaviors window by choosing <b>Window &gt; Behaviors</b>, 
                                                            or by clicking the small gear icon on the bottom right of the document window. 
                                                            Click on the <b>+</b> sign and choose <b>Swap Image</b> as shown below.</p>
                                                        <p align="center">
                                                            <img alt="Tutorial Image" height="382" 
                                                                src="images/LessonsImages/DREAMWEAVERLessons/2d3.GIF" 
                                                                width="504" /></p>
                                                        <p>
                                                            In the window that appears, select the arrow_down.GIF image as shown below (do 
                                                            not change the other settings).
                                                        </p>
                                                        <blockquote>
                                                            <div align="center">
                                                                <img alt="Tutorial Image" height="211" 
                                                                    src="images/LessonsImages/DREAMWEAVERLessons/2d4.GIF" 
                                                                    width="520" />
                                                            </div>
                                                        </blockquote>
                                                        <p>
                                                            Click <b>OK</b>. To see the rollover effect, preview the page in your browser. 
                                                            If you are not comfortable writing JavaScript code, you can use the <b>Behaviors</b> 
                                                            window to make Dreamweaver write more scripts for you.</p>
                                                        <h4>
                                                            <a name="3C"></a><strong>C. Templates</strong></h4>
                                                        <p>
                                                            In this section, you will learn how to use templates to simplify site 
                                                            management. Templates are useful if you have several pages that you want to 
                                                            contain consistent formatting and elements. Note that you must have first 
                                                            defined your site (via the <b>Site</b> menu) before working with Templates.</p>
                                                        <p>
                                                            Right now, clicking on the rollover doesn't do anything. We would like this 
                                                            &quot;start&quot; graphic to link us to a page with more information on the course. But to 
                                                            make that link, we need another Web page We could just create another Web page 
                                                            by going through all the insertion steps in the beginning of the tutorial, but 
                                                            Dreamweaver gives us two other ways to simplify repeated elements.
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
                                                                                        <b>What's a Template?</b></p>
                                                                                    <blockquote>
                                                                                        <p class="text">
                                                                                            A Web page template is a foundation that you can use to build other web pages 
                                                                                            that use the same structure and elements over and over again. A template is 
                                                                                            defined with editable and uneditable regions. Typically, Web designers want a 
                                                                                            consistent look, and templates allow a Web designer to achieve this easily. More 
                                                                                            importantly, <i>changing the template itself changes all pages that use the 
                                                                                            template</i>, making it easy to make site-wide changes.</p>
                                                                                    </blockquote>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        <p>
                                                                            &nbsp;</p>
                                                                    </center>
                                                                </div>
                                                            </blockquote>
                                                        </blockquote>
                                                        <p>
                                                            We will first create a template of a Web page using the one we already have. 
                                                            Choose <b>File &gt; Save as Template</b>. Name it &quot;Tutorial&quot;.</p>
                                                        <p>
                                                            We now need to tell Dreamweaver which parts of the page are editable and which 
                                                            are uneditable. Highlight the table by clicking on the edge, and then choose <b>
                                                            Insert&gt; Template Objects &gt; Editable Region</b>. When it asks for a name, enter 
                                                            &quot;table&quot;. The other commands under <b>Modify &gt; Templates</b> and <strong>Insert &gt; 
                                                            Template Objects </strong>are used to define and edit regions in your template.
                                                        </p>
                                                        <blockquote>
                                                            <div align="center">
                                                                <center>
                                                                    <table bgcolor="#33ffcc" border="1" cellpadding="10" cellspacing="0" 
                                                                        width="80%">
                                                                        <tr>
                                                                            <td align="middle">
                                                                                <p class="text">
                                                                                    <b>Editable and Uneditable Regions</b></p>
                                                                                <blockquote>
                                                                                    <p class="text">
                                                                                        Editable regions are regions that can be altered when we create a Web page with 
                                                                                        a template. Uneditable regions are those that individual pages cannot alter. 
                                                                                        Uneditable regions can only be updated site-wide when the original template is 
                                                                                        altered.
                                                                                    </p>
                                                                                </blockquote>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </center>
                                                            </div>
                                                        </blockquote>
                                                        <p>
                                                            Before we create the new page with the template, we need to apply this template 
                                                            to the page we already have so that it too gets updated when we change the 
                                                            template. Close the template window, and open your &quot;start.html&quot; page. You can do 
                                                            this by opening the <b>Site Files</b> window and double clicking on the file, or 
                                                            by choosing <b>File</b> and selecting one of the recently opened files.
                                                        </p>
                                                        <p>
                                                            With the original Web page open, choose <b>Modify &gt; Templates &gt; Apply Template 
                                                            to Page</b>. Choose the Tutorial template and assign the Document Body to the 
                                                            Table region and the Document Head to the Head region. Delete the parts of the 
                                                            document that have duplicated. You will now find that the main part of the 
                                                            document is outlined in yellow, marking it as a template, and the editable 
                                                            regions are outlined in blue.</p>
                                                        <p align="center">
                                                            <img alt="Tutorial Image" height="234" 
                                                                src="images/LessonsImages/DREAMWEAVERLessons/2e1.GIF" 
                                                                width="488" /></p>
                                                        <p>
                                                            Save this page, replacing the one we had.</p>
                                                        <p>
                                                            Now we will create the new Web page Choose <b>File &gt; New</b>. Select the <b>
                                                            Templates</b> tab. Select your tutorial site and the tutorial template. Click 
                                                            the <strong>Create</strong> button.</p>
                                                        <p>
                                                            Highlight the description text and the rollover image and delete them (these are 
                                                            in the editable region). Save the new Web page as &quot;home.html&quot;. We will add 
                                                            hyperlinks after making the corresponding pages.
                                                        </p>
                                                        <p>
                                                            Now we will link the rollover image from the start.html page to this page. We 
                                                            will make this link using a neat feature of Dreamweaver. Open the start.html 
                                                            file (if you did not close it, you can access it by choosing <b>Window &gt; 
                                                            start.html</b>). Adjust the document window by dragging its right edge closer to 
                                                            the center so it takes up about half of the screen. Open the Site Files window 
                                                            by choosing<b> Site&gt; Site Files</b> if it is not open.</p>
                                                        <p>
                                                            Select the rollover graphic. In the <b>Properties Panel</b>, click on the 
                                                            compass and drag the cursor over to the <b>Site Files</b> window. Keeping the 
                                                            mouse button down, move the cursor over the &quot;Download&quot; directory. The directory 
                                                            opens. Choose the &quot;home.html&quot; file as shown below.</p>
                                                        <p align="center">
                                                            <img alt="Tutorial Image" height="441" 
                                                                src="images/LessonsImages/DREAMWEAVERLessons/2d5.GIF" 
                                                                width="544" /></p>
                                                        <p>
                                                            Suppose we now want a navigation bar right below the horizontal rule. Since this 
                                                            bar will be on every page, we can add it to an uneditable region in our original 
                                                            template. Open the tutorial template: from the <b>Site File</b> window, open the 
                                                            template folder and open the tutorial template (Templates are saved in their own 
                                                            folders named &quot;Templates&quot;).</p>
                                                        <p>
                                                            Move the cursor to right in front of the table by choosing the table and then 
                                                            pressing <b>&lt;-</b>. Start a new line.In this new line, type in what is shown in 
                                                            the picture below. The vertical bar is on the keyboard right above the slash 
                                                            key. The text has been centered as well. Again, these will be hyper-linked 
                                                            later. Notice that the blue box encloses this navigation text indicating that 
                                                            Dreamweaver thinks this is editable as well. So we need to make this region 
                                                            uneditable. Choose <b>Modify &gt; Template &gt; Remove Template Markup</b>. But now 
                                                            Dreamweaver has also made the table uneditable as well. So make it editable 
                                                            again by choosing <b>Insert &gt; Template Objects &gt;Editable Region</b>.</p>
                                                        <p align="center">
                                                            <img alt="Tutorial Image" height="148" 
                                                                src="images/LessonsImages/DREAMWEAVERLessons/2e2.GIF" 
                                                                width="571" /></p>
                                                        <p>
                                                            Save the template. It will ask whether you want to update the pages created with 
                                                            this template. Select <b>Update</b> and they will be updated automatically.</p>
                                                        <p>
                                                            Open the start.html file. The new navigation text will be displayed.</p>
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
                                                PostBackUrl="~/DreamWeaver_L4.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/DreamWeaver_L6.aspx">Next &gt;&gt;</asp:LinkButton>
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
