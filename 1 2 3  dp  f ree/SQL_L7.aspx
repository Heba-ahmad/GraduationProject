<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="SQL_L7.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>SQL Tutorials</TITLE>
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
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<A title="SignUp" 
  href="Signup.aspx">Signup</A>                                
                                                    <SPAN class=author>to add comment &amp; to 
          Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/SQL_L7.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                <img alt="" src="images/SQL.JPG" style="width: 204px; height: 80px" />&nbsp;&nbsp;<br />
                &nbsp;
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L6.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/SQL_Contents.aspx">Back to SQL Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L8.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 7  - More queries</H2>
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
                                                        <br />
                                                    </DIV>
      </DIV>
      <DIV class=para1>
<DIV class=para1>
<DIV class=para1>
<H3>Case study - Bids management</H3>Our organization, FAM.org, runs development 
projects in foreign countries.<BR>Each project has a name, a project chief (or 
Head), a start and end date and an amount of money budgeted to complete the 
project.<BR>To actually operate the projects, FAM calls upon companies from the 
private sector. <BR>For every project, companies are invited to submit bids. 
They must specify how much they will charge to do the project. FAM will compare 
the bids and will select a company from the list of bidders.<BR>In order to 
submit a bid, a company must be registered with FAM. It must provide details 
such as: name of CEO, number of employees and date of creation of the company. 
City and state in which the company HQ is located are also important because, as 
you may guess, there will be politics involved.<BR>The purpose of the database 
is to track the bids. There are hundreds of projects ongoing or planned at any 
given time and there are dozens of companies bidding on those projects. Just 
tracking all the bids is a big job.<BR>FAM wants to be able to see which 
companies bid on which projects, how much the bids differ from the budget 
amounts, how qualified are the companies in terms of experience and size, what 
are the project start and end dates for all the various projects, 
etc.<BR><BR><BR><BR><BR>
<DIV align=center>
<SCRIPT type=text/javascript><!--
ch_client = "MikeLat";
ch_type = "mpu";
ch_width = 468;
ch_height = 180;
ch_non_contextual = 4;
ch_vertical ="premium";
ch_sid = "SQL";
var ch_queries = new Array( );
var ch_selected=Math.floor((Math.random()*ch_queries.length));
if ( ch_selected < ch_queries.length ) {
ch_query = ch_queries[ch_selected];
}
//--></SCRIPT>
</DIV><BR><BR><BR>
<DIV class=title2>Download sample database </DIV><BR>You can download the sample 
Bids management database from the <A title="free sql tutorial" 
href="http://www.profsr.com/sql/sqldownld.htm">Download 
Area</A><BR><BR><BR><BR><BR><BR>The database is created in MySQL and MySQL Query 
Browser is used to execute the managers' requests.<BR><BR><BR><IMG alt="" 
src="images/LessonsImages/SQLLessons/SQ05F04.gif" width=611 height=295><BR><BR><BR><IMG alt="" 
src="images/LessonsImages/SQLLessons/SQ05F05.gif" width=683 height=296><BR><BR><BR><IMG alt="" 
src="images/LessonsImages/SQLLessons/SQ05F03.gif" width=415 height=398><BR><BR><BR>Which companies bid 
on project 05-7777?<BR><BR><IMG src="images/LessonsImages/SQLLessons/SQ05F06.gif"> 
<BR><BR><BR><BR><BR><BR>
<H3>SELECT WITH THE AGGREGATE FUNCTIONS</H3><BR wp="br1"><BR wp="br2">
<BLOCKQUOTE>You use aggregates in the SELECT statement when you want to get 
  summary information (statistics) on sets of data.<BR><BR>Here we assume that 
  you've done enough programming to know that a function is a system-defined 
  program that accepts a parameter from the user and returns an answer. A 
  function is always composed of a keyword followed by parentheses ( ).<BR><BR>
  <TABLE border=1 width="80%" align=center>
    <TBODY>
    <TR>
      <TH colSpan=2>Aggregate functions</TH>
    <TR>
      <TD><B>SUM</B> (expression)</TD>
      <TD>total values in a numeric expression</TD></TR>
    <TR>
      <TD><B>AVG</B> (expression)</TD>
      <TD>average values in a numeric expression</TD></TR>
    <TR>
      <TD><B>COUNT</B> (expression)</TD>
      <TD>the number of non-null values</TD></TR>
    <TR>
      <TD><B>COUNT (*)</B></TD>
      <TD>the number of selected rows</TD></TR>
    <TR>
      <TD><B>MAX</B> (expression)</TD>
      <TD>the highest value in the expression</TD></TR>
    <TR>
      <TD><B>MIN</B> (expression)</TD>
      <TD>the lowest value in the 
  expression</TD></TR></TBODY></TABLE><BR><BR><BR>First, note that an aggregate 
  function will always return only one row. That's because it answers a question 
  refering to a <B>group or set</B> of data. You can find the biggest value in 
  the set but, you can't know what item that biggest value refers to. Same with 
  smallest value or average.<BR><BR>It looks like a good idea to write something 
  like:<BR><BR>
  <BLOCKQUOTE><B>SELECT ProdNum, ProdName, MIN(Cost) FROM 
  Products;</B></BLOCKQUOTE>to get the name of the lowest-cost item. But it 
  won't work because the aggregates don't work on individual 
