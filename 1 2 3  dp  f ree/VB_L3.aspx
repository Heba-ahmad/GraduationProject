<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="VB_L3.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>Visual Basic 6 Tutorials Lesson 3</TITLE>
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
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<A title="SignUp" 
  href="Signup.aspx">Signup</A>                                
                                                    <SPAN class=author>to add comment, 
          &amp; To Rate the Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/VB_L3.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                style="background-image: url('images/tabletop_gradient.gif'); height: 105px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img alt="" src="images/VB6.JPG" style="width: 204px; height: 72px" />&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L4.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 3 - Designing the application</H2>
                        <BR></DIV>
      <DIV class=para1>
      <TABLE border=0 cellSpacing=0 cellPadding=10 width="90%" align="left">
        <TBODY>
        <TR>
          <TD><BR><BR>
            <DIV></DIV><BR><BR><BR></TD>
          <TD align="left">
              <COLSPAN="2">
      <H3 align="center">Starting the process</H3>
      <DIV class=para1>
      <DIV align=center>
      <TABLE width="40%" bgColor=#ccffff>
        <TBODY>
        <TR>
          <TD>
            <DIV class=para6>For more information and special deals related to any of the issues 
                on this page, place your cursor over the double-underlined links. l information supplied by 
            Kontera.com.</DIV></TD></TR></TBODY></TABLE></DIV><BR><BR>When you start 
      to work on a VB Project you are no longer just a programmer - you are now 
      a developer. You will have to get much more involved in the whole design 
      process. Unless you are designing an application for your own use you will 
      have to work with a team of specialists including, but not limited to, 
      <B>users, analysts, GUI designer, programmers, testers, network 
      specialist, webmaster and marketing people</B>. The whole process is 
      iterative - do part of it, check it, get input, go back and correct it, do 
      the next part, and so on. Nobody expects you to do a whole project in one 
      fell swoop - it would probably be a disaster if you did do it that 
      way.<BR><BR>
      <H3>The importance of Users</H3>Any project that you develop has to 
      involve <B>Users.</B> They are the people who will sit in front of your 
      interface for eight hours a day and decide if they like it or not. If they 
      don't like it, no matter how efficient the code and how many millions of 
      dollars were spent developing it, they will find ways to sabotage it. 
      <BR><BR>Get users involved from the start. If you are developing a product 
      to specs, that is to be sold to some client eventually, there has to be 
      someone who knows what that eventual client needs. Find a typical user of 
      the product to use as a sounding board. Remember: you are just the 
      developer; no matter how cool you think it would be to use all purple text 
      on orange backgrounds, it is the user who will tell you what is cool and 
      what is not. As you develop more and more parts of the application, run 
      them by the user to check for accuracy, completeness, clarity, 
      etc.<BR><BR>Here's an example of how to design for <B>clarity</B>. Given 
      that 01/02/03 is a date, what date is it? If you are an American, you 
      probably automatically assume that it is January 2nd, 2003. If your user 
      is French, however, he would assume that it is February 1st, 2003. And if 
      you are working with this Professor, who has a very definite opinion on 
      the subject, he would say that it is February 3rd, 2001 and should always 
      be written as 2001-02-03. If all your forms are designed as: "Enter date" 
      with a blank box beside it, you are headed for trouble.<BR><BR><BR>
      <DIV align=center>
      <TABLE border=1 width="55%" bgColor=#408080>
        <TBODY>
        <TR>
          <TD><FONT color=#ffffff><B>Program design today is a race between 
            software engineers striving to build bigger and better idiot-proof 
            programs, and the Universe trying to produce bigger and better 
            idiots. So far, the Universe is winning.</B><BR>-- Rich Cook 
            </FONT><BR></TD></TR></TBODY></TABLE><BR><BR><BR></DIV>That's just a joke, 
      by the way. Most users are not idiots. Sometimes they appear confused 
      because they are trying to solve the problem and they can't figure out 
      how. But that's not their job. Their job is to explain clearly what it is 
      they need. Your job is to figure out how to provide it. Don't 
      underestimate users. Be patient, be understanding without being 
      condescending and be humble. There's a lot of things that the user knows 
      how to do that you don't. <BR><BR><BR></DIV>
      <H3>Creating the User Interface</H3>The user interface that you design is 
      the most visible and perhaps the most important part of the application. 
      The term commonly used for this type of interface is: <B>GUI (Graphical 
      User Interface)</B>. It's pronounced "goo-wee", not "guy". It is graphical 
      because it consists of buttons, menus, icons, etc. An example of a non-GUI 
      is DOS (remember that?) where everything is text. User interface refers to 
      the fact that it is the part of the application between the user, in front 
      of the screen, and the code behind the screen. How well the user can 
      interact with the code depends on the quality of the interface.<BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV>
      <H4>Guiding principles</H4>
      <UL>
        <LI>The user is in control. The user must feel he is in charge of the 
        application. He must have a certain amount of control over such things 
        as window size, window position, choice of fonts, etc. There should 
        definitely be a "Preferences" item in the menu.<BR><BR>
        <LI>Consistency is maintained throughout the application. The user can 
        move to any part of the application and not have to re-learn how things 
        work. Consistency in the choice of icons, in date formats, in error 
        messages means that the user can concentrate on the work. As much as 
        possible, the application should be consistent with Windows standard. 
        For example, "Move to the Recycle Bin" is different from "Delete" - the 
        user has come to expect that an item in the Recycle Bin can be recovered 
        if need be. <BR><BR>
        <LI>Application should be "forgiving", or "fault-tolerant". Users will 
        make mistake. A single error should not bring the application crashing 
        to the floor. If there is no room for errors, users will be afraid to 
        experiment, to discover on their own how to do things. It will slow the 
        learning process considerably.<BR><BR>
        <LI>Always supply feedback. The user should always know that something 
        is going on, especially if it's in the background and may take several 
        minutes to run. Display an hourglass or a progress meter or a status bar 
        so that the user doesn't start to hit keys at random to get something to 
        happen. It only takes a few seconds of inactivity for the user to get 
        frustrated and think that the program is "hanging".<BR><BR>
        <LI>Don't neglect esthetics. The visual aspect is important. The 
        environment should be pleasing to the eye. The presentation style should 
        help in understanding the information presented.<BR><BR>
        <LI>Interface should be simple without being simplistic. There should be 
        a balance between simplicity and functionality. Popup menus, for 
        example, allow you to increase the functionality without having to 
        encumber the screen with all kinds of details which are not used 95% of 
        the time.<BR><BR></LI></UL><BR><BR>
      <DIV align=center>
      <TABLE width="60%" bgColor=#ffffcc>
        <TBODY>
        <TR>
          <TD>
            <DIV align=center><B>On the importance of 
            language</B></DIV><BR>Throughout the project you are going to be 
            doing, you should give some thought to the quality of the language 
            used. As a teacher of technology, I am constantly defending the 
            compulsory language courses included in the curriculum. I have to 
            point out that your mastery of the language, or lack thereof, 
            projects an image of who and what you are. This is the 21st Century 
            - image is everything!<BR><BR>When I was young, a long, long time 
            ago, in a galaxy far, far away, teachers used to say all the time: 
            "Sloppy work is the sign of a sloppy mind!". There is a lot of truth 
            in that. If you can't be bothered to display the interface 
            correctly, what does that say about the rest of your work? 
            Professionalism should be evident in every part of what you create. 
            If what is seen by the public is of poor quality, there is reason to 
            believe that the work behind the interface (90% of the application) 
            is also poor.<BR><BR>If you are developing an application for 
            yourself, nobody cares what it looks like. If it's a small project 
            for a client that you know, you may be able to get away with some 
            mistakes. Usually however, a project is broader in scope and you 
            don't know the audience. Remember that you are now working in the 
            global village. The interface you write and display may be seen, via 
            the Internet, by millions and millions of critical users. Even if 
            it's not your reputation riding on it, the reputation of your client 
            may be. And you can be sure that he will take it seriously, even if 
            you don't. If language is not your area of expertise, get help from 
            somebody whose area it is. <BR><BR>Having said all that, I realize 
            that I am really sticking my neck out. Although every effort has 
            been made to make these tutorials as error-free as possible, it is 
            inevitable that some mistakes will slip through. You are allowed to 
            say, "Gotcha!" when you spot mistakes. Accept my apology and I will 
            correct all errors as soon as they are spotted.<BR><BR>
            <DIV align=center><B>To err is human.<BR>But it takes the Web to let 
            millions of people know that you 
        erred!</B></DIV><BR><BR></TD></TR></TBODY></TABLE></DIV><BR><BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV>
      <H4>Interface style</H4>One of the first decisions you have to make is 
      whether to go <B>SDI (Single Document Interface)</B> or <B>MDI (Multiple 
      Document Interface).</B> If you have worked with Windows for any length of 
      time, you have probably seen both. Notepad is an SDI - you can only have 
      one document open at any time. Word is an MDI - you can open a number of 
      documents and switch between them at will. An MDI application imposes 
      different constraints on the developer because of the need to juggle 
      several different forms at the same time. It usually requires more 
      experience in the development process. For the purposes of this tutorial, 
      we will work only with SDI applications.<BR><BR>
      <H4>Design considerations</H4>
      <UL>
        <LI>What is the purpose of the application? Is it a once-a-year thing or 
        one that is in use 24/7? The user will forget the details if he only 
        uses it once a year and you will have to be a lot more specific with the 
        Help functions.<BR><BR>
        <LI>Who is the intended audience? Beginning users will need more 
        directions than experienced users.<BR><BR>
        <LI>How many different forms will be needed (you can have several forms 
        without being MDI) and how will they be connected?<BR><BR>
        <LI>What are the menus going to say? Will toolbars be used to replicate 
        menu functions?<BR><BR>
        <LI>How are errors going to be identified to the user? How will they be 
        corrected?<BR><BR>
        <LI>How much Help (in the form of a Help function) is going to be 
        provided?<BR><BR>
        <LI>How will consistency be maintained across the application? It is 
        important that all forms have the same "look and feel" in terms of 
        colors, fonts, menus, toolbars, etc.<BR><BR></LI></UL>We will examine the 
      design process in more detail as we develop the Projects in the following 
      lessons. If you are serious about the design aspect of software, one of 
      the best sources of information is the book: <B>"The Windows Interface 
      Guidelines for Software Design"</B> published by <B>Microsoft Press</B>, 
      reference <B>ISBN 1-55615-679-0</B>.<BR><BR>
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
                  </a>
              </div>
              <br />
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
                    InsertCommand="INSERT VB6_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [VB6_tblComments]">
                    <InsertParameters>
                        <asp:Parameter Name="Name" />
                        <asp:Parameter Name="Comments" />
                        <asp:Parameter Name="Rating" />
                        <asp:Parameter Name="Date" />
                    </InsertParameters>
                </asp:SqlDataSource>
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
                                                PostBackUrl="~/VB_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L4.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
                                            <br />
                                            <br />
                                            </TD></TR></TBODY></TABLE>
      <SCRIPT type=text/javascript>
var dc_UnitID = 14;
var dc_PublisherID = 9313;
var dc_AdLinkColor = '#009600';
var dc_adprod='ADL';
</SCRIPT>

     </DIV></TR></TBODY></TABLE>
    </form>
</BODY></HTML>
