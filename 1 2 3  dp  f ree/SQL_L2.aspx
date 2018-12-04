<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="SQL_L2.aspx.cs" Inherits="_Default" %>

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
        DestinationPageUrl="~/SQL_L2.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                                                PostBackUrl="~/SQL_L1.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/SQL_Contents.aspx">Back to SQL Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L3.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 2 - Database design</H2>
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
<H3>A short case study</H3>ezconsulting Inc. is a small consulting company 
offering database design and creation services to a fairly wide range of 
customers. The company employs about 30 consultants, analysts, programmers, 
network specialists, who will work in teams on projects for periods of time 
ranging from a few days to several months.<BR><BR>
<DIV align=center>

</DIV><BR><BR>At any given time there may be 10-12 different projects on the go. 
Because ressources are scarce a specialist may be called upon to work on several 
projects simultaneously. In order to keep some control over scheduling and 
costing, every employee is assigned to a department and reports to only one 
manager, even when he's working on projects for other departments. Every week 
every employee must submit a timesheet showing the number of hours spent on each 
project.<BR><BR>As was the case for the shoemaker's children (they had no shoes 
because dad was too busy making shoes to sell in order to put bread on the 
table), this company has no Project Management database,simply because nobody 
has had the time to set one up. And this is typical in this kind of environment. 
Do you take an analyst who bills $800/day and put him to work on in-house 
maintenance? No, you don't. You wait until some bright college student shows up 
for a co-op work assignment and you give him/her the job. The company hopes that 
after the basic Project management application is operational other modules such 
as Employee Skills Management and control of bids and RFP's can be integrated to 
the database.<BR><BR><BR><BR><BR>
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
<H3>Designing the Project Management application</H3>Here is what our first 
draft of the E-R diagram should look like for the Project Management 
case:<BR><BR>
<DIV align=center>
<TABLE border=1 width="50%">
  <TBODY>
  <TR>
    <TD>&nbsp; <IMG border=0 src="images/LessonsImages/SQLLessons/sq02f01.gif" width=361 
      height=362><BR><BR></TD></TR></TBODY></TABLE></DIV><BR>
<DIV align=center><B>Fig. 2-1</B></DIV><BR><BR>The diagram contains the 
information we would have gathered by talking to the client. Notice that the 
attributes for Employee represent the minimum amount of information we have to 
keep at this time. We haven't included things like "Home address", "Date of 
birth" and so on. When we start working with SQL later we will add more 
information to the table. The same applies for the other entities - we will add 
attibutes as we develop the model later on.<BR><BR>It is important to make sure 
at this point that you understand the degrees of the relationships 
shown.<BR>Department &lt;--&gt; Employee is a <B>one-to-many</B> relationship - 
a given employee is assigned to one and only one department and a given 
department contains zero or many employees. This means that every employee in 
the company will be assigned to a department, even the President who will be in 
Administration. A department may exist and have no employees assigned to it. For 
example, we could create a new department in the database and, until it is 
staffed, it will have zero employees assigned to it.<BR>Employee &lt;--&gt; 
Project is a <B>many-to-many</B> relationship - a given employee works on one or 
many projects and a given project may have zero or many employees. In order to 
keep track of every employee's hours, all the work that is done will be billed 
to a project. However, projects could be things like "In-house systems 
development", "Professional development leave" or "Administrative duties". Any 
project may have no employees working on it. <BR><BR>Now, once you have the E-R 
diagram down, you go over it one more time with the client to make sure that you 
have the details down correctly and you are almost ready to start creating the 
actual database. Notice that I said "almost".<BR><BR>
<H3>Normalization</H3>It is possible to start creating the database at this 
point. It's just a question of creating a new table for every entity identified 
in the diagram. We'll be using MS-Access to do that shortly. But how do you code 
the relationships? <BR><BR>There is a formal process to do that in database 
modeling. It's called <B>normalization</B>. It means applying a set of rules to 
the data so that you group the attributes in such a way that the relationships 
work. It's not really that complicated but it is a formula approach. If you 
prefer to use that approach, get any good book on databases, look-up 
"normalization" and follow the steps.<BR><BR>We'll do normalization using the 
<B>intuitive approach</B> - work with the data until it "feels" OK. This could 
also be called <B>prototyping</B> - create a working model of the database that 
is close to what you want and keep improving it until it works perfectly, then 
put it into production.<BR><BR>However, whatever the approach taken, there are 
some basic rules that have to be adhered to. The rules apply to any relational 
database and <B>cannot be broken</B>. They can't even be stretched. Think of 
them as the <B>Prime directives</B>. The rules are:<BR>
<OL>
  <LI><B>Every table must have a primary key</B> - an attribute or combination 
  of attributes that uniquely identifies every occurence in the table.<BR><BR>
  <LI><B>The primary key can never contain an empty or Null value.</B> That 
  makes sense - if you had 2 that were empty, they wouldn't be unique 
  anymore.<BR><BR>
  <LI><B>Every attribute of every occurence in the table can contain only one 
  value.</B> Think of the Employee table as a grid. Every occurence, or line, 
  represents one employee and every column is an attribute. So, every employee 
  can only have one ID and one First-name and one Last-name, and so on. 
</LI></OL><BR><BR>
<DIV align=center><A 
href="#top">Top</A><BR><BR><BR><BR></DIV><BR><BR>
<H3>The one-to-many relationship</H3>Let's start with the easiest relationship: 
<B>Employee &lt;--&gt; Department.</B> <BR><BR>First we create a new database 
and call it <B>ProjMgt.mdb</B>. Then we create the first two tables in the 
database: call them <B>Employee</B> and <B>Department</B>, and put in the fields 
from the E-R diagram. Notice that the column-names in the tables are all coded 
with a prefix: e_ for Employee, d_ for Department and p_ for Project. This is a 
good habit to get into. It will make your life easier later on. This is what we 
now have:<BR><BR>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq02f02.gif" width=316 
height=214></DIV><BR>
<DIV align=center><B>Fig. 2-2</B></DIV><BR><BR>Remembering that that is a 
one-to-many relationship, how do we associate the employee with the department? 
There are 2 ways it could be done:<BR><BR>
<OL>
  <LI>Add a column for Employee ID to the Department table. You get 
