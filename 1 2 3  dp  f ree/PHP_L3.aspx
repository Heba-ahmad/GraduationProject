<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="PHP_L3.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>PHP Tutorial 3 : Switch, Arrays, While Loops & For Loops
</TITLE>
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
        #table2
        {
            width: 61%;
        }
        .style1
        {
            width: 452px;
        }
        .style2
        {
            width: 503px;
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
        DestinationPageUrl="~/PHP_L3.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                                                PostBackUrl="~/PHP_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/PHP_Contents.aspx">Back to PHP Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_L4.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 3 - PHP  Switch, <br /> Arrays, While Loops & For Loops</H2>
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
                                                       <P class=intro>Conditional statements are used to perform 
                  different actions based on different conditions.</P>
                  <HR>

                  <H2>The PHP Switch Statement</H2>
                  <P>Use the switch statement to select one of many blocks of 
                  code to be executed.</P>
                  <H3>Syntax</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>switch (<I>n</I>)<BR>{<BR>case 
                        <I>label1:</I><BR>&nbsp;&nbsp;<I>code to be executed if 
                        n=label1;</I><BR>&nbsp;&nbsp;break;<BR>case 
                        <I>label2:</I><BR>&nbsp;&nbsp;<I>code to be executed if 
                        n=label2;</I><BR>&nbsp;&nbsp;break;<BR>default:<BR>&nbsp;&nbsp;<I>code 
                        to be executed if n is different from both label1 and 
                        label2;</I><BR>} </TD></TR></TBODY></TABLE>
                  <P>This is how it works: First we have a single expression 
                  <I>n</I> (most often a variable), that is evaluated once. The 
                  value of the expression is then compared with the values for 
                  each case in the structure. If there is a match, the block of 
                  code associated with that case is executed. Use <B>break</B> 
                  to prevent the code from running into the next case 
                  automatically. The default statement is used if no match is 
                  found.</P>
                  <H3>Example</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>switch 
                        ($x)<BR>{<BR>case 1:<BR>&nbsp;&nbsp;echo "Number 
                        1";<BR>&nbsp;&nbsp;break;<BR>case 2:<BR>&nbsp;&nbsp;echo 
                        "Number 2";<BR>&nbsp;&nbsp;break;<BR>case 
                        3:<BR>&nbsp;&nbsp;echo "Number 
                        3";<BR>&nbsp;&nbsp;break;<BR>default:<BR>&nbsp;&nbsp;echo 
                        "No number between 1 and 
                        3";<BR>}<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE><BR>



 <HR>

                  <P class=intro>An array stores multiple values in one single 
                  variable.</P>
                  <HR>

                  <H2>What is an Array?</H2>
                  <P>A variable is a storage area holding a number or text. The 
                  problem is, a variable will hold only one value.</P>
                  <P>An array is a special variable, which can store multiple 
                  values in one single variable.</P>
                  <P>If you have a list of items (a list of car names, for 
                  example), storing the cars in single variables could look like 
                  this:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>$cars1="Saab";<BR>$cars2="Volvo";<BR>$cars3="BMW"; 
                      </TD></TR></TBODY></TABLE>
                  <P>However, what if you want to loop through the cars and find 
                  a specific one? And what if you had not 3 cars, but 300?</P>
                  <P>The best solution here is to use an array!</P>
                  <P>An array can hold all your variable values under a single 
                  name. And you can access the values by referring to the array 
                  name.</P>
                  <P>Each element in the array has its own index so that it can 
                  be easily accessed.</P>
                  <P>In PHP, there are three kind of arrays:</P>
                  <UL>
                    <LI><B>Numeric array</B> - An array with a numeric 
index</LI>
                    <LI><B>Associative array</B> - An array where each ID key is 
                    associated with a value</LI>
                    <LI><B>Multidimensional array</B> - An array containing one 
                    or more arrays</LI></UL>
                  <HR>

                  <H2>Numeric Arrays</H2>
                  <P>A numeric array stores each array element with a numeric 
                  index.</P>
                  <P>There are two methods to create a numeric array.</P>
                  <P>1. In the following example the index are automatically 
                  assigned (the index starts at 0):</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>$cars=array("Saab","Volvo","BMW","Toyota"); 
                    </TD></TR></TBODY></TABLE>
                  <P>2. In the following example we assign the index 
                  manually:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>$cars[0]="Saab";<BR>$cars[1]="Volvo";<BR>$cars[2]="BMW";<BR>$cars[3]="Toyota"; 
                      </TD></TR></TBODY></TABLE>
                  <H3>Example</H3>
                  <P>In the following example you access the variable values by 
                  referring to the array name and index:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$cars[0]="Saab";<BR>$cars[1]="Volvo";<BR>$cars[2]="BMW";<BR>$cars[3]="Toyota"; 
                        <BR>echo $cars[0] . " and " . $cars[1] . " are Swedish 
                        cars.";<BR>?&gt;</TD></TR></TBODY></TABLE>
                  <P>The code above will output:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Saab and Volvo are Swedish 
                  cars.</TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>Associative Arrays</H2>
                  <P>An associative array, each ID key is associated with a 
                  value.</P>
                  <P>When storing data about specific named values, a numerical 
                  array is not always the best way to do it.</P>
                  <P>With associative arrays we can use the values as keys and 
                  assign values to them.</P>
                  <H3>Example 1</H3>
                  <P>In this example we use an array to assign ages to the 
                  different persons:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>$ages = array("Peter"=&gt;32, "Quagmire"=&gt;30, 
                        "Joe"=&gt;34); </TD></TR></TBODY></TABLE>
                  <H3>Example 2</H3>
                  <P>This example is the same as example 1, but shows a 
                  different way of creating the array:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>$ages['Peter'] = "32";<BR>$ages['Quagmire'] = 
                        "30";<BR>$ages['Joe'] = "34"; </TD></TR></TBODY></TABLE>
                  <P>The ID keys can be used in a script:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;?php<BR>$ages['Peter'] = 
                        "32";<BR>$ages['Quagmire'] = "30";<BR>$ages['Joe'] = 
                        "34";<BR><BR>echo "Peter is " . $ages['Peter'] . " years 
                        old.";<BR>?&gt; </TD></TR></TBODY></TABLE>
                  <P>The code above will output:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Peter is 32 years old. </TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>Multidimensional Arrays</H2>
                  <P>In a multidimensional array, each element in the main array 
                  can also be an array. And each element in the sub-array can be 
                  an array, and so on.</P>
                  <H3>Example</H3>
                  <P>In this example we create a multidimensional array, with 
                  automatically assigned ID keys:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>$families = 
                        array<BR>&nbsp;&nbsp;(<BR>&nbsp;&nbsp;"Griffin"=&gt;array<BR>&nbsp;&nbsp;(<BR>&nbsp;&nbsp;"Peter",<BR>&nbsp;&nbsp;"Lois",<BR>&nbsp;&nbsp;"Megan"<BR>&nbsp;&nbsp;),<BR>&nbsp;&nbsp;"Quagmire"=&gt;array<BR>&nbsp;&nbsp;(<BR>&nbsp;&nbsp;"Glenn"<BR>&nbsp;&nbsp;),<BR>&nbsp;&nbsp;"Brown"=&gt;array<BR>&nbsp;&nbsp;(<BR>&nbsp;&nbsp;"Cleveland",<BR>&nbsp;&nbsp;"Loretta",<BR>&nbsp;&nbsp;"Junior"<BR>&nbsp;&nbsp;)<BR>&nbsp;&nbsp;); 
                      </TD></TR></TBODY></TABLE>
                  <P>The array above would look like this if written to the 
                  output:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Array<BR>(<BR>[Griffin] =&gt; 
                        Array<BR>&nbsp;&nbsp;(<BR>&nbsp;&nbsp;[0] =&gt; 
                        Peter<BR>&nbsp;&nbsp;[1] =&gt; Lois<BR>&nbsp;&nbsp;[2] 
                        =&gt; Megan<BR>&nbsp;&nbsp;)<BR>[Quagmire] =&gt; 
                        Array<BR>&nbsp;&nbsp;(<BR>&nbsp;&nbsp;[0] =&gt; 
                        Glenn<BR>&nbsp;&nbsp;)<BR>[Brown] =&gt; 
                        Array<BR>&nbsp;&nbsp;(<BR>&nbsp;&nbsp;[0] =&gt; 
                        Cleveland<BR>&nbsp;&nbsp;[1] =&gt; 
                        Loretta<BR>&nbsp;&nbsp;[2] =&gt; 
                        Junior<BR>&nbsp;&nbsp;)<BR>) </TD></TR></TBODY></TABLE>
                  <H3>Example 2</H3>
                  <P>Lets try displaying a single value from the array 
above:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>echo "Is " . $families['Griffin'][2] . <BR>" a part 
                        of the Griffin family?"; </TD></TR></TBODY></TABLE>
                  <P>The code above will output:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>Is Megan a part of the Griffin family? 
                  </TD></TR></TBODY></TABLE><BR>
                  <HR>

             <P class=intro>Loops execute a block of code a specified 
                  number of times, or while a specified condition is true.</P>
                  <HR>

                  <H2>PHP Loops</H2>
                  <P>Often when you write code, you want the same block of code 
                  to run over and over again in a row. Instead of adding several 
                  almost equal lines in a script we can use loops to perform a 
                  task like this.</P>
                  <P>In PHP, we have the following looping statements:</P>
                  <UL>
                    <LI><B>while </B>- loops through a block of code while a 
                    specified condition is true</LI>
                    <LI><B>do...while</B> - loops through a block of code once, 
                    and then repeats the loop as long as a specified condition 
                    is true</LI>
                    <LI><B>for </B>- loops through a block of code a specified 
                    number of times</LI>
                    <LI><B>foreach </B>- loops through a block of code for each 
                    element in an array</LI></UL>
                  <HR>

                  <H2>The while Loop</H2>
                  <P>The while loop executes a block of code while a condition 
                  is true.</P>
                  <H3>Syntax</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>while (<I>condition</I>)<BR>&nbsp; {<BR><I>&nbsp; 
                        code to be executed</I>;<BR>&nbsp; }</TD></TR></TBODY></TABLE>
                  <H3>Example</H3>
                  <P>The example below defines a loop that starts with i=1. The 
                  loop will continue to run as long as i is less than, or equal 
                  to 5. i will increase by 1 each time the loop runs:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>$i=1;<BR>while($i&lt;=5)<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;echo 
                        "The number is " . $i . "&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;$i++;<BR>&nbsp;&nbsp;}<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>Output:</P>
                  <TABLE id=table1 class=code border=3 cellSpacing=0 
                  cellPadding=0 width="100%">
                    <TBODY>
                    <TR>
                      <TD>The number is 1<BR>The number is 2<BR>The number is 
                        3<BR>The number is 4<BR>The number is 
                  5</TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>The do...while Statement</H2>
                  <P>The do...while statement will always execute the block of 
                  code once, it will then check the condition, and repeat the 
                  loop while the condition is true.</P>
                  <H3>Syntax</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>do<BR>&nbsp; {<BR><I>&nbsp; code to be 
                        executed;<BR>&nbsp; </I>}<BR>while (<I>condition</I>); 
                      </TD></TR></TBODY></TABLE>
                  <H3>Example</H3>
                  <P>The example below defines a loop that starts with i=1. It 
                  will then increment i with 1, and write some output. Then the 
                  condition is checked, and the loop will continue to run as 
                  long as i is less than, or equal to 5:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>$i=1;<BR>do<BR>&nbsp;&nbsp;{<BR>&nbsp;&nbsp;$i++;<BR>&nbsp;&nbsp;echo 
                        "The number is " . $i . "&lt;br 
                        /&gt;";<BR>&nbsp;&nbsp;}<BR>while 
                        ($i&lt;=5);<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                      </TD></TR></TBODY></TABLE>
                  <P>Output:</P>
                  <TABLE id=table2 class=code border=0 cellSpacing=0 
                  cellPadding=0 width="100%">
                    <TBODY>
                    <TR>
                      <TD>The number is 2<BR>The number is 3<BR>The number is 
                        4<BR>The number is 5<BR>The number is 
                  6</TD></TR></TBODY></TABLE>
                  <P>The for loop and the foreach loop will be explained in the 
                  next chapter.</P><BR>

 <P class=intro>Loops execute a block of code a specified 
                  number of times, or while a specified condition is true.</P>
                  <HR>

                  <H2>The for Loop</H2>
                  <P>The for loop is used when you know in advance how many 
                  times the script should run.</P>
                  <H3>Syntax</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>for (<I>init; condition; increment</I>)<BR>&nbsp; 
                        {<BR>&nbsp;&nbsp;<I>code to be executed;</I><BR>&nbsp; } 
                      </TD></TR></TBODY></TABLE>
                  <P>Parameters:</P>
                  <UL>
                    <LI><I>init</I>: Mostly used to set a counter (but can be 
                    any code to be executed once at the beginning of the 
                    loop)</LI>
                    <LI><I>condition</I>: Evaluated for each loop iteration. If 
                    it evaluates to TRUE, the loop continues. If it evaluates to 
                    FALSE, the loop ends.</LI>
                    <LI><I>increment</I>: Mostly used to increment a counter 
                    (but can be any code to be executed at the end of the 
                    loop)</LI></UL>
                  <P><B>Note: </B>Each of the parameters above can be empty, or 
                  have multiple expressions (separated by commas).</P>
                  <H3>Example</H3>
                  <P>The example below defines a loop that starts with i=1. The 
                  loop will continue to run as long as i is less than, or equal 
                  to 5. i will increase by 1 each time the loop runs:</P>
                  <TABLE class=code border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>for 
                        ($i=1; $i&lt;=5; $i++)<BR>&nbsp; {<BR>&nbsp;&nbsp;echo 
                        "The number is " . $i . "&lt;br /&gt;";<BR>&nbsp; 
                        }<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P>Output:</P>
                  <TABLE id=table1 class=code border=3 cellSpacing=0 
                  cellPadding=0 width="100%">
                    <TBODY>
                    <TR>
                      <TD>The number is 1<BR>The number is 2<BR>The number is 
                        3<BR>The number is 4<BR>The number is 
                  5</TD></TR></TBODY></TABLE><BR>
                  <HR>

                  <H2>The foreach Loop</H2>
                  <P>The foreach loop is used to loop through arrays.</P>
                  <H3>Syntax</H3>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD>foreach ($<I>array </I>as<I> 
                        </I>$<I>value</I>)<BR>&nbsp; {<BR>&nbsp;&nbsp;<I>code to 
                        be executed;</I><BR>&nbsp; } </TD></TR></TBODY></TABLE>
                  <P>For every loop iteration, the value of the current array 
                  element is assigned to $value (and the array pointer is moved 
                  by one) - so on the next loop iteration, you'll be looking at 
                  the next array value.</P>
                  <H3>Example</H3>
                  <P>The following example demonstrates a loop that will print 
                  the values of the given array:</P>
                  <TABLE class=code border=3 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD class="style1">&lt;html&gt;<BR>&lt;body&gt;<BR><BR>&lt;?php<BR>$x=array("one","two","three");<BR>foreach 
                        ($x as $value)<BR>&nbsp; {<BR>&nbsp;&nbsp;echo $value . 
                        "&lt;br /&gt;";<BR>&nbsp; 
                        }<BR>?&gt;<BR><BR>&lt;/body&gt;<BR>&lt;/html&gt; 
                    </TD></TR></TBODY></TABLE>
                  <P>Output:</P>
                  <TABLE id=table2 class=code border=3 cellSpacing=0 
                  cellPadding=0>
                    <TBODY>
                    <TR>
                      <TD class="style2">one<BR>two<BR>three</TD></TR></TBODY></TABLE><BR>
                    
                                                       
                                                            <p><span class="text"><br />
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
                    PostBackUrl="~/PHP_Contents.aspx">Back to PHPContents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/PHP_L4.aspx">Next &gt;&gt;</asp:LinkButton>
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
