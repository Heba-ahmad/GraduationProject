<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="VB_L2.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>Visual Basic 6 Tutorials Lesson 2</TITLE>
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
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SPAN class=author>&nbsp;&nbsp;&nbsp; &nbsp;<A title="SignUp" 
  href="Signup.aspx">Signup</A> to add A comment, &amp; to Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/VB_L2.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
            <DIV align=center 
                style="background-image: url('images/tabletop_gradient.gif'); height: 112px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img alt="" src="images/VB6.JPG" style="width: 204px; height: 72px" /><br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L1.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L3.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
                        </DIV>
        <DIV align=center>
            <H2>&nbsp;</H2>
        </DIV>
        <DIV align=center>
        <H2>LESSON 2 - Writing code</H2>
                        <BR></DIV>
      <DIV class=para1>
      <TABLE border=0 cellSpacing=0 cellPadding=10 width="90%">
        <TBODY>
        <TR>
          <TD><BR><BR>
            <DIV></DIV><BR><BR><BR></TD>
          <TD align="center">
            <DIV class=para1>
            <DIV align=center>
            <TABLE width="60%" bgColor=#ccffff>
              <TBODY>
              <TR>
                <TD>
                  <DIV class=para6>For more information and special deals 
                  related to any of the issues on this page, place your cursor 
                  over the double-underlined links. <BR>All information supplied 
                  by Kontera.com.</DIV></TD></TR></TBODY></TABLE></DIV>
                <br />
            <DIV class=para1>
            <H3>The Code Editor</H3></DIV>
            <DIV class=para1>As we saw in the previous lesson, getting to the 
            Code Editor is as simple as hitting the proper button. You may have 
            discovered that you can also call-up the Editor by double-clicking 
            on an object. It is also possible to select "View code" with the 
            right mouse button. You will note that the Editor has all the 
            functions of a text editor and then some. The most commonly used 
            functions will be <B>Cut ... Copy ... Paste</B> which you can call 
            from the Menu, from the Toolbar or from the right mouse button. You 
            also have access to the usual <B>Find</B> and <B>Replace</B> 
            functions ....<BR><BR>
            <H3>Getting help</H3>There is <B>a lot</B> of documentation 
            available on VB. There is so much, in fact, that it's easy to get 
            lost in it. However, the on-line Help available from the Menu should 
            be used regularly. Very often just doing a search on a word in 
            particular will be sufficient to get you out of a jam. If you want 
            to go into more detail check out the Contents part of MSDN 
            (Microsoft Developers' Network) and surf through it.<BR><BR>
            <H3>Writing code</H3>VB is not very particular about presentation - 
            spaces, indents, lower case or upper case, it doesn't make too much 
            difference to the compiler. But it may make a whole lot of 
            difference to the programmer who has to maintain your code in 2 
            years, after you've moved up to President. <BR><BR>
            <TABLE width="80%" bgColor=#99ccff>
              <COLGROUP>
              <COL>
              <TBODY>
              <TR>
                <TD>
                  <DIV class=para1><B>
                  <DIV align=center><BR><BR>Apply "Best Programming 
                  Practices"</DIV></B>When you work with RAD (Rapid Application 
                  Development) tools like VB in a graphical interface 
                  environment, you become more than just a programmer, a writer 
                  of code. You are a developer. We will cover that in the next 
                  lesson. <BR><BR>But at the moment, you are still a Programmer. 
                  And unless you are developing an application for your own 
                  personal use, that nobody else will see, you have to think of 
                  the environment, of the team you are working with. <BR><BR><B>
                  <DIV align=center>"No man (or woman) is an 
                  island!"</DIV></B>Especially when it comes to programming. The 
                  code you write may have to be checked by an Analyst. It will 
                  have to go through testing. It may have to be modified by 
                  other team members and it almost certainly will go through 
                  modifications, maybe several times, in the months and years 
                  ahead when you probably won't be around to defend yourself. 
                  "The evil that men do lives after them...". You do not write 
                  code for the VB compiler. You write it for other developers 
                  and programmers. What you want others to say behind your back 
                  is: "That Jane was blindingly efficient, brilliant, a genius 
                  with comments ...". You do not want to be remembered as 
                  "...the Picasso of code, master of the abstract". 
                  <BR><BR></DIV><BR></TD></TR></TBODY></TABLE></DIV>
                <br />
      <DIV class=para1>If you are just starting out with the language, why not 
      pick up a few good habits right now and it may make your life a lot easier 
      down the road.<BR>
      <OL>
        <LI>Use comments when appropriate but not so many as to overwhelm the 
        code; the apostrophe ' is the comment identifier; it can be at the 
        beginning of a line or after the code.<BR><BR>
        <DIV class=para1><B>' This is a comment<BR>'on 2 lines<BR>DIM intNumber 
        AS Integer &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'This is a comment 
        </B></DIV><BR><BR>
        <LI>Use indents - code must be indented under control structures such as 
        If ... Then or Sub - it makes it so much easier to follow the 
        logic.<BR><BR>
        <DIV class=para1><B>FOR i = 1 TO 
        5<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;value(i) = 
        0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' Indent used in control 
        structures<BR>NEXT i </B></DIV><BR><BR>
        <LI>Use standard capitalization - keywords like If, Dim, Option, Private 
        start with a capital letter with the rest in lower case; variable names, 
        control names, etc. are usually mixed case: ClientName, StudentId, 
        etc.<BR><BR>
        <LI>Write extra-long statements on 2 lines using the continuation 
        character _ (space underscore); in VB each line is assumed to be an 
        individual statement unless there is a continuation at the end of the 
        first line.<BR><BR>
        <DIV class=para1><BR><B>Data1.RecordSource = 
        &nbsp;_<BR>&nbsp;&nbsp;&nbsp;&nbsp;"Select * From Titles" 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' One statement on 2 lines is OK</B> 
        </DIV><BR><BR></LI></OL>
      <H3>Naming conventions</H3>These are the rules to follow when naming 
      elements in VB - variables, constants, controls, procedures, and so 
