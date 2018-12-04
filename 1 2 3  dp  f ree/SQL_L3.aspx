<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="SQL_L3.aspx.cs" Inherits="_Default" %>

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
                                                    <SPAN class=author>to add comment, &amp; 
          to Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/SQL_L3.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;&nbsp;
                                            <img alt="" src="images/SQL.JPG" 
                    style="width: 204px; height: 80px" /><br />
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/SQL_Contents.aspx">Back to SQL Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L4.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 3  - Introduction to the SQL language</H2>
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
<DIV align=center>
<H3>The SQL language</H3></DIV>
<P><B>SQL = Structured Query Language</B><BR>Usually pronounced 'Sequel' or, 
sometimes, 'ess-queue-el' <BR wp="br1"><BR wp="br2">
<P>Relational database manipulation language developed in the 1970's by Dr. 
E.F.Codd and IBM. <BR wp="br1"><BR wp="br2">
<P>Popularized by ORACLE <BR wp="br1"><BR wp="br2">
<P>Advantage is that it allows databases that are not programmed the same to 
talk to each other - it is the basis of Client/Server architecture. <BR 
wp="br1"><BR wp="br2">
<P>A Client application written in Visual Basic under Windows can communicate 
with a Server running Oracle - the Client sends the Server a SQL command which 
is interpreted and the result sent back to the Client. <BR wp="br1"><BR 
wp="br2">
<P>Also, all DBMS's use SQL in their internal operations. Database 
Administrators (the people who build and maintain the database structure) need 
in-depth knowledge of the language. 
<P>To build the database and test our SQL commands we'll be using MS-Access and 
the Project Management database that we designed in previous lessons. If you 
haven't used Access before, take a look at our <A 
href="MSAccess_Contents.aspx">MS-Access tutorial</A> to get the basics 
of the tool. </P></DIV><BR><BR><BR>
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
</DIV><BR><BR><BR><BR>
<DIV class=para1><BR><BR>To create a SQL query with Access you simply go through 
the normal query procedure and select <B>SQL View</B> instead of the Query 
wizard; then specify that it is a new query (you don't have to identify the 
tables used):<BR><BR>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq03f01.gif"><BR><BR><B>Fig. 
3-1</B></DIV><BR><BR>and then write the code and run it:<BR><BR>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq03f02.gif"><BR><BR><B>Fig. 
3-2</B></DIV><BR><BR><BR wp="br1"><BR wp="br2">
<P><STRONG>
<CENTER>SQL syntax in Access </CENTER></STRONG><BR><BR>SQL syntax is not very 
strict. A statement can be be written over several lines but, most 
implementations of SQL will insist on the semicolon (;) at the end.<BR><BR>Upper 
and lower cases don't matter but again, in most installations you will see 
common practices such as writing all command verbs and clauses in uppercase and 
table names, column names, etc. in lowercase.<BR><BR>Syntax errors will be 
flagged as soon as you try to execute the statement. Experience will show what 
the most common errors tend to be. Since SQL syntax is not very complicated to 
begin with, errors are usually easy to detect and to fix.<BR><BR>There is not a 
whole lot of punctuation involved. The ; at the end of the statement is 
important and, of course, parentheses have to be in the right places, like any 
other language. As for data types, string values are inclosed in single quotes, 
dates in pound signs and numeric in nothing.<BR><BR>For example, 
<BLOCKQUOTE>e_salary = 55000<BR>e_fname = 'Mike'<BR>e_hiredate = 
#1995-10-10#</BLOCKQUOTE><BR wp="br1"><BR wp="br2">
<DIV align=center><A 
href="#top">Top</A><BR><BR><BR><BR></DIV>
<P><STRONG>
<CENTER>SQL INSTRUCTIONS </CENTER></STRONG><BR wp="br1"><BR wp="br2">
<P>The SQL instruction set consists of only about 30 instructions. Although 
there are SQL instructions to create and manipulate tables and the data they 
contain, it is quite possible that all the maintenance functions will be done 
using the DBMS (Access in this case). If that is the way your system is set up 
your applications will end up using the SELECT instruction 95% of the time. 
<BR><BR>In case you missed it previously, a <B>query</B> is a question, an 
interrogation, a lookup. That is what SQL is built for - it exists to get 
information from databases. <BR><BR>In this tutorial, we will assume that the 
database itself is already created and named. Some of the tables may have been 
created in Access but we will use SQL statements to create the others, just to 
make sure that we know how to do it. <BR wp="br1"><BR wp="br2">
<P><B>
<CENTER>Table manipulation statements</CENTER></B><BR><BR>
<P>There are SQL statements to create tables, modify them or remove 
them.<BR><BR>To create a new table in the current active database: 
<BLOCKQUOTE><B>CREATE TABLE</B> table_name (column1 datatype not null, column2 
  datatype, ...);<BR><BR>Example:<BR><B>CREATE TABLE</B> employee (e_id 
  string(3) not null, e_fname string(20),<BR>e_salary single, e_hiredate 
  date);<BR><BR>The usual datatypes are:<BR>
  <BLOCKQUOTE>
    <TABLE border=1>
      <TBODY>
      <TR>
        <TD>INTEGER</TD>
        <TD>Integer values between -32K and +32K</TD></TR>
      <TR>
        <TD>SINGLE</TD>
        <TD>Single-precision floating point</TD></TR>
      <TR>
        <TD>DOUBLE</TD>
        <TD>Double-precision floating point</TD></TR>
      <TR>
        <TD>DATE</TD>
        <TD>Date/time</TD></TR>
      <TR>
        <TD>STRING(n)</TD>
        <TD>Fixed-length string; n = number of characters</TD></TR>
      <TR>
        <TD>BOOLEAN</TD>
        <TD>True/False</TD></TR></TBODY></TABLE></BLOCKQUOTE><BR><BR>We add the <B>not 
  null</B> clause to the statement to indicate that null is not allowed in the 
  column, if it is to be a primary key, for example.</BLOCKQUOTE><BR><BR><BR>
