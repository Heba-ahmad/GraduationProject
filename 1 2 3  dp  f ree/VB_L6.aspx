<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="VB_L4.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>Visual Basic 6 Tutorials Lesson 6</TITLE>
<META content="text/html; charset=windows-1256" http-equiv=Content-Type>
<META name=Description 
content="Lesson 1 on the VB IDE, the environment, creating a Project, creating a form">
<META name=Keywords 
content="VB 6, IT training, course, application, computer programming, file processing, database">
<META name=Distribution content=Global>
<META name=Rating content=General><LINK rel=StyleSheet type=text/css 
href="images\LessonsImages\VBLessons\newstyles2.css">
<META name=GENERATOR content="MSHTML 8.00.6001.18904">
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
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<A title="SignUp" 
  href="Signup.aspx">Signup</A>                                
                                                    <SPAN class=author>to add comment &amp; to 
          Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/VB_L6.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <img alt="" src="images/VB6.JPG" style="width: 204px; height: 72px" />&nbsp;<br />
                &nbsp;
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L5.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L7.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 6 - Menu and Debug</H2>
                        <BR></DIV>
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
      <SCRIPT type=text/javascript><!--
ch_client = "MikeLat";
ch_type = "mpu";
ch_width = 468;
ch_height = 180;
ch_non_contextual = 4;
ch_vertical ="premium";
ch_sid = "VB6";
var ch_queries = new Array( );
var ch_selected=Math.floor((Math.random()*ch_queries.length));
if ( ch_selected < ch_queries.length ) {
ch_query = ch_queries[ch_selected];
}
//--></SCRIPT>
      <DIV align=center>
      <TABLE width="40%" bgColor=#ccffff>
        <TBODY>
        <TR>
          <TD>
            <DIV class=para6>For more information and special deals related to 
            any of the issues on this page, place your cursor over the 
            double-underlined links. <BR>All information supplied by 
            Kontera.com.</DIV></TD></TR></TBODY></TABLE>
                                                        <br />
      <H3>Creating a Menu</H3>
                                                    </DIV>
      </DIV>
      <DIV class=para1>No! Not a restaurant menu.<BR><BR>If you've worked with 
      Windows applications before you have worked with menus. Every Windows 
      application has one. The menu gives the users access to functions that are 
      not defined as controls (editing, formatting, etc) and also repeats 
      certain functions that are coded as controls (Exit button, for example). 
      Menus offer a variety of functionalities to define the application: we can 
      include sub-menus, checked items, enabled/disabled functions, toolbar 
      icons. The VB IDE that you are using certainly displays all of those 
      tools, as in the diagram below.<BR><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb06f01.gif" width=518 
      height=266></DIV><BR><BR><BR><BR>For this lesson, we will 
      use the Registration form we created in Lesson 5 and we will add a menu to 
      it.<BR><BR>The easiest way to create a menu is to do it with the 
      Application wizard when creating the application. But since we're not here 
      to do things the easy way, we'll have to rough-it. In this case, 
      roughing-it is not much harder. We use the <B>Menu Editor</B> that can be 
      found in the Menu bar --&gt; Tools. Using the Editor is fairly obvious. We 
      just build up the menu bar on the first level and then, we add sub-menus 
      using the arrow keys to add an elipsis before the captions. Thus, 
      &amp;File is on the menu bar and ...&amp;Open is under &amp;File. Items 
      can be inserted anywhere using the Insert button. <BR><BR>You may have 
      noticed the use of the ampersand (&amp;) in the captions (the 
      <B>Caption</B> is the part that will display in the menu bar, not the 
      name). That is standard Windows practice. It creates a Hot-key, meaning a 
      function that can be called from the keyboard using the &lt;Alt&gt; key. 
      Putting an &amp; before a letter in a caption makes that letter the 
      hot-key for the function; &lt;Alt&gt;&lt;F&gt; will call-up File, 
      &lt;Alt&gt;&lt;E&gt; will call-up Edit, and so on. Just make sure that the 
      same hot-key is not used for 2 functions on the same level. In the menu 
      bar for VB above, note that &lt;Alt&gt;&lt;F&gt; is used for File but, 
      &lt;Alt&gt;&lt;o&gt; is used for Format. The hot-key for each function is 
      the letter underlined so there should'nt be any confusion.<BR><BR>The 
      other consideration when creating the menu is to give each menu item a 
      specific <B>name</B>. In this case we use the prefix mnu_ to identify menu 
      items. These are important because they will be refered to in code and it 
      should be clear that mnu_exit is the Exit function in the menu whereas 
      cb_exit is the Exit command button. <BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb06f02.gif" width=455 
      height=421></DIV><BR><BR>You can run the application at any time while you 
      create the menu, just to verify that it displays correctly. Of course, if 
      you click on a menu item, nothing happens. Just like controls, menu items 
      have to be coded to work. So, we go to the code window and write the code 
      for each of the menu items that we want to activate. Fortunately, some of 
      it is automatic. Clicking on a menu item will automatically open 
      lower-level items, if there are any. We just code for the lowest-level 
      item. For example, for File--&gt;Open--&gt;Viewer, there is no code for 
      File, nor for Open but, we must write the code to execute for when Viewer 
      is clicked. <BR><BR>For this example we will code a few simple operations 
      to show how it is done. From this it is just a question of expanding the 
      menu to display more functions.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb06f03.gif" width=524 
      height=422></DIV><BR><BR>When working with forms, there is always a 
      certain amount of data validation that has to be done. Data validation 
      consists of making sure the data is correct before doing calculations and 
      so on. Usually, until the data is all correct certain functions such as 
      calling the database or going to the next form have to be made unavailable 
      - we say that the function is <B>disabled</B>.<BR><BR>To complete the 
      example, let's say that we want to disable the Viewer option if the 
      player's name has not been entered. To do this we add some code in the Go 
      button. The code consists of setting the <B>Enabled property to False</B> 
      if we want to disable a control or menu item; we set the property to True 
      to enable the control again. When disabled, the Caption goes gray and the 
      code cannot be executed. In the case of Viewer, where we have both a 
      button and a menu function, we must remember to disable both.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb06f04.gif" width=395 
      height=208></DIV><BR><BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV><BR><BR><BR>
      <DIV align=center>
      <SCRIPT type=text/javascript><!--
