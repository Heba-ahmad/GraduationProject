<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="PHP_L2.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>PHP Tutorial 2 : String Variables, Operators & If...Else Statements</TITLE>
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
        .style1
        {
            width: 339px;
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
                                                    <SPAN class=author>to add comment &amp; to 
          Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/FLASH_L3.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;&nbsp;<img alt="" src="images/PHP.JPG" 
                    style="width: 204px; height: 82px" /><br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_L1.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/PHP_Contents.aspx">Back to PHP Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_L3.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 2 - PHP <br />String Variables, Operators & If...Else Statements<br /></div>
         </H2>
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
                                                       
                                                       
                                                       <HR>

                  <P class=intro>A string variable is used to store and 
                  manipulate text.</P>
                  <HR>

                  <H2>String Variables in PHP</H2>
                  <P>String variables are used for values that contains 
                  characters.</P>
                  <P>In this chapter we are going to look at the most common 
                  functions and operators used to manipulate strings in PHP.</P>
                  <P>After we create a string we can manipulate it. A string can 
                  be used directly in a function or it can be stored in a 
                  variable.</P>
                  <P>Below, the PHP script assigns the text "Hello World" to a 
                  string variable called $txt:</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$txt="Hello World";<BR>echo 
                        $txt;<BR>?&gt; </TD></TR></TBODY></TABLE>
                  <P>The output of the code above will be:</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Hello World </TD></TR></TBODY></TABLE>
                  <P>Now, lets try to use some different functions and operators 
                  to manipulate the string.</P>
                  <HR>

                  <H2>The Concatenation Operator</H2>
                  <P>There is only one string operator in PHP.</P>
                  <P>The concatenation operator (.)&nbsp; is used to put two 
                  string values together.</P>
                  <P>To concatenate two string variables together, use the 
                  concatenation operator:</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$txt1="Hello World!";<BR>$txt2="What a 
                        nice day!";<BR>echo $txt1 . " " . $txt2;<BR>?&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P>The output of the code above will be:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Hello World! What a nice day! </TD></TR></TBODY></TABLE>
                  <P>If we look at the code above you see that we used the 
                  concatenation operator two times. This is because we had to 
                  insert a third string (a space character), to separate the two 
                  strings.<BR></P>
                  <HR>

                  <H2>The strlen() function</H2>
                  <P>The strlen() function is used to return the length of a 
                  string.</P>
                  <P>Let's find the length of a string:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>echo strlen("Hello world!");<BR>?&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P>The output of the code above will be:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>12 </TD></TR></TBODY></TABLE>
                  <P>The length of a string is often used in loops or other 
                  functions, when it is important to know when the string ends. 
                  (i.e. in a loop, we would want to stop the loop after the last 
                  character in the string).</P>
                  <HR>

                  <H2>The strpos() function</H2>
                  <P>The strpos() function is used to search for character 
                  within a string.</P>
                  <P>If a match is found, this function will return the position 
                  of the first match. If no match is found, it will return 
                  FALSE.</P>
                  <P>Let's see if we can find the string "world" in our 
                  string:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>echo strpos("Hello 
                        world!","world");<BR>?&gt; </TD></TR></TBODY></TABLE>
                  <P>The output of the code above will be:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>6 </TD></TR></TBODY></TABLE>
                  <P>The position of the string "world" in our string is 
                  position 6. The reason that it is 6 (and not 7), is that the 
                  first position in the string is 0, and not 1.</P>
                  <HR>

                  <H2>Complete PHP String Reference</H2>
                  <P>For a complete reference of all string functions, go to our 
                  <A 
                  href="http://www.w3schools.com/PHP/php_ref_string.asp">complete 
                  PHP String Reference</A>.</P>
                  <P>The reference contains a brief description, and examples of 
                  use, for each function!</P><BR>
                  
                   <HR>

                  <P class=intro>Operators are used to operate on values.</P>
                  <HR>

                  <H2>PHP Operators</H2>
                  <P>This section lists the different operators used in PHP.</P>
                  <P><B>Arithmetic Operators</B></P>
                  <TABLE class=reference border=1 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TH width="15%" align=left>Operator</TH>
                      <TH width="40%" align=left>Description</TH>
                      <TH width="25%" align=left>Example</TH>
                      <TH width="20%" align=left>Result</TH></TR>
                    <TR>
                      <TD vAlign=top>+</TD>
                      <TD vAlign=top>Addition</TD>
                      <TD vAlign=top>x=2<BR>x+2</TD>
                      <TD vAlign=top>4</TD></TR>
                    <TR>
                      <TD vAlign=top>-</TD>
                      <TD vAlign=top>Subtraction</TD>
                      <TD vAlign=top>x=2<BR>5-x</TD>
                      <TD vAlign=top>3</TD></TR>
                    <TR>
                      <TD vAlign=top>*</TD>
                      <TD vAlign=top>Multiplication</TD>
                      <TD vAlign=top>x=4<BR>x*5</TD>
                      <TD vAlign=top>20</TD></TR>
                    <TR>
                      <TD vAlign=top>/</TD>
                      <TD vAlign=top>Division</TD>
                      <TD vAlign=top>15/5<BR>5/2</TD>
                      <TD vAlign=top>3<BR>2.5</TD></TR>
                    <TR>
                      <TD vAlign=top>%</TD>
                      <TD vAlign=top>Modulus (division remainder)</TD>
                      <TD vAlign=top>5%2<BR>10%8<BR>10%2</TD>
                      <TD vAlign=top>1<BR>2<BR>0</TD></TR>
                    <TR>
                      <TD vAlign=top>++</TD>
                      <TD vAlign=top>Increment</TD>
                      <TD vAlign=top>x=5<BR>x++</TD>
                      <TD vAlign=top>x=6</TD></TR>
                    <TR>
                      <TD vAlign=top>--</TD>
                      <TD vAlign=top>Decrement</TD>
                      <TD vAlign=top>x=5<BR>x--</TD>
                      <TD vAlign=top>x=4</TD></TR></TBODY></TABLE>
                  <P><B>Assignment Operators</B></P>
                  <TABLE class=reference border=1 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TH width="15%" align=left>Operator</TH>
                      <TH width="40%" align=left>Example</TH>
                      <TH width="45%" align=left>Is The Same As</TH></TR>
                    <TR>
                      <TD vAlign=top>=</TD>
                      <TD vAlign=top>x=y</TD>
                      <TD vAlign=top>x=y</TD></TR>
                    <TR>
                      <TD vAlign=top>+=</TD>
                      <TD vAlign=top>x+=y</TD>
                      <TD vAlign=top>x=x+y</TD></TR>
                    <TR>
                      <TD vAlign=top>-=</TD>
                      <TD vAlign=top>x-=y</TD>
                      <TD vAlign=top>x=x-y</TD></TR>
                    <TR>
                      <TD vAlign=top>*=</TD>
                      <TD vAlign=top>x*=y</TD>
                      <TD vAlign=top>x=x*y</TD></TR>
                    <TR>
                      <TD vAlign=top>/=</TD>
                      <TD vAlign=top>x/=y</TD>
                      <TD vAlign=top>x=x/y</TD></TR>
                    <TR>
                      <TD vAlign=top>.=</TD>
                      <TD vAlign=top>x.=y</TD>
                      <TD vAlign=top>x=x.y</TD></TR>
                    <TR>
                      <TD vAlign=top>%=</TD>
                      <TD vAlign=top>x%=y</TD>
                      <TD vAlign=top>x=x%y</TD></TR></TBODY></TABLE>
                  <P><B>Comparison Operators</B></P>
                  <TABLE class=reference border=1 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TH width="15%" align=left>Operator</TH>
                      <TH width="40%" align=left>Description</TH>
                      <TH width="45%" align=left>Example</TH></TR>
                    <TR>
                      <TD vAlign=top>==</TD>
                      <TD vAlign=top>is equal to</TD>
                      <TD vAlign=top>5==8 returns false</TD></TR>
                    <TR>
                      <TD vAlign=top>!=</TD>
                      <TD vAlign=top>is not equal</TD>
                      <TD vAlign=top>5!=8 returns true</TD></TR>
                    <TR>
                      <TD vAlign=top>&lt;&gt;</TD>
                      <TD vAlign=top>is not equal</TD>
                      <TD vAlign=top>5&lt;&gt;8 returns true</TD></TR>
                    <TR>
                      <TD vAlign=top>&gt;</TD>
                      <TD vAlign=top>is greater than</TD>
                      <TD vAlign=top>5&gt;8 returns false</TD></TR>
                    <TR>
                      <TD vAlign=top>&lt;</TD>
                      <TD vAlign=top>is less than</TD>
                      <TD vAlign=top>5&lt;8 returns true</TD></TR>
                    <TR>
                      <TD vAlign=top>&gt;=</TD>
                      <TD vAlign=top>is greater than or equal to</TD>
                      <TD vAlign=top>5&gt;=8 returns false</TD></TR>
                    <TR>
                      <TD vAlign=top>&lt;=</TD>
                      <TD vAlign=top>is less than or equal to</TD>
                      <TD vAlign=top>5&lt;=8 returns true</TD></TR></TBODY></TABLE>
                  <P><B>Logical Operators</B></P>
                  <TABLE class=reference border=1 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TH width="15%" align=left>Operator</TH>
                      <TH width="40%" align=left>Description</TH>
                      <TH width="45%" align=left>Example</TH></TR>
                    <TR>
                      <TD vAlign=top>&amp;&amp;</TD>
                      <TD vAlign=top>and</TD>
                      <TD vAlign=top>x=6<BR>y=3 
                        <P>(x &lt; 10 &amp;&amp; y &gt; 1) returns 
true</P></TD></TR>
                   <TR>
                      <TD vAlign=top>||</TD>
                      <TD vAlign=top>or</TD>
                      <TD vAlign=top>x=6<BR>y=3 
                        <P>(x==5 || y==5) returns false</P></TD></TR>
                    <TR>
                      <TD vAlign=top>!</TD>
                      <TD vAlign=top>not</TD>
                      <TD vAlign=top>x=6<BR>y=3 
                        <P>!(x==y) returns true</P></TD></TR></TBODY></TABLE><BR>                                    
                                                       
                                                       
                                                       
                                                       
            <HR>

                  <P class=intro>Conditional statements are used to perform 
                  different actions based on different conditions.</P>
                  <HR>

                  <H2>Conditional Statements</H2>
                  <P>Very often when you write code, you want to perform 
                  different actions for different decisions. </P>
                  <P>You can use conditional statements in your code to do 
                  this.</P>
                  <P>In PHP we have the following conditional statements:</P>
                  <UL>
                    <LI><B>if statement</B> - use this statement to execute some 
                    code only if a specified condition is true</LI>
                    <LI><B>if...else statement</B> - use this statement to 
                    execute some code if a condition is true and another code if 
                    the condition is false</LI>
                    <LI><B>if...elseif....else statement</B> - use this 
                    statement to select one of several blocks of code to be 
                    executed</LI>
                    <LI><B>switch statement</B> - use this statement to select 
                    one of many blocks of code to be executed</LI></UL>
                  <HR>

                  <H2>The if Statement</H2>
                  <P>Use the if statement to execute some code only if a 
                  specified condition is true.</P>
                  <H3>Syntax</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>if (<I>condition</I>) <I>code to be executed if 
                        condition is true;</I></TD></TR></TBODY></TABLE>
                  <P>The following example will output "Have a nice weekend!" if 
                  the current day is Friday:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>$d=date("D");<BR>if 
                        ($d=="Fri") echo "Have a nice 
                        weekend!";<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>Notice that there is no ..else.. in this syntax. The code 
                  is executed <B>only if the specified condition is 
true</B>.</P>
                  <HR>

                  <H2>The if...else Statement</H2>
                  <P>Use the if....else statement to execute some code if a 
                  condition is true and another code if a condition is 
false.</P>
                  <H3>Syntax</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>if (<I>condition</I>)<BR>&nbsp;&nbsp;<I>code to be 
                        executed if condition is 
                        true;</I><BR>else<BR>&nbsp;&nbsp;<I>code to be executed 
                        if condition is false;</I> </TD></TR></TBODY></TABLE>
                  <H3>Example</H3>
                  <P>The following example will output "Have a nice weekend!" if 
                  the current day is Friday, otherwise it will output "Have a 
                  nice day!":</P>
                  <TABLE class=code border=4 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>$d=date("D");<BR>if 
                        ($d=="Fri")<BR>&nbsp;&nbsp;echo "Have a nice 
                        weekend!";<BR>else<BR>&nbsp;&nbsp;echo "Have a nice 
                        day!";<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P>If more than one line should be executed if a condition is 
                  true/false, the lines should be enclosed within curly 
                  braces:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>$d=date("D");<BR>if 
                        ($d=="Fri")<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 
                        "Hello!&lt;br /&gt;";<BR>&nbsp;&nbsp;echo "Have a nice 
                        weekend!";<BR>&nbsp;&nbsp;echo "See you on 
                        Monday!";<BR>&nbsp;&nbsp;}<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>The <B>if...elseif....else</B> Statement</H2>
                  <P>Use the if....elseif...else statement to select one of 
                  several blocks of code to be executed.</P>
                  <H3>Syntax</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>if (<I>condition</I>)<BR>&nbsp;&nbsp;<I>code to be 
                        executed if condition is true;</I><BR>elseif 
                        (<I>condition</I>)<BR>&nbsp;&nbsp;<I>code to be executed 
                        if condition is true;<BR></I>else<BR>&nbsp;&nbsp;<I>code 
                        to be executed if condition is false;</I> 
                  </TD></TR></TBODY></TABLE>
                  <H3>Example</H3>
                  <P>The following example will output "Have a nice weekend!" if 
                  the current day is Friday, and "Have a nice Sunday!" if the 
                  current day is Sunday. Otherwise it will output "Have a nice 
                  day!":</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD class="style1">&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>$d=date("D");<BR>if 
                        ($d=="Fri")<BR>&nbsp;&nbsp;echo "Have a nice 
                        weekend!";<BR>elseif ($d=="Sun")<BR>&nbsp;&nbsp;echo 
                        "Have a nice Sunday!";<BR>else<BR>&nbsp;&nbsp;echo "Have 
                        a nice 
                        day!";<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                    </TD></TR></TBODY></TABLE><BR>
                                           
                                                       
                                                       
                                                       
                                                       
                                                       
                                                       
                                                        <p>
                                                            &nbsp;<span class="text"><br />
                                                            <hr align="center" width="300" />
                                                            </span></p>
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
                    InsertCommand="INSERT PHP_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    
                      
                      
                      
                      
                      
                      
                      
                      SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [PHP_tblComments]">
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
                    PostBackUrl="~/PHP_Contents.aspx"> Back to PHP Contents</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_L1.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_L3.aspx">Next &gt;&gt;</asp:LinkButton>
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