rows.<BR><BR><BR></BLOCKQUOTE></DIV><BR>
<DIV class=para1>
<P><B>EXAMPLES:</B><BR><BR><BR>To obtain the biggest SellPrice in the Products 
table:<BR><BR>
<BLOCKQUOTE><B>SELECT MAX(SellPrice) FROM Products;</B></BLOCKQUOTE><BR><BR>To 
obtain the number of rows in the Products table, in fact the number of products 
carried:<BR><BR>
<BLOCKQUOTE><B>SELECT COUNT(*) FROM Products;</B> </BLOCKQUOTE><BR><BR>Now, the 
previous statement will count the number of products based on the number of 
primary keys or Product numbers entered.<BR><BR>If you thought that there might 
be many duplicates in the items carried, you assume that the duplicates would 
have the same ProdName; so by counting ProdName and DISTINCT ProdName you would 
get an idea of how many duplicates there are, although you cannot establish what 
they are:<BR><BR>
<BLOCKQUOTE><B>SELECT COUNT(ProdName) FROM Products;<BR><BR>SELECT DISTINCT 
  COUNT(ProdName) FROM Products;</B></BLOCKQUOTE><BR><BR><BR>The WHERE clause can 
also be used with aggregates to define the set of data to be 
calculated.<BR><BR>To find out how many big-profit items you have (assuming that 
<I>big</I> means more that $500), you do this:<BR><BR>
<BLOCKQUOTE><B>SELECT COUNT(*) AS [Number of big-profit items] 
  <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM Products 
  <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  WHERE (SellPrice - Cost) &gt; 500; </B></BLOCKQUOTE><BR><BR>Or, in this case, to 
get the average cost of sportings goods, assuming that items in the Sports 
department all have a number starting with 'S':<BR><BR>
<BLOCKQUOTE><B>SELECT AVG(Cost) AS [Average cost of Sports] 
  <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM Products 
  <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  WHERE ProdNum LIKE "S*"; </B></BLOCKQUOTE><BR><BR><BR>The AVG function will 
return the average of a set of numerical values and SUM will return a 
total:<BR><BR>
<BLOCKQUOTE><B>SELECT AVG(SellPrice) FROM Products;</B></BLOCKQUOTE><BR><BR>
<BLOCKQUOTE><B>SELECT SUM(Cost) FROM Products;</B></BLOCKQUOTE><BR><BR>Although 
you are not allowed to work on individual rows, you are allowed to use several 
aggregates in the same statement:<BR><BR>
<BLOCKQUOTE><B>SELECT SUM(Cost), COUNT(Cost), AVG(Cost), 
  AVG(SellPrice)<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
  Products;</B></BLOCKQUOTE><BR><BR>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq05f01.gif" width=358 
height=126></DIV><BR><BR>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq05f02.gif" width=420 
height=80></DIV><BR><BR><BR>
<DIV align=center><A 
href="#top">Top</A><BR><BR><BR><BR></DIV><BR><BR><BR>
<H3>USING SUBQUERIES</H3>We said earlier that you cannot use an aggregate 
function with an individual query. You can find what the biggest SellPrice is 
but you can't find what that Product is. Although that's true with the normal 
SELECT statement, there is a way to work around it. It's called a 
<B>subquery</B> and it relies on what we call <B>the priority of operators</B> 
in programming - the fact that any operation in parentheses, ( ), is executed 
first in a statement because ( ) is the operator with the highest 
priority.<BR><BR>When we do this:<BR><BR>
<BLOCKQUOTE><B>SELECT MAX(SellPrice) FROM Products;</B></BLOCKQUOTE>the query 
returns the value of the biggest SellPrice.<BR><BR>Now, if we enclose that 
statement in parentheses and use it as a <B>subquery</B> in another statement 
like this:<BR><BR>
<BLOCKQUOTE><B>SELECT ProdNum, ProdName, SellPrice FROM 
  Products<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE SellPrice = 
  (SELECT MAX(SellPrice) FROM Products);</B></BLOCKQUOTE>the subquery returns a 