ch_client = "MikeLat";
ch_type = "mpu";
ch_width = 468;
ch_height = 180;
ch_non_contextual = 4;
ch_vertical ="premium";
ch_sid = "VB6";
var ch_queries = new Array( );
var ch_selected=Math.floor((Math.random()*ch_queries.length));
if ( ch_selected < ch_queries.length ) {
ch_query = ch_queries[ch_selected];
}
//--></SCRIPT>
      </DIV><BR><BR><BR>
      <H3>Debugging code</H3>After six lessons of this tutorial, it would be 
      surprising if you had never had a bug in the code you've been writing. By 
      now you should have written some original code for yourself, not just the 
      examples supplied with the lessons. Whenever you write code there is the 
      possibility of making mistakes. Heck! even Professors make them, although 
      very rarely. It can be very frustrating to try to find an error when you 
      don't know where to begin to look. But there are techniques that can 
      help.<BR><BR>
      <DIV align=center>
      <TABLE width="70%" bgColor=#ffffcc>
        <COLGROUP>
        <COL>
        <TBODY>
        <TR>
          <TD>Do you know where the term "<B>bug</B>", for a program error, 
            comes from? In case you've never heard the story before, here it is, 
            as told by Grace Hopper, one of the pionneers of programming.<BR>In 
            the late 40's even a simple computer was a big thing: 1000's of 
            vacuum tubes and 1000's of square feet of floor space. A group of 
            programmers were working late one hot summer night. To help to 
            dissipate all the heat generated by those tubes, all the windows 
            were open. At one point the program that they were working on 
            bombed-out. Eventually they found the problem: a moth had flown in 
            and had become lodged in the wiring, creating a short-circuit. 
            Afterwards, every time a program would crash the programmer would 
            exclaim, "There must be a bug in the machine!". To this day that has 
            remained one of the mainstays of programmers: when the program goes 
            wrong, blame the 
      hardware!&nbsp;</TD></TR></TBODY></TABLE></DIV><BR><BR>One of the first 
      techniques to master is the use of <B>breakpoints.</B> A breakpoint is a 
      flag at a given point in code where program execution will be suspended to 
      give you time to look at the content of variables or at the status of 
      properties. When VB hits a breakpoint when running a program, the code 
      window opens and an <B>immediate window</B> opens at the bottom of the 
      screen. You can look at variables or properties in the immediate window 
      and then, either do <B>Start</B> to resume execution or do <B>Step</B>, 
      using <B>&lt;F8&gt;</B> to step through the execution, one statement at a 
      time.<BR><BR>Again we will use the code from Lesson 5. In the code window, 
      click the column to the left of a line of code. This will create a 
      breakpoint indicated by a red dot (you remove the breakpoint by clicking 
      on the red dot). When you run the program it will stop at the breakpoint. 
      In the immediate window, look at the content of different variables or 
      properties. Step through the code with &lt;F8&gt;; the active statement is 
      indicated by the yellow arrow. All the logic represented by IF or LOOP or 
      DO statements will be executed according to the conditions present. If the 
      yellow arrow jumps to a line that you don't expect, find the reason 
      why.<BR><BR>
      <DIV align=left><IMG border=0 src="images/LessonsImages/VBLessons/vb06f05.gif" width=439 
      height=433></DIV><BR><BR>Another technique to learn is called <B>"error 
      trapping"</B>. It consists in intercepting errors that can occur at 
      execution rather than programming mistakes, although not providing for 
      user errors can be considered a programming mistake.<BR><BR>Let's build a 
      simple example. The user will input 2 numbers, a numerator and a 
      denominator. The program will divide the numerator by the denominator and 
      display the result. Easy so far. However, if the user inputs 0 for the 
      denominator, the program crashes because programming cannot make sense of 
      division by zero. So, we want to <B>trap the error</B> and process it 
      before it displays an error message to the user. We will use the <B>On 
      Error GoTo ... </B>statement. This tells the program that if there is some 
      kind of run-time error, go to the error-processing-routine named. We have 
      to create a <B>line label</B> to identify the error routine; a line label 
      has a colon at the end, like error_rtn:, in the example. At the same time, 
      there is an <B>Err object</B> created and it contains, among other things, 
      a <B>Number property</B> that will identify the error. For example, if 
      Err.Number = 11, the error was a division by zero; Err.Number = 6 
      represents an overflow situation.<BR><BR>It is worth noting that line 
      labels in code do not end processing in any way. When the logic gets to a 
      line label it keeps on going. The programmer has to make sure that the 
      processing of errors in the error_rtn is not done automatically every 
      cycle (that is called "falling through" the next routine and it's a common 
      error).<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb06f06.gif" width=500 
      height=425></DIV><BR>
          <br />
          <br />
          <p align="right">
              <a href="javascript:window.external.AddFavorite(location.href, document.title);">
              Add this Page to your Favorites</a>&nbsp; | &nbsp;<a 
                  href="javascript:window.print();">Print This Page</a></p>
          <br />
          <br />
          
        
          <br />
          <br />
          
          
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
                    InsertCommand="INSERT VB6_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [VB6_tblComments]">
                    <InsertParameters>
                        <asp:Parameter Name="Name" />
                        <asp:Parameter Name="Comments" />
                        <asp:Parameter Name="Rating" />
                        <asp:Parameter Name="Date" />
                    </InsertParameters>
                </asp:SqlDataSource>
                  <br />
                  <p>
                  </p>
                  <p>
                  </p>
</p>
                                                    </asp:Panel>

          <BR>
            <DIV align=right style="color: #00FF00">
                <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L5.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L7.aspx">Next &gt;&gt;</asp:LinkButton>
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