this:<BR><BR>
  <DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq02f03.gif" width=418 
  height=97></DIV><BR>
  <DIV align=center><B>Fig. 2-3</B></DIV><BR><BR>See the problem? When you start 
  entering data, what do you put into the d_Employee column? Rule 3 says you can 
  have only one value. What if there are 2 employees in the Department? You 
  could try to add another column for d_Second_employee, but what if there are 
  20 employees, or 200? Obviously this is not going to work. So we scrap this 
  brilliant idea.<BR><BR>
  <LI>Add a column for Department to the Employee table. You get this:<BR><BR>
  <DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq02f04.gif" width=562 
  height=103></DIV><BR>
  <DIV align=center><B>Fig. 2-4</B></DIV><BR><BR>Any problem with this? Doesn't 
  seem to be. Since every employee is assigned to only one department, I only 
  have one value to put into the column: employee 101 works for department 10, 
  and that's all. <BR><BR></LI></OL>In summary, to normalize a one-to-many 
relationship you add a column to the table at the "many" end of the relationship 
to refer to the primary key at the "one" end. <BR><BR>
<DIV align=center><A 
href="#top">Top</A><BR><BR><BR><BR></DIV><BR><BR>
<H3>The many-to-many relationship</H3>The many-to-many <B>Employee &lt;--&gt; 
Project</B> relationship is a bit trickier.<BR><BR>In the end we want to 
associate projects and employees, to see who is working on what project. To see 
how it must not be done we'll go through the exercise of adding columns to the 
tables. So we add the Project table to the relationships:<BR><BR>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq02f05.gif" width=457 
height=205></DIV><BR>
<DIV align=center><B>Fig. 2-5</B></DIV><BR><BR>To create the relationship we 
could add a Project_Number column to the Employee table. When we try it we see 
that we come up with the same problem we had in the previous relationship: when 
we get to the e_Project column, what do we write? The employee could be working 
on 7 different projects. Rule 3 says we can only enter one value.<BR><BR>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq02f06.gif" width=547 
height=85></DIV><BR><BR>
<DIV align=center><B>Fig. 2-6</B></DIV><BR><BR>So we try it the other way - add 
an Employee_Number column to the Project table. Again, when we get to the 
p_Employee column what do we write? There could be 25 employees working on this 
project.<BR><BR>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq02f07.gif" width=556 
height=85></DIV><BR><BR>
<DIV align=center><B>Fig. 2-7</B></DIV><BR><BR>Since those two attempts 
obviously won't work, there has to be something else. It's called a <B>link 
entity</B> or <B>link table</B>. Most textbooks will just call that table 
Employee-Project or Project-Employee. But in real life the entity does exist in 
our system. What is it that links employees with projects? Right! It's the 
timesheet. The timesheet contains all the information we need. So we add the 
Timesheet entity to the mix and modify our E-R diagram:<BR><BR>
<DIV align=center>
<TABLE border=1 width="80%">
  <TBODY>
  <TR>
    <TD><IMG border=0 src="images/LessonsImages/SQLLessons/sq02f08.gif" width=469 
  height=357>&nbsp;</TD></TR></TBODY></TABLE></DIV><BR>
<DIV align=center><B>Fig. 2-8</B></DIV><BR><BR>t_Employee is an employee-ID that 
refers to the Employee table, t_Project is a project_number that refers to the 
Project table, t_Date is the period_ending date for the timesheet and t_Hours is 
the number of hours the employee spent on that project. We also specify that 
every line in the Timesheet table must have one and only one employee_ID and 
must have one and only one project_number. In other words we cannot create a 
Timesheet for an employee who doesn't exist or charge for work on a project that 
doesn't exist. Who would ever think of doing such a thing anyway!<BR><BR>What is 
the <B>primary key</B> for Timesheet? To get a feel for the key, let's look at 
the data that will be input:<BR><BR>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq02f09.gif" width=424 
height=130></DIV><BR>
<DIV align=center><B>Fig. 2-9</B></DIV><BR><BR>It's clear that t_Employee or 
t_Project can't be the primary key because they both repeat; remember: every 
occurence in a primary key column must be unique. How about a concatenation of 
<B>t_Employee + t_Project</B>. That looks good so we try it. It works fine for 
one week. The following week, employee 202 has worked on project S4440 again and 
we get a duplicate key error!<BR><BR>
<DIV align=center><IMG border=0 src="images/LessonsImages/SQLLessons/sq02f10.gif" width=415 
height=148></DIV><BR>
<DIV align=center><B>Fig. 2-10</B></DIV><BR><BR>So we add t_Date to the key and 
that solves the problem. Now, assuming that the client has said that if an 
employee works on a project twice in one week he adds-up the hours, the 
combination of employee + project + date is truly unique.<BR><BR><B>Conclusion: 
there is only one way to normalize a many-to-many relationship and that is to 
create a link table.</B> The link table must contain columns that refer back to 
the other tables so that the many-to-many relationship becomes two one-to-many 
relationships.<BR><BR>
<H3>&nbsp;</H3>
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
                                                    <BR><BR><BR></DIV><BR>
                                            
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
                                                PostBackUrl="~/SQL_L1.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/SQL_L3.aspx">Next &gt;&gt;</asp:LinkButton>
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