on:<BR>
      <UL type=DISC>
        <LI>A name must begin with a letter.<BR><BR>
        <LI>May be as much as 255 characters long (but don't forget that somedy 
        has to type the stuff!).<BR><BR>
        <LI>Must not contain a space or an embedded period or type-declaration 
        characters used to specify a data type ; these are ! # % $ &amp; @ 
        <BR><BR>
        <LI>Must not be a reserved word (that is part of the code, like Option, 
        for example).<BR><BR>
        <LI>The dash, although legal, should be avoided because it may be 
        confused with the minus sign. Instead of Family-name use Family_name or 
        FamilyName.<BR><BR></LI></UL>
      <H3>Data types</H3>
      <TABLE border=1>
        <TBODY>
        <TR>
          <TD vAlign=top><B>Data type</B></TD>
          <TD><B>Storage size</B></TD>
          <TD><B>Range</B></TD></TR>
        <TR>
          <TD vAlign=top>Byte</TD>
          <TD>1 byte</TD>
          <TD>0 to 255</TD></TR>
        <TR>
          <TD vAlign=top>Boolean </TD>
          <TD>2 bytes</TD>
          <TD>True or False</TD></TR>
        <TR>
          <TD vAlign=top>Integer </TD>
          <TD>2 bytes</TD>
          <TD>-32,768 to 32,767</TD></TR>
        <TR>
          <TD vAlign=top>Long (long integer)</TD>
          <TD>4 bytes</TD>
          <TD>-2,147,483,648 to 2,147,483,647</TD></TR>
        <TR>
          <TD vAlign=top>Single (single-precision floating-point)</TD>
          <TD vAlign=top>4 bytes</TD>
          <TD>-3.402823E38 to -1.401298E-45 for negative values; 1.401298E-45 
            to 3.402823E38 for positive values</TD></TR>
        <TR>
          <TD vAlign=top>Double (double-precision floating-point)</TD>
          <TD vAlign=top>8 bytes</TD>
          <TD>-1.79769313486232E308 to -4.94065645841247E-324 for negative 
            values; 4.94065645841247E-324 to 1.79769313486232E308 for positive 
            values</TD></TR>
        <TR>
          <TD vAlign=top>Currency (scaled integer)</TD>
          <TD>8 bytes</TD>
          <TD>-922,337,203,685,477.5808 to 922,337,203,685,477.5807</TD></TR>
        <TR>
          <TD vAlign=top>Decimal</TD>
          <TD vAlign=top>14 bytes</TD>
          <TD>+/-79,228,162,514,264,337,593,543,950,335 with no decimal point; 
            +/-7.9228162514264337593543950335 with 28 places to the right of the 
            decimal; smallest non-zero number is 
            +/-0.0000000000000000000000000001</TD></TR>
        <TR>
          <TD vAlign=top>Date</TD>
          <TD>8 bytes</TD>
          <TD>January 1, 100 to December 31, 9999</TD></TR>
        <TR>
          <TD vAlign=top>Object</TD>
          <TD>4 bytes</TD>
          <TD>Any Object reference</TD></TR>
        <TR>
          <TD vAlign=top>String (variable-length)</TD>
          <TD>10 bytes + string length</TD>
          <TD>0 to approximately 2 billion </TD></TR>
        <TR>
          <TD vAlign=top>String (fixed-length)</TD>
          <TD>Length of string</TD>
          <TD>1 to approximately 65,400</TD></TR>
        <TR>
          <TD vAlign=top>Variant (with numbers)</TD>
          <TD>16 bytes</TD>
          <TD>Any numeric value up to the range of a Double</TD></TR>
        <TR>
          <TD vAlign=top>Variant (with characters)</TD>
          <TD>22 bytes + string length</TD>
          <TD>Same range as for variable-length String</TD></TR>
        <TR>
          <TD vAlign=top>User-defined (using Type)</TD>
          <TD>Number required by elements</TD>
          <TD>The range of each element is the same as the range of its data 
            type.</TD></TR></TBODY></TABLE><BR><BR>In all probability, in 90% of your 
      applications you will use at most six types: String, Integer, Long, 
      Single, Boolean and Date. The Variant type is often used automatically 
      when type is not important. A Variant-type field can contain text or 
      numbers, depending on the data that is actually entered. It is flexible 
      but it is not very efficient in terms of storage.<BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV>
      <H3>Declaring variables</H3>Declaring a variable means giving it a name, a 
      data type and sometimes an initial value. The declaration can be 
      <B>explicit</B> or <B>implicit</B>.<BR><BR>An <B>explicit declaration:</B> 
      variable is declared in the Declarations Section or at the beginning of a 
      Procedure. An explicit declaration looks like:<BR>
      <DIV align=center><B>Dim MyNumber As Integer</B></DIV><BR>Now the variable 
      <B>MyNumber</B> exists and a 2-byte space has been reserved for 
      it.<BR><BR>An <B>implicit declaration:</B> the variable is declared "on 
      the fly", its data type is deduced from other variables. For example:<BR>
      <DIV align=center><B>Dim Total1 As Integer</B> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'Explicit declaration<BR><B>Dim Total2 As 
      Integer</B> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'Explicit 
      declaration<BR><B>Total3 = Total1 + Total2 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'Implicit 
      declaration<BR></B><BR></DIV>Total3 is not formally declared but is 
      implied, it is "arrived at" from the other declarations. <BR><BR>It is 
      never a good idea to have implicit declarations. It goes against the rules 
      for clarity, readability and ease of use of the code.<BR>To make sure that 
      this rule is followed, start the Declarations with the <B>Option 
      Explicit</B> clause. This tells the compiler to consider implicit 
      declarations as errors and forces the programmer to declare everything 
      explicitly.<BR><BR>Other examples of declarations:<BR>
      <DIV align=center><B>Dim MyName As String<BR>Dim StudentDOB As Date<BR>Dim 
      Amount5, Amount6, Amount7</B></DIV><BR>In the last example the type 
      assigned to each variable will be: Variant. It is the default type when 
      none is specified.<BR><BR>There can be multiple explicit declarations in a 
      statement:<BR>
      <DIV align=center><B>Dim EmpName As String, SalaryMonth As Currency, 
      SalaryYear As Currency</B></DIV><BR>In this final example, what are the 
      types assigned to the three variables:<BR>
      <DIV align=center><B>Dim Amount1, Amount2, Amount3 As 
      Single</B></DIV><BR>All Single-precision floating point, you say. 
      <B>Wrong!</B> Only Amount3 is Single. Amount1 and Amount2 are considered 
      Variant because VB specifies that each variable in a statement must be 
      explicitly declared. Thus Amount1 and Amount2 take the default data type. 
      This is different from what most other languages do.<BR><BR>
      <H3>Constants</H3>A constant is a value that does not change during the 
      execution of a procedure. The constant is defined with:<BR>
      <DIV align=center><B>Const ValuePi = 3.1416</B></DIV><BR><BR>
      <H3>The Scope of variables</H3>The term <B>Scope</B> refers to whether the 
      variable is available outside the procedure in which it appears. The scope 
      is <B>procedure-level</B> or <B>module-level</B>.<BR><BR>A variable 
      declared with Dim at the beginning of a procedure is only available in 
      that procedure. When the procedure ends, the variable disappears. Consider 
      the following 
      example:<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option 
      Explicit<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dim 
      Total2 As 
      Integer<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Private 
      Sub Command1_Click 
      ()<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dim 
      Total1 As 
      Integer<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Static 
      Total3 As 
      Integer<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total1 
      = Total1 + 
      1<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total2 
      = Total2 + 
      1<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total3 
      = Total3 + 
      1<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;End 
      Sub<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Private 
      Sub Command2_Click 
      ()<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dim 
      Total1 As 
      Integer<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total1 
      = Total1 + 
      1<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total2 
      = Total2 + 
      1<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total3 
      = Total3 + 
      1<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;End 
      Sub<BR><BR>Every time Button1 is clicked, Total1 is declared as a new 
      variable during the execution of that clicked event. It is a 
      <B>procedure-level</B> variable. It will always stay at 1. The same for 
      the Button2 event: Total1 is a new variable in that procedure. When the 
      procedure ends, Total1 disappears.<BR>Total2 is declared in the 
      Declarations section. It is a <B>module-level</B> variable, meaning it is 
      available to every control in this Form. When Button1 is clicked, it 
      increments by 1 and it retains that value. When Button2 is clicked, Total2 
      is incremented from its previous value, even if it came from the Button1 
      event. <BR>Total3 shows another way of retaining the value of a local 
      variable. By declaring it with <B>Static</B> instead of Dim, the variable 
      acts like a module-level variable, although it is declared in a 
      procedure.<BR><BR>Another scope indicator that you will see when you study 
      examples of code is <B>Private</B> and <B>Public</B>. This determines 
      whether a procedure is available only in this Form (module) or if it is 
      available to any module in the application. For now, we will work only 
      with Private procedures.<BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV>
      <H3>Operators</H3>
      <H4>Mathematical and Text operators</H4>
      <TABLE border=1>
        <COLGROUP>
        <COL span=4>
        <TBODY>
        <TR>
          <TD><B>Operator</B></TD>
          <TD><B>Definition&nbsp;</B></TD>
          <TD><B>Example&nbsp;</B></TD>
          <TD><B>Result&nbsp;</B></TD></TR>
        <TR>
          <TD>^&nbsp;</TD>
          <TD>Exponent (power of)&nbsp;</TD>
          <TD>4 ^ 2&nbsp;</TD>
          <TD>16&nbsp;</TD></TR>
        <TR>
          <TD>*&nbsp;</TD>
          <TD>Multiply&nbsp;</TD>
          <TD>5 * 4&nbsp;</TD>
          <TD>20&nbsp;</TD></TR>
        <TR>
          <TD>/&nbsp;</TD>
          <TD>Divide&nbsp;</TD>
          <TD>20 / 4&nbsp;</TD>
          <TD>5&nbsp;</TD></TR>
        <TR>
          <TD>+&nbsp;</TD>
          <TD>Add&nbsp;</TD>
          <TD>3 + 4&nbsp;</TD>
          <TD>7&nbsp;</TD></TR>
        <TR>
          <TD>-&nbsp;</TD>
          <TD>Subtract&nbsp;</TD>
          <TD>7 - 3&nbsp;</TD>
          <TD>4&nbsp;</TD></TR>
        <TR>
          <TD>Mod&nbsp;</TD>
          <TD>Remainder of division&nbsp;</TD>
          <TD>20 Mod 6&nbsp;</TD>
          <TD>2&nbsp;</TD></TR>
        <TR>
          <TD>\&nbsp;</TD>
          <TD>Integer division&nbsp;</TD>
          <TD>20 \ 6&nbsp;</TD>
          <TD>3&nbsp;</TD></TR>
        <TR>
          <TD>&amp;&nbsp;</TD>
          <TD>String concatenation&nbsp;</TD>
          <TD>"Joan" &amp; " " &amp; "Smith"&nbsp;</TD>
          <TD>"Joan Smith"&nbsp;</TD></TR></TBODY></TABLE><BR><BR>Note that the 
      order of operators is determined by the usual rules in programming. When a 
      statement includes multiple operations the order of operations 
      is:<BR><B>Parentheses ( ), ^, *, /, \, Mod, +, -</B><BR><BR>
      <H4>Logical operators</H4>
      <TABLE border=1>
        <COLGROUP>
        <COL span=4>
        <TBODY>
        <TR>
          <TD><B>Operator&nbsp;</B></TD>
          <TD><B>Definition&nbsp;</B></TD>
          <TD><B>Example&nbsp;</B></TD>
          <TD><B>Result&nbsp;</B></TD></TR>
        <TR>
          <TD>=&nbsp;</TD>
          <TD>Equal to&nbsp;</TD>
          <TD>9 = 11&nbsp;</TD>
          <TD>False&nbsp;</TD></TR>
        <TR>
          <TD>&gt;&nbsp;</TD>
          <TD>Greater than&nbsp;</TD>
          <TD>11 &gt; 9&nbsp;</TD>
          <TD>True&nbsp;</TD></TR>
        <TR>
          <TD>&lt;&nbsp;</TD>
          <TD>Less than&nbsp;</TD>
          <TD>11 &lt; 9&nbsp;</TD>
          <TD>False&nbsp;</TD></TR>
        <TR>
          <TD>&gt;=&nbsp;</TD>
          <TD>Greater or equal&nbsp;</TD>
          <TD>15 &gt;= 15&nbsp;</TD>
          <TD>True&nbsp;</TD></TR>
        <TR>
          <TD>&lt;=&nbsp;</TD>
          <TD>Less or equal&nbsp;</TD>
          <TD>9 &lt;= 15&nbsp;</TD>
          <TD>True&nbsp;</TD></TR>
        <TR>
          <TD>&lt;&gt;&nbsp;</TD>
          <TD>Not equal&nbsp;</TD>
          <TD>9 &lt;&gt; 9&nbsp;</TD>
          <TD>False&nbsp;</TD></TR>
        <TR>
          <TD>AND&nbsp;</TD>
          <TD>Logical AND&nbsp;</TD>
          <TD>(9 = 9) AND (7 = 6)&nbsp;</TD>
          <TD>False&nbsp;</TD></TR>
        <TR>
          <TD>OR&nbsp;</TD>
          <TD>Logical OR&nbsp;</TD>
          <TD>(9 = 9) OR (7 = 6)&nbsp;</TD>
          <TD>True&nbsp;</TD></TR></TBODY></TABLE><BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV><BR><BR>
      <H3>Control Structures</H3>
      <H4>If...Then...Else</H4>
      <BLOCKQUOTE><B>If</B> condition1 
        <B>Then</B><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;statements1<BR><B>Else</B><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;statements2<BR><B>End 
        If</B><BR><BR>If condition1 is True, then statements1 block is executed; 
        Else, condition1 is not True, therefore statements2 block gets executed. 
        The structure must be terminated with the End If statement.<BR><BR>The 
        Else clause is optional. In a simple comparison, statements1 get 
        executed or not.<BR><BR><B>If</B> condition1 
        <B>Then</B><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;statements1<BR><B>End 
        If</B><BR><BR></BLOCKQUOTE></DIV>
      <DIV class=para1>
      <H4>Select Case</H4>
      <BLOCKQUOTE>Can be used as an alternative to the <B>If...Then...Else</B> 
        structure, especially when many comparisons are 
        involved.<BR><BR><B>Select Case 
        </B>ShirtSize<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Case</B> 
        1<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SizeName.Caption 
        = "Small"<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Case</B> 
        2<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SizeName.Caption 
        = "Medium"<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Case</B> 
        3<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SizeName.Caption 
        = "Large"<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Case</B> 
        4<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SizeName.Caption 
        = "Extra Large"<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Case 
        Else</B><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SizeName.Caption 
        = "Unknown size"<BR><B>End Select</B><BR><BR></BLOCKQUOTE>
      <DIV class=para1></DIV><BR><BR>
      <H4>Do...Loop</H4>
      <DIV class=para1>Used to execute a block of statements an unspecified 
      number of times.<BR><BR><B>Do While</B> 
      condition<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;statements<BR><B>Loop</B><BR><BR>First, 
      the condition is tested; if condition is True, then the statements are 
      executed. When it gets to the Loop it goes back to the Do and tests 
      condition again. If condition is False on the first pass, the statements 
      are never executed.</DIV><BR><BR><BR><BR>
      <H4>For...Next</H4>
      <DIV class=para1>When the number of iterations of the loop is known, it is 
      better to use the For...Next rather than the Do...Loop.<BR><BR><B>For</B> 
      counter = start <B>To</B> 
      end<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;statements<BR><B>Next</B><BR><BR>1) 
      The counter is set to the value of start.<BR>2) Counter is checked to see 
      if it is greater than end; if yes, control passes to the statement after 
      the Next; if not the statements are executed.<BR>3)At Next, counter is 
      incremented and goes back to step 2). </DIV><BR><BR>More will be covered 
      on Control strucures as it becomes necessary in upcoming lessons. 
      Meanwhile,if you want to know more, consult the VB Language 
      Reference.<BR>
      <DIV align=center>
      <H3>Assignment </H3></DIV>To practise your coding and editing skills, try 
      modifying the Football example by adapting it for different sports. For 
      example, in American football, which is similar to rugby, there are 4 
      different ways to score, as shown here:<BR>
      <TABLE align="left"><COLSPAN="2">
        <TBODY>
        <TR>
          <TD>Touchdown&nbsp;</TD>
          <TD>6 points&nbsp;</TD></TR>
        <TR>
          <TD>Field goal&nbsp;</TD>
          <TD>3 points&nbsp;</TD></TR>
        <TR>
          <TD>2-point Convert or Safety&nbsp;</TD>
          <TD>2 points&nbsp;</TD></TR>
        <TR>
          <TD>Convert &nbsp;</TD>
          <TD>1 point&nbsp;</TD></TR></TBODY></TABLE><BR><BR><BR><BR>
                                                </DIV>
                                                <br />
                                                <br />
                                                <br />
                                                <BR></DIV>
                                            <br />
                                            <p align="right">
                                                <a href="javascript:window.external.AddFavorite(location.href, document.title);">
                                                Add this Page to your Favorites &nbsp;</a> | <a href="javascript:window.print();">Print 
                                                This Page</a></p>
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
                  <p>
                  </p>
</p>
                                            </asp:Panel>

                                            <br />
                                            <br />
            <DIV align=right style="color: #00FF00">
                <br />
          
                                              
                                                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L1.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L3.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
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
