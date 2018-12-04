<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="VB_L1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>Visual Basic 6 Tutorials Lesson 1</TITLE>
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
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<A title="SignUp" 
  href="Signup.aspx">Signup</A>                                
                                                    <SPAN class=author>to add A comment, &amp; 
          to Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/VB_L1.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
              Orientation="Horizontal" RememberMeText="" TitleText="" 
              VisibleWhenLoggedIn="False">
        <TextBoxStyle BackColor="White" />
        <LoginButtonStyle BackColor="White" Font-Bold="True" Font-Names="Calibri" 
            Font-Size="9pt" />
    </asp:Login>
                                                <br />
                                                </span></span></span>
          <hr />
        <DIV align=center>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp; &nbsp;&nbsp;
                <img alt="" src="images/VB6.JPG" style="width: 204px; height: 72px" /><br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_Contents.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L2.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br />
              </DIV>
        </DIV>
                        </DIV>
        <DIV align=center>
            <H2>&nbsp;</H2>
        </DIV>
        <DIV align=center>
        <H2>LESSON 1 - Getting started</H2>
                        <BR></DIV>
      <DIV class=para1>
      <TABLE border=0 cellSpacing=0 cellPadding=10 width="90%">
        <TBODY>
        <TR>
          <TD><BR><BR>
            <DIV></DIV><BR><BR><BR></TD>
          <TD align="center">
            <DIV class=para1>
            <H3>Defining basic terms</H3>
            <H4><I>Application</I></H4>An application is a collection of objects that work 
                together to accomplish something useful. In VB the application is called a <B>
                Project</B>. A Project could be a the management of a Video store, the 
                calculation of mortgages, a dating service or the Payroll for 1000 employees ... <BR><BR>
            <H4><I>Object</I></H4>An object is a piece of software that has properties and 
                functions that can be manipulated. Whew! You're here so, you must be somewhat 
                familiar with the Windows environment. A window is an <B>object</B>. It has <B>
                properties</B>: size, color, position on the screen, etc. (The purists among you 
                may want to talk about a<B> class</B> rather than an <B>object</B> but, at this 
                point we just want to keep it simple, and the underlying concept is the same). 
                The window has functions, also called <B>methods</B>, that can be manipulated: 
                change the size, move it around, open it and close it. You do not have to write 
                code to resize a window - you just click and drag. But somebody had to write 
                code at some point. Fortunately for us, when they did they put it all in a nice 
                little package and called it a <B><I>window object</I></B>. Now, whenever you 
                need a window in your Project you can make a copy of the window object, change 
                its properties for color or size very easily, and paste it where you want it. 
                Then you can use its built-in methods to open it, close it when you want or 
                resize it whenever necessary. When you create an application using objects and 
                combining them to produce results, you are working in an <B>object-oriented</B> 
                environment.<BR><BR><BR>
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
            </DIV>
                <H4><I>Event-driven</I></H4>To produce an application in COBOL, a procedural 
                language, you write COBOL source programs, you compile them into machine code 
                and then you run them via a control interface such as JCL. A program can contain 
                1000's of lines of source code and could run for hours with no human 
                intervention. In fact, in large installations, a jobstream can consist of a 
                dozen programs, all automatically accepting input from the previous program and 
                producing output for the next. The programmer can be blissfully unaware that the 
                program has run unless something catastrophic happens.<BR>
                <br />
                <br />
            <DIV align=center><A 
            href="#top">Top</A></DIV><BR></DIV><SPAN name="KonaFilter"></SPAN>
            <DIV class=para1>In a VB project, the processes that occur have to be associated 
                with <B>events</B>. An event is something that happens - the user clicks on a 
                button, a form is opened, the result of a calculation is too large. The 
                operation is <B>event-driven</B> 
                because everything that executes does so as the result of some kind of event. 
                The role of the programmer is to anticipate the events and to write the code 
                that will be executed when the event occurs. A VB application is <B>interactive</B> 
                in the sense that the user is constantly interacting with the program. The user 
                inputs a Customer Id, the program checks the Id in the database and immediately 
                brings up the customer's file or displays a message that the particular Id is 
                invalid.<BR><BR>

            </DIV>
            <DIV class=para1 align="center">
            <H3>Jumping right in!</H3>
            <H4>Project description</H4>We want to create a Scoreboard for a football game 
                (there it is already!) between the Giants and the Redskins. To begin with the 
                simplest task we will only count the touchdowns and display appropriate 
                messages.<BR><BR><B>Please note</B>: although we will create a complete 
                functional Project with controls and code and so on, the purpose of this 
                exercise is to show what can be done. In the following lessons we will be 
                explaining scripts and the use of controls in a lot more detail. If you study 
                this example you should be able to relate it to what you already know of 
                programming and judge whether this tutorial will be easy or hard for you to do.<BR><BR>
            <H4>Creating the Project</H4>First thing to do is to create a Directory where you 
                will store all your VB Projects. Call it VBApps, for example. Then start VB. The 
                first screen will ask whether you want to open a new project or an existing one 
                - it's obviously a new one and it will be a Standard EXE. Then, maximize all the 
                windows (it's easier to work with - some of the examples in the tutorial had to 
                be reduced for the sake of the presentation). Now, save your project. It will 
                first ask you to save the form - call it Score.frm - and then the Project - call 
                it Scorebrd.vbp. From now on, do File--&gt;Save Project very, very frequently.<BR><BR>
            <DIV align=center><IMG border=0 
            src="images/LessonsImages/VBLessons/vb01f01.gif" 
            width=648 height=529></DIV><BR><BR>
            <DIV align=center><IMG border=0 
            src="images/LessonsImages/VBLessons/vb01f02.gif"></DIV><BR><BR>Before you start to 
                build-up the form, it will make it easier if you change the color of the form. 
                Otherwise you will be working with grey controls on a grey background. To change 
                the color, just click anywhere on the form, go to the properties window, find 
                the property called BackColor and change it to the standard Window background 
                (teal) or to any color you want in the palette.<BR><BR>In our first example we 
                will need 6 <B>labels</B> and 2 <B>command buttons</B>. Each one of these 
                objects that you put on a Form is called a<B> 
                control</B>. To get a control you go to the <B>Toolbox</B>, click on the control 
                you want, come back to the Form and click and drag the control to the size and 
                position you want. Position the controls somewhat like in the diagram below.<BR><BR>
            <DIV align=center><IMG border=0 
            src="images/LessonsImages/VBLessons/vb01f03.gif"></DIV><BR><BR>
            <DIV align=center>
            <TABLE bgColor=#ffffcc>
              <COLGROUP>
              <COL>
              <TBODY>
              <TR>
                <TD><BR>
                  <DIV class=para1><B>IMPORTANT NOTE</B>: If this is your first experience with VB, 
                      don't be afraid to experiment. This is hands-on stuff! Remember that VB is a 
                      Microsoft product, therefore it works with the standard Windows interface. All 
                      the functions you know from MS-Office work the same way here: Copy, Cut, Paste, 
                      (Ctrl)+(Click), (Shift)+(Click), drag the mouse over a group of controls to 
                      select them all, etc. The Undo button is a nice one to keep handy - when you 
                      modify a control you can always Undo the change - remember this when you get to 
                      the part about aligning the controls, making them all the same size and so on. 
                      That part can get tricky. If you accidentally end up in the Code window while 
                      palying around, go down a few paragraphs and you will see how to get back to the 
                      Form. At this point the worst that can happen is that your Form will get all 
                      messed up. <B>So what!</B> You can just scrap it and start over again, but you 
                      will have learned something.</DIV><BR></TD></TR></TBODY></TABLE></DIV><BR><BR>
                Now that we have a bunch of controls on the form, we have to jazz them up a bit. 
                We do this by changing the <B>Properties</B> of the controls in the <B>
                Properties window</B>. Each control has a whole series of properties, most of 
                which we won't need right now. The ones we do need are:<BR>
            <DIV align=center>Alignment = how text aligns in the control<BR>BackColor = choose 
                the color of the background<BR>Caption = the text that will appear in the 
                control<BR>Font = choose the font type and size<BR>ForeColor = choose the color 
                of the text (foreground)<BR></DIV>As with all Windows applications, you can 
                select multiple controls with (Ctrl)+(Click) and change a property for all of 
                them at once. For example, if all backgrounds are white, select all controls, 
                change ForeColor to white and all of them are modified. Change your form to look 
                like the one below. Note that you do not have to change the Caption for Label4, 
                Label5 and Label6 and that you can't change the color of the buttons. They 
                insist on being what was called in the old days &quot;IBM grey&quot;. <B>Don't forget to 
                save your project often as you go along!</B><BR><BR><BR><BR>
            <DIV align=center><IMG border=0 
            src="images/LessonsImages/VBLessons/vbless11.jpg"> 
            <BR><BR><BR><IMG alt="" 
            src="images/LessonsImages/VBLessons/vbless12.jpg" 
            width=663 height=515> </DIV><BR><BR>If you <B>Run</B> the application at this point, 
                you should see your Form appear, just the way you created it. However if you 
                click on any of the controls, 
            <B>absolutely nothing happens!</B> There are <B>events</B> that occur; the form 
                opens, a button is clicked, etc. But, there is nothing that tells the form what 
                to do when it sees an event. That is why we have to write code, also called <B>
                script</B>. <BR><BR>
            <DIV align=center><A 
            href="#top">Top</A></DIV><BR><BR>
            <DIV align=center><IMG border=0 
            src="images/LessonsImages/VBLessons/vb01f10.gif" 
            width=208 height=222> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<IMG 
            border=0 
            src="images/LessonsImages/VBLessons/vb01f09.gif" 
            width=222 height=218> </DIV><BR><BR>To switch between the Code window and the Form 
                window, use the buttons just over the Project Explorer window (diagram on the 
                left). <BR>Once in the Code window, you have the option of seeing all the code 
                for the Project or the code for one event at a time. Use the buttons in the 
                lower left-hand corner (diagram on the right).<BR>To select the object and the 
                event you wish to code, use the two Listboxes at the top of the Code window. The 
                one on the left for the object and the one on the right for the event. Start 
                with <B>General ... Declarations</B> and then 
            <B>Form ... Load</B>, etc.<BR><BR><BR>At this point you might want to <B>download 
                the sample program</B> and study it. In the following lessons we'll add 
                functionality to the exercice and we'll explain what the code means. But for the 
                moment, a good exercice would be to write part of the code and then try to 
                figure out how to improve certain aspects of the program.<BR><BR>You can 
                download the application here: <A 
            href="http://www.profsr.com/vb/FootScoreboard.zip">FootScoreboard.zip</A><BR><BR><BR>
            <DIV align=center><IMG border=0 
            src="images/LessonsImages/VBLessons/vbless13.jpg"></DIV><BR><BR>
            <DIV align=center><IMG border=0 
            src="images/LessonsImages/VBLessons/vbless14.jpg"></DIV><BR><BR>Now we can <B>Run</B> 
                it and see something happen. When the Form loads, it will initialize the fields 
                that we specified in the cNow code the Command1 button and Run it to see the 
                result.<BR><BR>
            <DIV align=center><IMG border=0 
            src="images/LessonsImages/VBLessons/vbless15.jpg"></DIV>
                <br />
            <DIV align=right style="color: #00FF00"><A 
            href="#top">Top</A></DIV>
                <br />
                ---------<BR>
        <DIV align=center>
        <H2>Getting to know the interface</H2>
                                                </DIV>
                                                <br />
      <DIV class=para1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Any program can stand to be improved, even mine!<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; But 
      there's a technique to use when building a bigger and better application - 
      you do it step-by-step.<BR>
          <br />
      <DIV align=center>
      <DIV class=para1>
      <H3>Improving the application</H3>Assuming that you're a beginner with VB, 
      here's the development technique I recommend for you:<BR><BR>
      <UL>
        <LI>write the simplest program that you understand and make it work - 
        even if it doesn't have color or fancy fonts, test it and then save 
        it;<BR><BR>
        <LI>make a copy of your previous working program and code one or two 
        improvements in the copy - if you become stuck and can't recover, 
        destroy the copy, go back to the previous version, make a new copy and 
        start again;<BR><BR>
        <LI>repeat for every improvement you make, using small steps so that if 
        something does go wrong its easier to identify the source of the problem 
        (if you made 12 corrections in a program and then it doesn't work, how 
        will you know which of the changes is causing the 
      problem?)</LI></UL></DIV></DIV></DIV>
      <DIV class=para1 align="right">
      <H3>Avoid repeating code!</H3>In our FootScoreboard example, there is one 
      occasion where there are several lines of code repeated.<BR><BR>OK, so 
      it's only a few lines but, in a large program that can happen a lot and it 
      is very time-consuming both to create the code and the to maintain 
      it.<BR><BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <IMG alt="" src="images/LessonsImages/VBLessons/vbless16.jpg" width=486 
      height=478 align="middle"><BR>
            <DIV align=right style="color: #00FF00"><A 
            href="#top">Top</A></DIV><BR><BR>The way to correct that is to take all the code 
      that repeats and put it into a separate procedure. A procedure is 
      identified by the <B>Private Sub ... End Sub</B> lines.<BR><BR>Then, 
      whenever you have to execute the code, call the procedure simply by 
      writing its name.<BR><BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <IMG alt="" src="images/LessonsImages/VBLessons/vbless17.jpg" 
      width=466 height=450 align="middle"><BR><BR>
      <H3>A second improvement</H3>Another thing we usually need in a program is 
      a re-initialize button.<BR><BR>After one loop of the program, in this case 
      one match, we usually want to clear all the data and start 
      over.<BR><BR>For that we'll create a Clear button on the 
      form.<BR><BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <IMG alt="" src="images/LessonsImages/VBLessons/vbless19.jpg" width=469 
      height=248><BR><BR><BR>But, we'll notice that what we do with the Clear 
      button is in fact the same thing we do when we load the form in the first 
      place. So, we'll use the procedure technique to simplify the 
      code.<BR><BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <IMG alt="" src="images/LessonsImages/VBLessons/vbless18.jpg" width=484 
      height=505><BR><BR><BR>To <B>download the improved sample program</B> and 
      study it, click here: <A 
      href="http://www.profsr.com/vb/FootScoreboard2.zip">FootScoreboard2.zip</A><br />
          <br />
          <BR>
          <p align="right">
            <a href="javascript:window.external.AddFavorite(location.href, document.title);">
