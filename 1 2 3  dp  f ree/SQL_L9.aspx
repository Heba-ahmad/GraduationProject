<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="SQL_L9.aspx.cs" Inherits="_Default" %>

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
        DestinationPageUrl="~/SQL_L9.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                                                PostBackUrl="~/SQL_L8.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/SQL_Contents.aspx">Back to SQL Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L10.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 9 - Joining tables</H2>
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
<H3>A new case study - The Editor Project</H3>This is one that's been around for 
many years. It's been used to teach SQL for the last 25 years, at least. I 
converted it to run in MySQL.<BR><BR>You've got Authors. Authors write books. 
Sometimes, a book is written by several authors, each of whom will receive a 
percentage of the royalties. Some authors have written several books; others 
have yet to write any (we may have a file on them because they're in the process 
of writing and we gave them an advance). So, the relationship between Authors 
and Books is <B>many-to-many.</B><BR><BR>The BookAuthor table is the linking 
table between authors and books.<BR><BR>Publishers are companies that print and 
distribute the books. We'll get to that relationship later.<BR><BR><B>P.S.</B> 
You'll notice that the last column in most tables has a funny sign at the end of 
the data. That's a carry-over of a CRLF because the table was imported from 
Access. It would be better to modify those because some queries will not work 
properly.<BR><BR>As an exercice in SQL, use an Update command to change them, as 
in this example:<BR><BR><IMG alt="" src="images/LessonsImages/SQLLessons/SQ07F08.gif" width=459 
height=190><BR><BR>If you're not sure how that works, look-up the Update syntax 
in the Query browser.<BR><BR>The % sign is the widcard character in MySQL, like 
the * in Access. <BR><BR><BR><BR><BR><BR><BR>
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
<H3>A FEW MORE WORDS ON MODELING</H3>If you've been following this from the 
beginning, you've been playing around with the ProjectMgt database. It's 
perfectly OK to have run tests on it, to have added or changed data or to have 
changed the structure of the tables themselves. Before continuing, however, we 
should standardize the database so that we're all on the same wavelength for the 
rest of the lessons.<BR><BR>Let's review. We started out with this 
model:<BR><BR>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq02f08.gif" width=469 
height=357></DIV><BR><BR>Then we added a few columns to different tables: 
e_BirthDate in Employee, p_Country in Project and maybe a few more.<BR><BR>But 
there is still one problem with the design. In fact, the problem is that the 
database is not normalized to the Third Normal Form (3NF). Uh? Let's look at it 
in practical terms. <BR><BR>If you have one table for Timesheets, you get one 
row for each timesheet entry: on a given Friday, an employee who has worked on 2 
projects submits his timesheet. You input the timesheet date, the employee-Id, 
the project number and the hours for the first project, creating one row in the 
table and then you repeat for the second project, creating another row in the 
table. Now, if you have an application (in VB, Powerbuilder or Access) that 
wants to print a timesheet report, it will probably print something like 
this:<BR><BR><IMG border=0 src="images/LessonsImages/SQLLessons/sq07f05.gif" width=583 
height=388><BR><BR><BR><BR>
<DIV align=center>
<TABLE border=1 width="70%" bgColor=#ffff00>
  <TBODY>
  <TR>
    <TD>
      <DIV align=center><B>IMPORTANT: THE MASTER/DETAIL FORM</B></DIV><BR>This 
      is very standard form format. It's called a Master/Detail form. <BR><BR>In 
      business applications you will use dozens of these: Orders, Invoices, 
      Purchase Orders, PO Requisitions, etc.<BR><BR>What they all have in common 
      is that there is a Master section which contains information on the 
      transaction as a whole, and a Detail section which contains information on 
      the details of the transaction. <BR><BR>In an Invoice, for example, the 
      invoice date, customer name and address, shipping date are in the Master 
      while items purchased, quantities, prices are in the Detail section. 
  </TD></TR></TBODY></TABLE><BR><BR></DIV><BR>It is very difficult to produce a 