single value which is then used in the WHERE clause of the main statement to 
display the number and name of the product having the biggest SellPrice. If more 
than one products have the max price, several rows will be 
displayed.<BR><BR><BR>What products cost more than the average cost of 
products?<BR>First, calculate the average cost in a subquery and then, compare 
the table with that value:<BR><BR>
<BLOCKQUOTE><B>SELECT ProdNum, ProdName, Cost FROM 
  Products<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE Cost &gt;= 
  (SELECT AVG(Cost) FROM Products);</B></BLOCKQUOTE><BR><BR>The subquery can also 
be used to answer questions where you have to compare data with other rows from 
the same table.<BR><BR>Getting back to our ProjectMgt example, we'll use the 
Employee table. <BR><BR>How would you answer this: "Which employees live in the 
same city as employee '1234'?".<BR><BR>You could do it in steps.<BR><BR>First 
you have to find the employee's city:<BR><BR>
<BLOCKQUOTE><B>SELECT e_city FROM Employee 
  <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE e_Id = 
'1234';</B></BLOCKQUOTE>and, if it is, let's say, 'Boston', use that in the next 
statement:<BR><BR>
<BLOCKQUOTE><B>SELECT e_Id, e_Fname, e_Lname FROM 
  Employee<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WHERE e_City = 
  'Boston';</B></BLOCKQUOTE><BR><BR><BR>Or, you could decide to do it efficiently 
and use the subquery technique:<BR><BR>
<BLOCKQUOTE><B>SELECT e_Id, e_Fname, e_Lname FROM 
  Employee<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WHERE e_City 
  =<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(SELECT 
  e_city FROM Employee WHERE e_Id = '1234');</B></BLOCKQUOTE><BR><BR><BR>Which 
employees are older than John Smith?<BR><BR>
<BLOCKQUOTE><B>SELECT e_Fname, e_Lname, e_BirthDate FROM 
  Employee<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WHERE e_BirthDate 
  &lt;<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(SELECT 
  e_BirthDate FROM 
  Employee<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
  e_Fname = 'John' AND e_Lname = 'Smith' );</B></BLOCKQUOTE><BR><BR><BR>Note that 
the subquery must return <B>one and only one value</B>. The WHERE clause in the 
main query can only compare to a single value and that means <B>one column from 
one row</B>. In the previous statement, if there is more than one 'John Smith' 
in the company, we've got a problem. In that case we would have to use e_Id 
instead of name to identify the person.<BR><BR>You have to recognize that the 
following 2 statements don't make any kind of sense:<BR><BR>
<BLOCKQUOTE><B>SELECT e_Id, e_Fname, e_Lname FROM 
  Employee<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WHERE e_City 
  =<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(SELECT 
  * FROM Employee WHERE e_Id = '1234');</B></BLOCKQUOTE><BR><BR>
<BLOCKQUOTE><B>SELECT e_Id, e_Fname, e_Lname FROM 
  Employee<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WHERE e_City 
  =<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(SELECT 
  e_city FROM Employee );</B></BLOCKQUOTE><BR>
</DIV>
    <BR>
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
                                                    <BR><BR></DIV><BR>
                                            
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
                    InsertCommand="INSERT SQL_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    
                      SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [SQL_tblComments]">
                    <InsertParameters>
                        <asp:Parameter Name="Name" />
                        <asp:Parameter Name="Comments" />
                        <asp:Parameter Name="Rating" />
                        <asp:Parameter Name="Date" />
                    </InsertParameters>
                </asp:SqlDataSource>
                  <p>
                  </p>
                  <br />
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
                    PostBackUrl="~/SQL_Contents.aspx">Back to SQL Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L6.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L8.aspx">Next &gt;&gt;</asp:LinkButton>
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
