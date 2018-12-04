<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="SQL_L6.aspx.cs" Inherits="_Default" %>

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
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<A title="SignUp" 
  href="Signup.aspx">Signup</A>                                
                                                    <SPAN class=author>to add comment &amp; to 
          Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/SQL_L6.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;<img alt="" src="images/SQL.JPG" 
                    style="width: 204px; height: 80px" /><br />
                &nbsp;
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L6.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/SQL_Contents.aspx">Back to SQL Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L7.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 6 - Queries</H2>
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
<H3>The database
    </H3>&nbsp; Before going any further, please make sure that the 
ProjectMgt database you are working with matches the model we created initially. 
You may have experimented with the tables and the columns in the previous lesson 
and <B>that is perfectly OK!</B> But before going on to the query statements, it 
is recommended that you consult <B>Fig. 2-8 in Lesson 2</B> and match your 
database to that model. Don't worry about primary keys and relationships and so 
on at this point. We'll take care of that later. But do enter some meaningful 
data in the tables so that your queries will have something to display when you 
run them (15 or 20 records in each table should be enough).<BR><BR>When you 
input data into the tables, if you haven't created the relationships in Access, 
try to maintain <B>referential integrity</B>. That is: when you assign a 
department number to an employee, that department number should already exist in 
the Department table. When you create a Timesheet record, the employee number 
should exist in the Employee table and the project number should exist in the 
Project table.<BR><BR>You may use SQL statements to change the database or you 
may do it with Access. If you're really lazy...er, sorry, really busy, you can 
download the database from the Download area after the last 
lesson.<BR><BR><BR><BR><BR><BR>
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
<DIV class=title2>Import from Access </DIV><BR>Since we've already built the 
Project management database in Access, it seems a shame to waste all that 
work.<BR><BR>Fortunately, DBManager has a Wizard to convert the Access database 
into MySQL.<BR><BR><BR><BR><IMG alt="" src="images/LessonsImages/SQLLessons/sq03cf08.gif" width=895 
height=567> </DIV><BR><BR><BR><BR><BR>
<DIV class=para1>
<DIV class=title2>Creating Queries </DIV><BR>As we mentionned earlier, it is 
quite probable that 95% of your work with SQL will consist of questions to the 
database. If the database structure is well-built and the information has been 
input, any question can be answered, no matter how tricky. "How many widgets 
were bought by women aged between 25 and 30 on Tuesdays in months ending in R 
over the past 5 years?" Give us 5 minutes and we'll build a query that will 
answer that for you. That's called an <B>ad hoc query</B>, which means "as 
needed" rather than one which has to be planned and programmed in advance. It 
can impress the hell out of the Boss or the Sales Manager! Hey! before you know 
it we'll be as good at this stuff as the guys who do the baseball stats on TV. 
"Yes Frank, it's amazing that this guy hit 255 when batting left-handed against 
right-handed pitchers in night games when the moon was full and the temperature 
was over 75 degrees and there was a light breeze from the west!"<BR><BR>The only 
statement needed to build a query is the <B>SELECT</B> statement.<BR><BR>The 
basic syntax of the SELECT statement is:<BR>
<BLOCKQUOTE><B>SELECT</B> column1, column2, ... 
  <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>FROM</B> table_name1, table_name2, 
  ...<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>WHERE</B> 