Master/Detail form from a single table. <BR><BR>Therefore, what we will do in 
our ProjectMgt database is normalize the Timesheet table into a Timesheet-Master 
table and a Timesheet-Detail table. Master will contain the Timesheet number as 
Pk, the Employee-Id and the Timesheet date (all the information common to all 
transactions). <BR><BR>Detail will contain the Timesheet number, Project number 
and Hours-worked for each project. <BR><BR>Since there may be several Project 
numbers associated with one Timesheet number in Detail, we will assign Timesheet 
number + Project number as Pk for the Detail table.<BR><BR>You may feel a bit 
overwhelmed at this point. Take your time. <BR><BR>You should download a new 
copy of <A href="http://www.profsr.com/sql/projmgtb.zip">The Project management 
database</A> now. If you prefer to work with the 97 version, go to the Downloads 
area - it has several versions of the database. Study it carefully and try to 
relate the design of the database to the Timesheet form shown above. Remember 
that a database is not a theoretical concept - it has to be applied to real-life 
applications. <BR><BR><BR>
<DIV align=center><A 
href="#top">Top</A><BR><BR><BR><BR></DIV><BR><BR><BR>
<DIV align=center>
<H3>USING MULTIPLE TABLES IN A SELECT</H3></DIV>Let's go back to the ProjectMgt 
example.<BR><BR>When you have to look at Employee data you do a SELECT from the 
Employee table. Remember that the Employee table contains the employee's 
department but as a number only. When you run the SELECT you can't tell what the 
department's name is from the output.<BR><BR>
<BLOCKQUOTE><B>SELECT e_Id, e_Fname, e_Lname, 
  e_Dept<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
  Employee;</B><BR><BR>
  <DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq07f01.gif" width=418 
  height=156></DIV></BLOCKQUOTE>When you look at data from 2 or more tables in a 
SQL statement, the operation is called a <B>JOIN</B>. You are in fact 
<B>joining</B> 2 tables to provide the result needed. However, there is no JOIN 
clause in SQL - everything is done with the SELECT statement.<BR><BR>In the 
example above, you want to see the department's name instead of it's number when 
you look at an employee record. Since the department name is in the Department 
table and all the other fields are in the Employee table, it is fairly obvious 
that you will have to open 2 tables in the SELECT. Let's try it:<BR><BR>
<BLOCKQUOTE><B>SELECT e_Id, e_Fname, e_Lname, 
  <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e_Dept, d_DeptNum, 
  d_DeptName<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
  Employee, Department;</B><BR><BR></BLOCKQUOTE>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq07f02.gif" width=518 
height=391></DIV><BR><BR><BR>It should be immediately obvious to you that 
although the query worked, it produced way, way too much data.<BR><BR>And that 
brings us to talk about how a Join operation works.<BR><BR>When you tell SQL to 
join 2 tables, it really joins them! In fact, it joins every row in the first 
table with every row in the second table. If the first table, Employee, contains 
5 rows and the second table, Department, contains 3 rows, the result displays 5 
x 3 = 15 rows. Which is what happened in the example above. However, since there 
are only 5 employees, it means that 10 of those rows are meaningless.<BR><BR>The 
trick to know about joining table is fairly simple yet, absolutely crucial:<BR>
<BLOCKQUOTE>
  <DIV align=center><B>The tables you are joining must have common columns. 
  Those columns don't have to have the same name but, they must contain the same 
  kind of data: same datatype and size. e_Dept and d_DeptNum are both Numeric, 
  Long integer and the Dept. numbers assigned to employees exist in the 
  Department table.<BR><BR>The only meaninful information in a JOIN operation is 
  that which occurs when data in the two common columns is the same.<BR><BR>In 
  database jargon, the field that is used as a reference from one table is 
  called a <I>foreign key (Fk)</I> and it must correspond to another field which 
  is a <I>primary key (Pk)</I> in it's table. In our example, e_Dept is a Fk in 
  the Employee table and d_DeptNum is a Pk in the Department table. 