Add this Page to your Favorites</a>&nbsp; |
             
&nbsp;<a href="javascript:window.print();">Print This Page</a></p>
                                                <br />
          <br />
          <BR>
                                                                        <asp:LoginView ID="LoginView2" runat="server">
                                                                            <LoggedInTemplate>
                                                                                
                                                                                    <br />
                                                                                    <span class="text">
                                                                                    <hr align="center" width="300" />
                                                                                    </span>
                                                                                
                                                                                    <br />
                                                                                    <p>
                                                                                       <DIV align=left><asp:ScriptManager ID="ScriptManager1" runat="server" />
                                                                                        <strong>Post Comment</strong><p>
                                                                                            &nbsp;<br />
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
                                                                                            </DIV>
                                                                                            <p>
                                                                                        </p>
                                                                                        <p>
                                                                                        </p>
                                                                                        <p>
                                                                                        </p>
                                                                                            <p>
                                                                                        </p>
                                                                                        <p>
                                                                                        </p>
                                                                                        <p>
                                                                                        </p>
                                                                                            </p>
                                                                                        </p>
                                                                                    </p>
                                                                         
                                                                            </LoggedInTemplate>
                                                                            <AnonymousTemplate>
                                                                                to Post A Comment!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#top">Login</a>&nbsp;&nbsp;
                                                                            </AnonymousTemplate>
                                                                        </asp:LoginView>
     <br />
      <DIV align=right style="color: #00FF00">
                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_Contents.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L2.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
                                            <br />
                                            <br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </TD></TR></TBODY></TABLE>
      

     </DIV></TR></TBODY></TABLE>
    </form>
</BODY></HTML>