condition;<BR><BR><BR></BLOCKQUOTE>The <B>SELECT</B> clause lets you specify 
which columns to display (they may be table columns or they may be calculated 
from the data in other columns). The <B>FROM</B> clause lets you specify the 
table or tables from which the data will be obtained. Note that the standard 
SELECT statement allows you to get the data from as many tables as you need. If 
you have to access the Employee table and the Timesheet table to build the 
query, you can do it. If you have to access 15 tables, you can do it. But that's 
a lot more involved and we'll leave it for another day, more specifically, 
Lesson 7. For the next few lessons we'll master the SELECT statement to access 
any information we need in one table at a time. Finally, the <B>WHERE</B> clause 
(see below) will determine which records, also refered to as rows, will be 
selected.<BR><BR>
<BLOCKQUOTE></BLOCKQUOTE>
<BLOCKQUOTE>Here are some examples of the SELECT in action:<BR><BR><BR><IMG 
  border=0 src="images/LessonsImages/SQLLessons/sq04f01.gif" width=350 
  height=173><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Fig. 
  4-1</B><BR><BR>
  <BLOCKQUOTE>Instead of listing the columns, use the * to mean 'All the 
    columns'<BR><BR>And the result is:<BR><BR></BLOCKQUOTE><IMG border=0 
  src="images/LessonsImages/SQLLessons/sq04f02.gif" width=604 
  height=244><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Fig. 
  4-2</B><BR><BR><BR>Or display only certain columns:<BR><BR><IMG border=0 
  src="images/LessonsImages/SQLLessons/sq04f03.gif" width=264 
  height=105><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Fig. 
  4-3</B><BR><BR>and the result is:<BR><BR><IMG border=0 
  src="images/LessonsImages/SQLLessons/sq04f04.gif" width=364 
  height=168><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Fig. 
  4-4</B><BR><BR><BR><BR>To get data from the Employee table:<BR><BR><IMG 
  border=0 src="images/LessonsImages/SQLLessons/sq04f05.gif" width=287 
  height=100><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Fig. 
  4-5</B><BR><BR>from which we get:<BR><BR><IMG border=0 
  src="images/LessonsImages/SQLLessons/sq04f06.gif" width=376 
  height=189><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Fig. 
  4-6</B><BR><BR><BR><BR>Same query, different look:<BR><BR><IMG border=0 
  src="images/LessonsImages/SQLLessons/sq04f07.gif" width=229 
  height=130><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Fig. 
  4-7</B><BR><BR>The 'AS' clause allows you to display a column heading that is 
  more representative<BR>than the field name usually displayed by the query. 
  Compare with Fig. 4.6.<BR><BR><IMG border=0 src="images/LessonsImages/SQLLessons/sq04f08.gif" 
  width=361 
  height=191><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Fig. 
  4-8</B><BR><BR><BR><BR><BR>This is what it look like with the Query 
  Editor<BR><BR><IMG src="images/LessonsImages/SQLLessons/sq04f11.gif"><BR><BR><BR><BR>
  <DIV align=center><A 
  href="#top">Top</A><BR><BR><BR><BR></DIV><BR><BR><BR>
  <DIV align=center>
  <P><STRONG>THE WHERE ... CLAUSE</STRONG></P></DIV><BR><BR>As stated 
  previously, the <B>WHERE</B> clause is in fact an IF statement. If a record 
  returns TRUE to the WHERE clause, it is selected to be displayed.<BR><BR>If 
  the table contains 10,000 records, or rows, you may wish to see only a few or 
  even only one. In that case you would specify the condition as "<B>... WHERE 
  primary_key_column = 'value' ...</B>".<BR><BR><BR wp="br1"><BR wp="br2">
  <P>The WHERE clause uses the usual operators to build the 
  condition:<BR><BR>
  <P>=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  &lt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  &gt;=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  &lt;=&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  &lt;&gt;&nbsp;&nbsp;&nbsp; or &nbsp;&nbsp;&nbsp; != <BR><BR>and a few you may 
  not be as familiar with but which we'll see in the 
  examples:<BR><BR>BETWEEN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  LIKE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  IN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NOT 
  <BR><BR><BR><BR>For the next examples, suppose we have a new table called 
  <B>Products</B>. Note that we can create this table in the ProjectMgt 
  database, even though it ha absolutely nothing to do with the application. We 
  have to put the table somewhere and that's as good a place as any. It's 
  important to understand that the tables have no relationships between each 
  other until we define those relationships. If we want to create a table to be 
  used on it's own and then drop it when we're done, there is no problem with 
  that.<BR><BR>
  <DIV align=center><U><B>PRODUCTS</B></U> 
  <BLOCKQUOTE>ProdNum<BR>ProdName<BR>SellPrice<BR>Cost<BR></BLOCKQUOTE></DIV>
  <DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq04f09.gif" width=342 
  height=100><BR>Fig. 4-9</DIV><BR><BR>
  <P><B>EXAMPLES:</B> 
  <P>
  <BLOCKQUOTE>
    <P><B>SELECT * FROM Products 
    <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE ProdNum = 
    'A1234';</B><BR><BR><BR><BR wp="br1"><BR wp="br2">
    <P><B>SELECT ProdNum, ProdName, SellPrice 
    <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM Products 
    <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
    SellPrice &gt; 50;</B><BR><BR><BR><BR wp="br1"><BR wp="br2">
    <P><B>SELECT ProdNum, SellPrice, (SellPrice * 1.1) 
    <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
    Products;</B><BR><BR>
    <BLOCKQUOTE>we can display a calculated column, in this case, what a 10% 
      price increase would look like<BR><BR>use the usual arithmetic 
      operators:<BR><BR>+ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; / 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^ 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      (&nbsp;&nbsp;&nbsp;) <BR><BR>
      <TABLE border=1 width="50%" bgColor=#ffffcc>
        <TBODY>
        <TR>
          <TD>There is a common misconception about calculated columns in the 
            SELECT statement - people think that the calculation will somehow 
            change the data in the table. That is impossible. The SELECT 
            statement is strictly a <B>display</B> statement. Any calculations 
            done are read-only. There is no way that a SELECT can modify a 
            table. The only statements that can do that are the ones we looked 
            at in the previous lesson: INSERT, UPDATE and 
      DELETE.</TD></TR></TBODY></TABLE></BLOCKQUOTE><BR><BR wp="br1"><BR wp="br2">
    <P><B>SELECT ProdNum, SellPrice, Cost, (SellPrice - Cost) AS 
    [Profit]<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
    Products<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
    ProdNum LIKE 'A*';</B><BR><BR>
    <BLOCKQUOTE>we can display the calculated column with an appropriate 
      title, for all products whose number starts with 'A'.<BR><BR>* and ? are 
      the widcard characters<BR><BR>* = character string (any number of 
      characters)<BR><BR>? = 1 character </BLOCKQUOTE><BR><BR><BR wp="br1"><BR 
    wp="br2">
    <P><B>SELECT ProdNum, 
    ProdName<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
    Products<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
    ProdNum LIKE "A?5??";</B><BR><BR><BR><BR wp="br1"><BR wp="br2">
    <P><B>SELECT ProdNum, ProdName, SellPrice 
    <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
    Products<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
    SellPrice BETWEEN 50 AND 150;</B><BR><BR>
    <BLOCKQUOTE>could also be written as &gt;= 50 AND &lt;= 
    150</BLOCKQUOTE><BR><BR><BR wp="br1"><BR wp="br2">
    <P><B>SELECT ProdNum, ProdName 
    <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM Products 
    <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
    ProdName LIKE "*general*";</B><BR><BR>
    <BLOCKQUOTE>display if the name contains the string 
    'general'</BLOCKQUOTE><BR><BR><BR wp="br1"><BR wp="br2">
    <P><B>SELECT ProdNum, ProdName 
    <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
    Products<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
    ProdNum IN ('A100', 'A200', 'B500', 'D800');</B><BR><BR>
    <BLOCKQUOTE>if the product number is one of those named</BLOCKQUOTE><BR><BR 
    wp="br1"><BR wp="br2">
    <P><B>AND</B> and <B>OR</B> are used like in all other languages:<BR><BR><BR 
    wp="br1"><BR wp="br2">
    <P><B>SELECT * FROM Products 
    <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE ProdName 
    LIKE "A*" AND SellPrice &gt; 500;</B> <BR><BR><BR><BR wp="br1"><BR wp="br2">
    <P><B>SELECT * FROM Products 
    <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE (SellPrice - 
    Cost) &lt; 10 OR (SellPrice - Cost) &gt; 500;</B> <BR><BR>
    <BLOCKQUOTE>display the low-profit and the high-profit 
    items</BLOCKQUOTE><BR><BR><BR>
    <DIV align=center><A 
    href="#top">Top</A><BR><BR><BR><BR></DIV><BR><BR><BR>
    <P><B>
    <CENTER>Working with dates</CENTER></B><BR wp="br1"><BR wp="br2">Whenever 
    you develop a commercial application, there is absolutely no way that you 
    can get by without using date fields. There are Birth dates, Hire dates, 
    Delivery dates, Order dates, and so on, and so on ....<BR><BR>In ancient 
    times, like 20 years ago, dates were stored as strings and we all remember 
    what that brought about in 1999. Now all DBMSs handle dates in a Date/Time 
    format, which makes our lives a lot simpler, but we have to be aware of the 
    particular properties of Date formats.<BR><BR>To begin with, know that you 
    can do calculations with dates as you do with numbers. 
    <BR><BR><B>#2001-01-31# - #2001-01-01#</B> will return <B>30</B>, the number 
    of days between the 2 dates.<BR><BR><B>#2001-01-01# + 3</B> will return 
    <B>#2001-01-04#</B> because a numeric constant is always taken to mean 
    days.<BR><BR>When using the comparison operators, <B>&gt; #date1#</B> is 
    taken to mean later than or after and <B>&lt; #date1#</B> is taken to mean 
    earlier than or before.<BR><BR>In the <B>WHERE ...</B> clause, .<B>.. 
    BETWEEN #date1# AND #date2#</B> sets a date between date1 and date2, 
    inclusive.<BR><BR>To work with date fields in SQL, we'll use the Date and 
    Time functions that Access supplies. Note that those functions are available 
    in just about every environment that supports SQL. <BR><BR>The main 
    functions: <B>NOW( ) </B>and <B>DATE( )</B> return the current date. The 
    difference between the two is that <B>NOW( )</B> returns date and time, at 
    this moment, and <B>DATE( )</B> returns only the current date. <BR><BR>In 
    Access, a date or time constant must be identified with # ... #, as 
    in:<BR><B>... WHERE p_startdate = #2001-01-01#;</B><BR><BR><BR>
    <DIV align=center>
    <TABLE border=1 width="70%" bgColor=#ffff00>
      <TBODY>
      <TR>
        <TD>
          <DIV align=center><B>Date formats</B><BR></DIV>If you intend to do 
          e-commerce in the global village, you have to understand that 
          different folks have different ways of doing things.<BR><BR>For 
          example, if you are American and you tell your French girlfriend, the 
          love of your life, that you'll meet her under the Eiffel tower on 
          01/02/03, there is a good chance that you'll never see her again. To 
          you it is obvious that you specified the date as January 2nd, 2003. In 
          France, as in other French areas, like Quebec, the date is understood 
          to be the 1st of February, 2003. In your case, it may work out. If you 
          straighten out the misunderstanding in time, you go back a month later 
          and she's waiting for you. Good luck!<BR><BR>To avoid problems, get 
          used to using the <B>ANSI international standard date format: 
          yyyy-mm-dd</B>, as: 2003-01-02. Note the use of the 4-digit year. 
          Remember all that anguish we went through in 1999 with the 2-digit 00 
          year? We don't want that to happen again. Also, note that the 
          separator is the dash character - , and not the slash /.<BR><BR>To set 
          the date format, go through the Windows Control Panel, Regional 
          settings. Since SQL and Access get their formatting from Windows, the 
          format will be selected automatically. 
    </TD></TR></TBODY></TABLE></DIV><BR><BR>
    <P>In Access and SQL, one of the most useful functions is called: 
    <B>DateDiff( )</B> 
    <P><B>DateDiff('interval', #date1#, #date2#)</B> returns the time difference 
    between date1 and date2, expressed in interval units which could be: days, 
    months, years, weeks or hours.<BR><BR>The interval is specified as: 'd' for 
    days, 'w' for weeks, 'm' for months and 'yyyy' for years.<BR><BR>For 
    example:<BR><BR>
    <BLOCKQUOTE><B>Datediff('d', #2001-01-01#, now()) </B>returns the number 
      of days between January 1st and today.<BR><BR><B>Datediff('m', 
      p_StartDate, p_EndDate)</B> returns the length of the project, in 
      months.<BR><BR>If the result displays too many numbers after the decimal, 
      use the <B>ROUND(number, digits)</B> function to display the number 
      rounded to 'digits' positions after the decimal: 
      <BR><B>ROUND(Datediff('m', p_StartDate, p_EndDate), 
    2)</B>.<BR><BR></BLOCKQUOTE>In theory, <B>Datediff('yyyy', e_BirthDate, 
    now())</B> returns the employee's age, expressed in years. In practice 
    however, you will find that it works or doesn't work depending on whether 
    the employee has had his birthday yet this year or not.<BR><BR>To calculate 
    the exact age, use the following formula:<BR><BR><B>INT(Datediff('d', 
    e_BirthDate, now())/365.25)</B><BR><BR>Calculate the number of days and 
    divide by the exact number of days in a year, which, as you know, is 365.25 
    and not 365. That takes leap years into account. <BR>The <B>INT( ) 
    </B>function truncates the result so that 25.9 becomes 25, for example; the 
    employee is 25 years old until the day she turns 26; after the age of 5, you 
    rarely hear people say that they are 25 and a half years old.<BR><BR>When 
    working with age, remember that you can often use Date-of-birth directly, 
    without doing the age calculation. Don't forget that the smallest date 
    refers to the oldest person. </BLOCKQUOTE><BR><BR><BR>
  <BLOCKQUOTE>
    <DIV align=center><B>Eliminating duplicates</B></DIV><BR><BR>To close out 
    this section on SELECTs, we'll look at how to eliminate duplicate lines from 
    query results. <BR><BR>For example, suppose we want to see the list of 
    countries where we have projects. If we do this:<BR><BR>
    <BLOCKQUOTE><B>SELECT</B> p_Country <B>FROM</B> Projects;<BR><BR>we get 
      all the countries for all the projects; if there are 5 projects in Canada, 
      "Canada" will appear 5 times in the list.</BLOCKQUOTE><BR><BR>If we want 
    only the different countries, we can do this:<BR><BR>
    <BLOCKQUOTE><B>SELECT DISTINCT</B> p_Country <B>FROM</B> 
      Projects;<BR><BR>where the DISTINCT clause will list only different 
      occurences; if an item is selected more than once, only one will 
    appear.<br />
                                                                    </BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
</DIV>
    <BR><BR>
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
          </DIV>
                                                <BR><BR></DIV><BR>
                                           
                                           <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
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
                                                PostBackUrl="~/SQL_L5.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L7.aspx">Next &gt;&gt;</asp:LinkButton>
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