</B></DIV></BLOCKQUOTE><BR><BR>The thing to recognize about the result of the 
query above is that the only good results are the ones where e_Dept and 
d_DeptNum are the same.<BR><BR>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq07f03.gif" width=518 
height=391></DIV><BR><BR><BR>So, we implement the JOIN with a WHERE 
clause:<BR><BR>
<BLOCKQUOTE><B>SELECT e_Id, e_Fname, e_Lname, 
  <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e_Dept, d_DeptNum, 
  d_DeptName<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
  Employee, 
  Department<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
  e_Dept = d_DeptNum;</B><BR><BR></BLOCKQUOTE>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq07f04.gif" width=519 
height=217></DIV><BR><BR><BR>
<DIV align=center><A 
href="#top">Top</A><BR><BR><BR><BR></DIV><BR><BR>
<DIV align=center>
<SCRIPT type=text/javascript><!--
google_ad_client = "pub-9023263975955996";
google_ad_width = 336;
google_ad_height = 280;
google_ad_format = "336x280_as";
//2006-12-22: sql
google_ad_channel = "0304157054";
google_color_border = "FFFFFF";
google_color_bg = "FFFFFF";
google_color_link = "0000BB";
google_color_url = "000000";
google_color_text = "000003";
//--></SCRIPT>
</DIV><BR><BR><BR><BR><BR>Let's look at more examples:<BR><BR>List all the 
timesheets, showing the employee's name and phone. 
<BLOCKQUOTE><B>SELECT tm_Num, tm_Date, 
  tm_EmpID,<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e_Fname, e_Lname, 
  e_Tel<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
  Employee, 
  TS_Master<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
  tm_EmpID = e_ID;</B><BR><BR></BLOCKQUOTE><BR><BR>List all the timesheets, 
showing project titles, start and end dates. 
<BLOCKQUOTE><B>SELECT td_Num, td_ProjNum, 
  td_Hours,<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;p_Title, 
  p_StartDate, 
  p_EndDate<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
  Project, 
  TS_Detail<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
  td_ProjNum = p_Number;</B><BR><BR></BLOCKQUOTE><BR><BR>To obtain a particular 
employee's timesheets, add the condition to the WHERE clause:<BR><BR>
<BLOCKQUOTE><B>SELECT tm_Num, tm_Date, 
  tm_EmpID,<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e_Fname, e_Lname, 
  e_Tel<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
  Employee, 
  TS_Master<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
  tm_EmpID = 
  e_ID<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
  tm_EmpID = 'A1111';</B><BR><BR></BLOCKQUOTE><BR><BR>You may be able to guess 
from the previous examples that joining 3 or 4 tables requires that all tables 
have pairs of common columns.<BR><BR>To obtain data from the Department, 
Employee and TS_Master tableswe have to know that Dept. Number exists in both 
Employee and Department and that Employee ID exists in both Employee and 
Timesheet Master: 
<BLOCKQUOTE><B>SELECT tm_Num, tm_Date, 
  tm_EmpID,<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e_Fname, e_Lname, 
  d_Name<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
  Employee, TS_Master, 
  Department<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
  tm_EmpID = 
  e_ID<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
  e_Dept = d_DeptNum;</B><BR><BR></BLOCKQUOTE><BR><BR>To list all timesheets, with 
employee names and project titles, we know that Timesheet Number exists in both 
Timesheet Master and Timesheet Detail, that Employee Id exists in both Employee 
and Timesheet Master and finally, that Project Number exists in both Timesheet 
Detail and Project:<BR><BR>
<BLOCKQUOTE><B>SELECT tm_Num, tm_Date, tm_EmpID, 
  td_ProjNum,<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e_Fname, 
  e_Lname, 
  p_Title<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
  Employee, TS_Master, TS_Detail, 
  Project<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
  tm_Num = 
  td_Num<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
  tm_EmpID = 
  e_ID<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
  td_ProjNum = p_Number;</B><BR><BR></BLOCKQUOTE><BR><BR><IMG border=0 