<DIV align=center>
<TABLE border=1 width="80%" bgColor=#ffffcc>
  <TBODY>
  <TR>
    <TD>
      <DIV align=center>Speaking of <B>NULL</B></DIV><BR>Everyone knows by now 
      that when we speak of characters, we mean the letters of the alphabet and 
      the numbers and punctuation signs and so on. The space ( ) is a character 
      and so is the zero (0).<BR><BR>In SQL we will often have to refer to the 
      NULL value. NULL is not a character; it is the absence of a character. In 
      books they say that NULL means that the value is undetermined. In fact, it 
      means that there is no value assigned to the field, it is completely 
      empty. NULL is not numeric, nor string, nor date. Any type field can be 
      NULL.<BR><BR>When the quantity-on-hand of an item in stock becomes 0, it 
      is not null; it contains the numeric character 0. When I assign a 0 grade 
      to an assignment (which happens all too frequently), that grade is 
      included in the class average. If there is no grade assigned because the 
      student was ill, that field is null and therefore it is not computed as 
      part of the class average.<BR><BR>SQL commands will not consider nulls 
      when they count or compute data. In some cases it is necessary to test if 
      a field contains a value or not by using the clauses: IS NULL or IS NOT 
      NULL in a statement.<BR><BR>In the example above, when entering data in 
      the Employee table, you could theoretically have one employee with spaces 
      as an Id but, you are not allowed to have one with an empty Id. 
  </TD></TR></TBODY></TABLE><BR><BR><BR></DIV>To change the structure of a table: 
