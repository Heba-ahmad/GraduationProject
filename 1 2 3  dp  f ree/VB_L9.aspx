<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="VB_L4.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>Visual Basic 6 Tutorials Lesson 9</TITLE>
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
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<A title="SignUp" 
  href="Signup.aspx">Signup</A>                                
                                                    <SPAN class=author>to add comment& to Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/VB_L9.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;&nbsp;<img alt="" src="images/VB6.JPG" style="width: 204px; height: 72px" /><br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L8.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L10.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 9 - Working with a database</H2>
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
                                                    <br />
      <TABLE border=0 cellSpacing=0 cellPadding=10 width="90%">
        <TBODY>
        <TR>
          <TD>
            <DIV align=center>
            </DIV><BR><BR></TD>
          <TD>
            <DIV class=para1>
            <DIV align=center>
            <TABLE width="40%" bgColor=#ccffff>
              <TBODY>
              <TR>
                <TD>
                  <DIV class=para6>For more information and special deals 
                  related to any of the issues on this page, place your cursor 
                  over the double-underlined links. <BR>All information supplied 
                  by Kontera.com.</DIV></TD></TR></TBODY></TABLE></DIV><BR><BR>
            <H3>Creating the database</H3>In the final 2 lessons in this 
            tutorial, we will be developing a VB Project on "Project 
            Management". The actual database we will be using has already been 
            modelled and created in the tutorial on <B>Database Design and SQL, 
            Lesson 2</B>. <BR><BR>If you haven't read it yet, you should <a href="SQL_L2.aspx">read it now</a>.<BR><BR>If you prefer, you can download the sample database 
            to do the lessons: <A 
            href="http://www.profsr.com/vb/ProjMgt.zip">Download Project 
            Management database</A>.<BR>
            <H3>The Project Management example</H3>ezConsulting Inc. is a 
            company doing IT systems consulting work with a large number of 
            clients. At any given time there are dozens of projects on the go, 
            each employing several employees. In a given period (in this case, 
            weekly) an employee could work on several different projects. In 
            order to track costs and revenues for each project, each employee 
            will submit a timesheet every week showing the number of hours spent 
            on each project. And, since all employees are attached to only one 
            department, costs and revenues can be calculated by 
            department.<BR><BR>It has already been determined that the 
            ProjectMgt database will consist of the following tables:<BR>
            <UL>
              <LI><B>Employees</B>: details on every employee - ID, name, 
              address, telephone, date hired, salary, chargeout rate, 
              department<BR><BR>
              <LI><B>Projects</B>: details of every project - project number, 
              title, budget, start date, end date<BR><BR>
              <LI><B>Departments</B>: lookup table of departments - number, 
              name, head<BR><BR>
              <LI><B>Timesheets (Master/Detail)</B>: tables to store time spent 
              on projects - date, employee, project, number of hours 
            </LI></UL><BR><BR></DIV><BR></TD></TR></TBODY></TABLE>
      <DIV class=para1>The first task to be developed in the application 
      consists of <B>table maintenance</B>. For each of the main tables, 
      Employees, Projects and Departments, there have to be ways to add new 
      records, remove records that are no longer needed and change records when 
      appropriate. For example, new employees are hired and other employees 
      leave, the name of a department is changed or a new project is started. 
      Each of these maintenance operations will require a separate 
      form.<BR><BR>Once the maintenance functions are in place, and they have to 
      be (remember: <B>referential integrity</B> dictates that you can't accept 
      a timesheet for a non-existant employee or non-existant project), we can 
      start working on the <B>operational functions</B>, entering timesheets and 
      producing reports. There will be forms for these tasks also.<BR><BR>To 
      make it easier to access the different forms, we will create an 
      <B>Application Menu</B> like we did in the previous lesson. The layout of 
      the Menu form is standard and the code consists of a series of Load and 
      Show statements for the various forms.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb09f01.gif" width=372 
      height=366></DIV><BR><BR><BR><BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV><BR><BR><BR>
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
      </DIV><BR><BR><BR>
      <TABLE border=1 width="80%" bgColor=#ffffcc align=center>
        <TBODY>
        <TR>
          <TD><BR>
            <DIV class=para1><BR>
            <DIV align=center><B>Version problems</B></DIV><BR><BR>VB 6 and 
            Access 2000 have compatibility problems. Because VB 6 was released 
            before Access 2000, it does not normally recognize the Access 2000 
            format. In the example that follows, look at the <B>Connect</B> 
            property of the <B>Data control</B>. If you don't have Access 2000 
            in the choices when you open "Connect", you have an older version of 
            VB. If you try to connect to an Access 2000 database, you will get a 
            message saying that you have an "<B>Unrecognized database 
            format"</B>. If you have an older version of VB6, you will have to 
            get the fix for it. You may be aware that Microsoft regularly 
            publish upgrades to their software products (not that they admit 
            that there are problems with them!). Those upgrades are called 
            <B>Service Packs</B>. Right now, Visual Studio (which includes 
            Visual Basic) is at Service Pack 5. By the time you read this that 
            may have changed. So, to fix your compatibility problem you will 
            have to download the latest Visual Studio Service Pack from <A 
            href="http://www.microsoft.com/">Microsoft</A>. <BR><BR>There is a 
            quick fix to the problem, which is what we've done here to save you 
            the trouble of having to download. You can convert your Access 2000 
            database to Access 97 and use your old VB. <BR><BR>To do that in 
            Access 2000, go to <B>Tools --&gt;Database utilities 
            --&gt;Convert</B> and that will do the trick until you have the time 
            to upgrade VB.<BR><BR>This will also come in handy later when we 
            look at a VB Add-in called <B>Visual Data Manager</B>. 
            Unfortunately, that Add-in does not work at all with Access 2000, 
            even with the VB Service Pack. If you want to use it you will have 
            to convert the 
      database.<BR><BR></DIV></TD></TR></TBODY></TABLE><BR><BR><BR>
      <H3>The Data Control</H3>To begin the application, we will first create a 
      new form for Projects maintenance: <B>ProjMaint</B>. <BR><BR>The first 
      control we will place on the form, once we've set the basic form 
      properties and saved it, is called the <B>Data Control</B>. It is the 
      object which links a form to a database and allows you to access the 
      fields in the tables making up the database. It's called <B>Data</B> in 
      the Toolbox.<BR><BR>VB provides other objects that allow you to link to 
      databases. <B>ADO (ActiveX Data Objects)</B> are certainly more powerful 
      and more efficient than the Data Control. However, they do require a lot 
      more coding and are more difficult to implement. Also, they are not 
      available in the Standard Edition of VB, only in the Professional and 
      Enterprise Editions. In simple applications, the Data Control, slow as it 
      is, gives you a tool that is easy to implement and will provide most of 
      the functionality you need. <BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb09f02.gif" width=510 
      height=322></DIV><BR><BR>The <B>arrow buttons</B> on the control are used 
      to navigate through the database records:<BR><BR><IMG border=0 
      src="images/LessonsImages/VBLessons/vb09f04.gif" width=77 height=45> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>First record</B> and 
      <B>Previous</B><BR><BR><IMG border=0 src="images/LessonsImages/VBLessons/vb09f05.gif" width=48 
      height=46> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Next</B> and <B>Last 
      record</B><BR><BR>The buttons correspond to 4 <B>methods</B> of the DC 
      which you can use when you have to navigate using code. They are: 
      <BLOCKQUOTE><B>MoveFirst<BR>MovePrevious<BR>MoveNext<BR>MoveLast</B></BLOCKQUOTE>
      <DIV class=para1>Let's look at the important properties of the Data 
      Control: 
      <UL>
        <LI><B>Name:</B> the name to use in code - Data1 is default - eventually 
        we'll have several data controls on the form - we'll call this one 
        dta_proj.<BR><BR>
        <LI><B>Connect:</B> the kind of database - in this case it's Access - 
        could be Foxpro, dBaseIV, etc.<BR><BR>
        <LI><B>DatabaseName:</B> the name and path of the database the control 
        is connected to.<BR><BR>
        <LI><B>RecordSource:</B> the name of the database table being 
        used.<BR><BR>
        <LI><B>BOFAction</B> and <B>EOFAction</B>: action to take when trying to 
        read before the beginning of file or past the end of file - we'll look 
        at those later.<BR><BR>
        <LI><B>Recordset:</B> this is a run time property, and it's an 
        <B>important one</B> - it represents the result of the query executed to 
        the database - it contains all the records required by this Data Control 
        - when you navigate through the database, you are actually navigating 
        through the recordset, which is then mapped back to the database - that 
        is why the methods of the Data Control refer to the Recordset property. 
        </LI></UL>Next we add the controls needed to look at the fields in the 
      records. In many instances we will need to make changes to the data. 
      Therefore, we'll use a TextBox for each of the fields so that we can both 
      diaplay and enter data as needed. Each TextBox will be a <B>bound 
      control</B>, meaning that it is bound or tied to a specific field from the 
      database. When we navigate through the database using the arrow buttons 
      the content of each TextBox will always reflect the content of the current 
      field. To bind the control to the database field we use its <B>Data 
      properties</B>:<BR><BR>
      <UL>
        <LI><B>DataSource</B> is the name of the Data Control - remember that 
        the DC specifies the name of the database to use and the name of the 
        table to access - tip: enter this one before the DataField.<BR><BR>
        <LI><B>DataField</B> is the name of the field to bind - that field is 
        selected from the content of the table. </LI></UL><BR><BR></DIV><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb09f06.gif" width=573 
      height=300></DIV><BR><BR><BR><BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV><BR><BR><BR>
      <DIV class=para1>Notice that we've also added several buttons to the form. 
      These buttons represent the most common actions we have to perform on the 
      records. <BR><BR><B>Important note:</B> when you work with bound controls 
      you have to remember that every time you move off a record, the record is 
      automatically modified in the database - every change you make to a 
      TextBox is reflected immediately in the table. That is why there is no 
      Update button - the function is done automatically.<BR><BR>The 
      <B>Reset</B> button allows you to cancel any changes you may have made to 
      the fields - if you modified information and then change your mind about 
      updating it, the Reset will skip the automatic update and return the 
      fields to their original state. This is a method of the Data Control 
      object and is written as: 
      <BLOCKQUOTE><B>dta_proj.UpdateControls</B></BLOCKQUOTE><BR><BR>There are 2 
      ways to <B>Add</B> new records to the table:<BR><BR>
      <UL>
        <LI>in the Data Control, dta_proj, set the <B>EOFAction property = 2</B> 
        - this will allow the user to go to Last Record and do a Next, which 
        will add a blank record to the table;<BR><BR>
        <LI>use the AddNew method of the Data Control, as in: 
        <BLOCKQUOTE><B>dta_proj.Recordset.AddNew</B></BLOCKQUOTE></LI></UL><BR><BR>To 
      <B>Delete</B> the current record, you must use the <B>Delete</B> method 
      followed by a <B>MoveNext</B> to move off the deleted record: 
      <BLOCKQUOTE><B>dta_proj.Recordset.Delete<BR>dta_proj.Recordset.MoveNext</B></BLOCKQUOTE><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb09f07.gif" width=388 
      height=331></DIV><BR><BR></DIV><BR><BR><BR><BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV><BR><BR><BR><BR>
      <DIV class=para1>
      <H3>Validating data</H3>Before the data you are entering get permanently 
      transfered to the database, you often want to make sure they are correct. 
      That is called <B>data validation</B>. We look here at two simple ways of 
      validating data. <BR><BR>Let's say that the specs for the Projects 
      maintenance part of the application call for three verifications: 
      <UL>
        <LI>a budget amount must be entered;<BR><BR>
        <LI>the budget amount must not exceed $1,000,000<BR><BR>
        <LI>the project end-date cannot be earlier than the 
      start-date.</LI></UL>For the first two we'll use the <B>Validate event</B> 
      of the control. This event is triggered when the <B>CausesValidation 
      property</B> in the TextBox is set to True. Before losing focus, the 
      validation is done. The parameter assigned to the event when it is 
      generated automatically (it's called Cancel) represents the KeepFocus 
      property. If you set it to true in code when you encounter a validation 
      problem, it keeps focus on the current control until the problem is 
      corrected.<BR><BR>The second technique is to use the <B>LostFocus 
      event</B>. When focus moves off the control, you do the validation. If 
      there is an error, you evoke the <B>SetFocus method</B> to put focus back 
      to the control with the error.<BR><BR><BR><BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV><BR><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb09f08.gif" width=466 
      height=352></DIV><BR><BR><BR><BR><BR>
      <DIV class=para1>
      <H3>Finding a specific record</H3>When you navigate with the arrow buttons 
      or the Move... methods you are necessarily moving one record at a time. 
      Very often there is a need to access a specific record in the database. 
      For example, it might be to change the ending-date for the project called 
      "XYZ Corp. Payroll System". <BR><BR>In this example we assume that the 
      search will be conducted on Project title. It could be on Number or 
      End-date if necessary and it would just involve minor changes to the code. 
      We also assume that the user does not want to enter the full project title 
      and will only input the first few characters; we will therefore make use 
      of the "Like" operator to match the recordset to the search string. 
      <BR><BR>First, we create a <B>new TextBox</B>, called 
      <B>txt_findTitle</B>, to enter the search string. We will give this 
      TextBox the <B>TabIndex 0</B> because we want it to be the first control 
      read when we look at a record. As soon as we move off the TextBox, the 
      <B>LostFocus event</B> is triggered and checks whether the user has 
      entered a search string or not. If there is no input into the search 
      string, the user can work with the current record in the form. If there is 
      a search string specified, the appropriate record will be loaded into the 
      form.<BR><BR>The <B>FindFirst method</B> of the DC will locate the first 
      occurence in the recordset matching the "content" parameter. If there are 
      more than one records that match, the user then navigates forward using 
      the arrows. The format of the FindFirst method is: 
      <BLOCKQUOTE><B>DataControl.Recordset.FindFirst "fieldname = 
        'searchstring'"</B><BR><BR>If the fieldname contains a string value, you 
        have to use single quotes to name the searchstring; you can use the 
        other comparison operators in place of the =. <BR><BR>This technique can 
        be adapted to search any field in the recordset for a specific record. 
        There are also <B>FindNext, FindPrevious</B> and <B>FindLast</B> methods 
        for the Data Control recordset.<BR><BR><BR></BLOCKQUOTE>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb09f10.gif" width=374 
      height=346></DIV><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb09f09.gif" width=417 
      height=251></DIV><BR></DIV></DIV></DIV><BR><BR>
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
                                                PostBackUrl="~/VB_L8.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L10.aspx">Next &gt;&gt;</asp:LinkButton>
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