src="images/LessonsImages/SQLLessons/sq07f06.gif" width=611 height=338> <BR><BR>OK, so it doesn't look 
all that great! But it works. All you have to do is arrange the column names and 
use the ORDER clause to sort it in proper order. And again, if you want to see 
the timesheets relating to a particular project, modify the WHERE 
clause:<BR><BR>
<BLOCKQUOTE><B>SELECT tm_Num, tm_Date, tm_EmpID, 
  td_ProjNum,<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e_Fname, 
  e_Lname, 
  p_Title<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM 
  Employee, TS_Master, TS_Detail, 
  Project<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
  tm_Num = 
  td_Num<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
  tm_EmpID = 
  e_ID<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
  td_ProjNum = 
  p_Number<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
  td_ProjNum = 'C33333';</B><BR><BR></BLOCKQUOTE><BR><BR>
<DIV align=center>
<TABLE border=1 width="80%" bgColor=#ffff00>
  <TBODY>
  <TR>
    <TD>
      <DIV align=center><B>The 'JOIN' Formula</B></DIV><BR>Joining multiple 
      tables is not difficult as long as the database is designed properly: 
      tables that are to be joined must have columns in common.<BR>The formula 
      is applied in the WHERE clause:<BR>WHERE table1_column_w = table2_column_x 
      AND table2_column_y = table3_column_z AND ...<BR>If 2 tables have no 
      common columns they cannot be joined. For example, if we still had the 
      Products table in our database, we couldn't join Products and Employee or 
      Products and Project because there is no common data in those tables. 
  </TD></TR></TBODY></TABLE></DIV><BR><BR>The great thing about JOINS is that once 
you've mastered the technique you can obtain information from <B>anywhere</B> in 
the database. It may involve 4 or 5 or 10 joins but, so what! <BR><BR><BR>The 
Boss wants to know which Departments are involved in projects in Germany at the 
moment.<BR><BR>Follow the joins:<BR><BR><IMG border=0 src="images/LessonsImages/SQLLessons/sq07f07.gif" 
width=612 height=185><BR><BR>
<BLOCKQUOTE><B>SELECT DISTINCT d_DeptName, td_ProjNum, p_Title, 
  p_Country<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM Department, 
  Employee, TS_Master, TS_Detail, 
  Project<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE 
  td_ProjNum = 
  p_Number<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
  tm_Num = 
  td_Num<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
  tm_EmpID = 
  e_ID<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
  e_Dept = 
  d_DeptNum<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
  p_Country LIKE 
  'Germany*'<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
  DATE( ) BETWEEN p_StartDate AND p_EndDate;</B><BR><BR></BLOCKQUOTE><BR><BR>There 
are several points that should be noted about this query:<BR><BR>
<UL>
  <LI>If a project in Germany has many timesheets submitted on it from one 
  department, each occurence will generate one row - we only want to know the 
  name of the department, not how many times it shows up so, we use the DISTINCT 
  clause.<BR><BR>
  <LI>In the WHERE clause, <B>always</B> do the joins first - there are 5 tables 
  involved and therefore, there are 4 joins.<BR><BR>
  <LI>Whenever you are comparing to a string or text field, use the LIKE 
  operator - the country could have been mistakenly entered as "Germany " in the 
  project data - the strings "Germany" and "Germany " do not match.<BR><BR>
  <LI>The Boss said "...in Germany <B>at the moment</B>". Listen to the 
  question. That means currently active. You don't want project that are already 
  over or that haven't started yet. If today is between the start and end dates, 
  the project is currently active.<BR><BR>
  <LI>If there is an active project in Germany but it hasn't had timesheets 
  submitted for it yet, it won't show up in the list. There is a way to list it 
  in a query and we'll cover that in the next Lesson. </LI></UL><BR><BR>
<BLOCKQUOTE></BLOCKQUOTE>
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
                                                        </a>
                                                    </div>
                                                            <br />
                                                        </div>
          </DIV>
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
                                                PostBackUrl="~/SQL_L8.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L10.aspx">Next &gt;&gt;</asp:LinkButton>
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