<BLOCKQUOTE><B>ALTER TABLE</B> table_name <B>ADD</B> (column 
  datatype);<BR><BR>Example:<BR><B>ALTER TABLE</B> Employee <B>ADD</B> 
  (e_Address string(30));<BR><BR><B>ALTER TABLE</B> Project <B>ADD</B> 
  (p_Country string (20));<BR><BR>Note that there is no statement to change or 
  remove a column.<BR><BR></BLOCKQUOTE><BR><BR>To delete a table from the 
database: 
<BLOCKQUOTE><B>DROP TABLE</B> table_name<BR><BR>Example:<BR><B>DROP TABLE</B> 
  Employee;</BLOCKQUOTE><BR><BR><BR><BR>
<DIV align=center><A 
href="#top">Top</A><BR><BR><BR><BR></DIV><BR><BR>
<P><B>
<CENTER>Data manipulation statements</CENTER></B><BR><BR>
<P>Data manipulation statements are used to work on the data contained in the 
tables.<BR><BR>To create a new record, a new row, in a table:<BR><BR>
<BLOCKQUOTE><B>INSERT INTO</B> table_name <B>VALUES</B> (value1, value2, 
  ...);<BR><BR>Assuming that we have executed the CREATE TABLE and the ALTER 
  TABLE statements from above (and not the DROP statement), the Employee table 
  now contains 5 columns: <B>Id, First name, Salary, Hire date and 
  Address</B>.<BR><BR>The INSERT statement will create a <B>new employee 
  record</B>; it will add a <B>row</B> to the table. The number of data items 
  must correspond to the number of columns and the type of data must correspond 
  to the datatype of each column.<BR><BR>Example:<BR><BR></BLOCKQUOTE>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq03f03.gif"></DIV><BR><BR><BR>To 
change data in an existing record: 
<BLOCKQUOTE><B>UPDATE</B> table_name <B>SET</B> column1 = value1, 
  column2=value2, ...<BR><B>WHERE</B> 
  condition;<BR><BR>Example:<BR><B>UPDATE</B> Employee <B>SET</B> e_salary = 
  30000<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>WHERE</B> e_Id = 
  '222';<BR><BR><B>UPDATE</B> Employee <B>SET</B> e_Salary = e_Salary * 
  1.1<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>WHERE</B> e_Departement = 
  '101';<BR><BR>The <B>WHERE</B> clause is SQL's IF statement. The update is 
  done only if the condition in the WHERE clause is true. <BR><BR>In the first 
  example, the update is performed only for the employee whose Id is '222'. His 
  salary is set at 30000.<BR><BR>In the second example, the update is performed 
  for every employee whose department is '101'. <BR><BR>In example 2, the 
  command from the boss to launch the SQL statement would have been: "Give 
  everybody in department 101 a 10% raise".<BR><BR><B>UPDATE</B> Employee 
  <B>SET</B> e_Salary = 100000;<BR><BR>If there is no WHERE clause in a 
  statement, the update is performed on <B>all the records in the table</B>. 
  <BR><BR><BR></BLOCKQUOTE>To remove records or rows from a table: 
<BLOCKQUOTE><B>DELETE FROM</B> table_name<B> WHERE</B> 
  condition;<BR><BR>Example:<BR><B>DELETE FROM</B> 
  Employee<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>WHERE</B> e_Id = 
  '222';<BR><BR><B>DELETE FROM</B> 
  Employee<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>WHERE</B> e_Salary &gt; 
  100000;<BR><BR>In the first case, delete employee '222'. In the second case, 
  delete everybody earning more than 100K. Hey! What you gonna do? Times are 
  tough all over!<BR><BR><B>DELETE FROM</B> Employee;<BR><BR>If there is no 
  WHERE clause, <B>every record in the table is deleted</B>! And it won't even 
  ask "Are you sure?".<BR><BR><BR></BLOCKQUOTE>
</DIV>
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
                                                    <BR></DIV><BR>
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
                                                PostBackUrl="~/SQL_L2.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L4.aspx">Next &gt;&gt;</asp:LinkButton>
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
