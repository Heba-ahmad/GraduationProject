<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="VB_L4.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>Visual Basic 6 Tutorials Lesson 8</TITLE>
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
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<A title="SignUp" 
  href="Signup.aspx">Signup</A>                                
                                                    <SPAN class=author>to add comment&amp; to 
          Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/VB_L8.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img alt="" src="images/VB6.JPG" style="width: 204px; height: 72px" />&nbsp;&nbsp;<br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L7.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L9.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 8 - Working with files               <BR></DIV>
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
            <DIV align=center>
            <TABLE width="40%" bgColor=#ccffff>
              <TBODY>
              <TR>
                <TD>
                  <DIV class=para6>For more information and special deals 
                  related to any of the issues on this page, place your cursor 
                  over the double-underlined links. <BR>All information supplied 
                  by Kontera.com.</DIV></TD></TR></TBODY></TABLE></DIV>
            <BR>
      <DIV class=para1>
      <H3>Defining new terms</H3>
      <UL>
        <LI><B>Record:</B> one logical section of a file that holds a related 
        set of data. If the file contains Student information, a record would 
        hold the information on one student: name, address, studentID, etc. If 
        there are 5,000 students registered, the file contains 5,000 
        records.<BR><BR>
        <LI><B>Field:</B> part of a record that defines a specific information. 
        In the Student record, FirstName, LastName, StudentID, are fields. The 
        field is the lowest element in the file. Even if the information 
        consists of one character, Sex is M or F, it is still considered a 
        separate field. The field is the equivalent of the variable - we call it 
        a variable when it is used to store data in memory and call it a field 
        when it stores in a file. <BR><BR>
        <LI><B>I/O:</B> stands for Input/Output. Whenever you work with a file 
        you have to have ways of reading data from the file (that's 
        <B>Input</B>) and ways of writing data to the file (that's 
        <B>Output</B>). I/O operations consist of all those commands that let 
        you read and write files. </LI></UL><BR><BR><BR>
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
      <H3>Types of files</H3>There are basically three types of files you can 
      work with:<BR><BR>
      <UL>
        <LI><B>Sequential file</B>: this is a file where all the information is 
        written in order from the beginning to the end. To access a given record 
        you have to read all the records stored before it. It is in fact like 
        listening to a tape - you can go forward or back but you can't jump 
        directly to a specific song on the tape. In fact, in the old days, 
        magnetic tape was the most commonly used medium to store data and all 
        files were organized this way. Now, it is still useful when there is a 
        small amount of data to store, a file of application settings, for 
        example. It can even be of use when there is a large amount of data to 
        be stored, provided it all has to be processed at one time, eg: a file 
        of invoices to produce a statement at month-end.<BR><BR>
        <LI><B>Random file</B>: a file where all records are accessible 
        individually. It is like a CD where you can jump to any track. This is 
        useful when there is a large quantity of data to store and it has to be 
        available quickly: you have to know if a part is in stock for a customer 
        who is on the phone; the program doesn't have time to search through 
        10,000 records individually to locate the correct one. This method of 
        storage became popular when hard-disk drives were developed.<BR><BR>
        <LI><B>Binary file</B>: this is a special, compacted form of the random 
        file. Data is stored at the byte level and you can read and write 
        individual bytes to the file. This makes the file access very fast and 
        efficient. We won't be covering this type of file in these exercises. If 
        you need to find out more about it, go to the VB Reference Manual. 
      </LI></UL><BR>
      <DIV class=para1>
      <H3>Opening and closing files</H3>To begin our work on files we will look 
      at some commands that are common to both Sequential and Random files. 
      After that we will look at the specific processing commands for each type 
      of file.<BR><BR>The first command to include in a program that needs to 
      work with files is the <B>Open</B> command. Open assigns the file to a 
      numbered <B>file handle</B>, also called a <B>channel</B>, or sometimes a 
      <B>buffer</B>. The format of the command is:<BR><BR>
      <DIV align=left><B>Open "Filename" [For Mode] [AccessRestriction] 
      [LockType] As #FileNumber</B></DIV><BR><BR>For example: 
      <DIV align=left><B>Open "MyFile.txt" For Random Read Lock Read As 
      #1</B></DIV>
      <UL>
        <LI><B>MyFile.txt</B> is the name of the file in the disk directory. 
        <LI><B>For Random</B> means that access to the records can be random; if 
        access is not specified, For random is the default value. 
        <LI><B>Read</B> restricts access to Read-only - the user cannot write or 
        change the records. 
        <LI><B>Lock Read</B> means that only the person reading the record can 
        have access to it at any given time; it is not shared among users. 
        <LI><B>As #1</B> means the file is assigned file handle #1; for all 
        processing in the program, it will always be refered to as #1, not its 
        Filename. </LI></UL><BR><BR><B>AccessRestriction</B> and <B>LockType</B> 
      are parameters that are used mostly with files in a network environment. 
      You use them when you want the file to be shared or not, and you want to 
      prevent certain users from changing or deleting things that they 
      shouldn't. For the rest of this lesson we will not be using those 
      parameters.<BR><BR>
      <H4>Access Mode</H4><B>For Mode</B> in the Open statement indicates how 
      the file will be used. There are five access modes: 
      <UL>
        <LI><B>Input:</B> open for sequential input; the file will be read 
        sequentially starting at the beginning.<BR><BR>
        <LI><B>Output:</B> open for sequential output; records will be written 
        sequentially starting at the beginning; if the file does not exist, it 
        is created; if it does exist, it is overwritten.<BR><BR>
        <LI><B>Random:</B> open for random read and write; any specific record 
        can be accessed.<BR><BR>
        <LI><B>Append:</B> sequential output to the end of an existing file; if 
        the file does not exist it is created; it does not overwrite the 
        file.<BR><BR>
        <LI><B>Binary:</B> open for binary read and write; access is at byte 
        level. </LI></UL>If access mode is not specified in the Open statement, 
      <B>For Random is used by default</B>.<BR><BR><BR>Once processing is 
      finished, you need to <B>Close</B> all the files that have been opened. 
      The format for the <B>Close statement</B> is:<BR><BR>
      <DIV align=left><B>Close #FileNumber1 [, #FileNumber2] 
      ...</B></DIV><BR>You can close any number of files with one Close 
      statement. Eg:<BR><BR>
      <DIV align=left><B>Close #1, #2, #3</B></DIV><BR>The following statement 
      closes all open files:<BR><BR>
      <DIV align=left><B>Close</B></DIV><BR><BR><BR><BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV><BR><BR><BR>
      <H3>Writing and Reading a Sequential file</H3>There are two commands that 
      allow you to write data to a sequential file: <B>Print</B> and 
      <B>Write</B>. They work in almost the same way but, the Print command does 
      not separate the fields in the file in quite the same way which makes the 
      data harder to read afterwards. There is really no valid reason to use 
      Print when creating a sequential file. In the rest of this lesson <B>we 
      will use Write</B> exclusively.<BR><BR>The format of the Write command 
      is:<BR><BR>
      <DIV align=left><B>Write #FileNumber, OutputList</B></DIV><BR><BR>where 
      FileNumber is the number the file was opened with and OutputList is one or 
      more variables you want to write to the file.<BR><BR><BR>
      <H3>Address Book Example</H3>In this exercise we will create a simple 
      address book file to keep track of people's names, addresses and phone 
      numbers. <BR><BR>To handle the various forms that we have to use, we will 
      develop a new technique for these lessons: the use of a <B>Menu</B> of 
      choices. Note that that is not the same as a Menu bar used in a form. In 
      this case we are just going to line-up a series of buttons for the 
      different forms that have to be called. There has also been a small change 
      to the display format - from now on all the forms are maximized (they 
      occupy the full screen) - this is often easier for the user to work with, 
      rather than have a number of different forms overlapping on the screen. To 
      get the form to run maximized, change the <B>Form property WindowState 
      -&gt; 2 - Maximized</B>.<BR><BR>This is what the menu should look 
      like:<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f01b.gif" width=383 
      height=403></DIV><BR><BR>The code for the menu consists of loading and 
      showing the various forms. The Exit button exits the Menu itself. Any open 
      files are closed by the individual forms.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f02.gif" width=367 
      height=426></DIV><BR><BR>
      <H4>File design</H4>It has been determined that the file will store 7 
      fields of information. First and last names could be together and we could 
      have a work phone number but, the Analyst (who gets paid big bucks to 
      think this stuff up) has determined that 7 is what is required. It has 
      also been decided that the file will be called "AdrsBook.txt" and will be 
      stored in "C:\VBApps" - we need to know this for the Open statement. 
      <BR><BR>It must also be determined, before we start to code, what the File 
      mode is going to be when we output to the file. We could use "Output" but 
      that would mean that every time that we want to add a new listing, we 
      wipe-out the file. Not very practical! Therefore, we will use "Append" so 
      that all new entries are added to the end of the existing 
      file.<BR><BR>Finally, once the controls are in place on the form, we have 
      to finalize the order in which we Tab through them when working from the 
      keyboard. That is called the <B>Tab order</B>. To set the tab order, we 
      use the <B>TabIndex property</B> for each control. It starts at 0 and goes 
      up for every control in order. When the form opens, the control with 
      TabIndex=0 gets focus; when you tab from that, focus goes to TabIndex=1, 
      and so on. Controls that don't get focus - Labels, Pictures, etc. - do 
      have a TabIndex but their <B>TabStop property</B> is set to False. If you 
      don't want Tab to stop on a control, set its TabStop to False.<BR><BR>Here 
      is what the Sequential Output form will look like when we use it:<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f03.gif" width=394 
      height=345></DIV><BR><BR>Once the file has been created we can use Notepad 
      to look at it. Notice that the last entry, the one on the form above, is 
      not yet in the file. It gets written only when you hit the Write button. 
      Each field entered is stored as a separate line in the file. When we read 
      them, we read in the same order as that in which they were 
written.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f04.gif" width=254 
      height=359></DIV><BR><BR>
      <H4>Creating the Sequential Output form</H4>The form SAdresOut is used to 
      capture data from the user and then output that data to the AdrsBook.txt 
      file. The design of the form is what you see in the diagram above. 
      <BR><BR>As you can see, we need 7 TextBox controls to capture the 7 
      fields. To simplify the code, we will use a technique we haven't used 
      before in these lessons: the <B>Control Array</B>. You may have seen that 
      come up before if you tried to copy and paste controls. What we do is: 
      create one TextBox control, give it a name - we call it "txt_field" -, and 
      then copy that control and paste it 6 times on the form. When you paste a 
      control, since it has the same name as the existing one, the editor asks 
      whether you want to give it a new name or create a control array. In this 
      case we tell it to create the control array. This means that, instead of 7 
      different TextBoxes, we will have an array of TextBoxes, named 
      txt_field(0) to txt_field(6). As you can see from the code, this allows us 
      to use For ... Next loops to do things like clear the controls and write 
      to the file.<BR><BR>The Cancel button simply clears all the TextBoxes and 
      does not executes a Write operation. The Exit button closes the open files 
      and unloads the form which returns us automatically to the Menu form. 
      There is no End statement, as that would cause the program to end.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f05.gif" width=510 
      height=353></DIV><BR><BR>The code to write to the file is fairly 
      straightforward. Once information has been entered into the 7 TextBoxes, 
      we use a FOR ... NEXT loop to execute the Write command. The reason for 
      this is that the Write command outputs only one field at a time. So, we 
      have to do 7 writes to output the whole record. After the TextBoxes have 
      been written-out, we clear them to create the next record.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f06.gif" width=405 
      height=428></DIV><BR><BR><BR><BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV><BR><BR><BR>
      <H3>Working with a Random file</H3>For this exercise we will use the same 
      Menu form that we started with but we'll create a new output file which we 
      will call "PhoneBook.txt". Since this file format is different from the 
      sequential, we can't use the same file to test the code. The PhoneBook 
      file will have almost the same content as the AdresBook file. The only 
      difference is that we'll add a field for PersonId at the beginning of each 
      record. That will allow us to retrieve records using a record number. 
      <BR><BR>
      <H4>User-defined data type</H4>In addition to data types like String, 
      Integer, Date and so on, you can also define your own data type. This type 
      is called <B>structure</B> or <B>structs</B> in other languages. We will 
      use it in our application to simplify our I/O operations since our I/O 
      commands, <B>Put</B> and <B>Get</B> only handle one field at a time. What 
      we do with the user-defined data type is to create a new variable which 
      contains a whole record.<BR><BR>The user-defined variable must be declared 
      in a <B>module</B>. That's a program at the application level, not tied to 
      any specific event. To create a module: <B>Menu bar --&gt; Project --&gt; 
      Add module --&gt; Open</B>. When you save the module, it will take the 
      .BAS extension. The information contained in modules is available to all 
      the forms in the application. This is what your first module should 
      contain:<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f07.gif" width=387 
      height=236></DIV><BR><BR>The <B>Type</B> statement creates a new data 
      type; in this case, it's <B>PhoneRec</B>. Once it's been defined, the new 
      type can be used like any other type, String or Integer, etc. to declare a 
      variable:<BR><BR>
      <DIV align=center><B>Dim InRecord As PhoneRec</B></DIV><BR><BR>The 
      individual fields in the structured variable can be accessed using dot 
      notation:<BR><BR>
      <DIV align=center><B>Label5.Caption = InRecord.Fname<BR>txt_city.Text = 
      InRecord.City</B></DIV><BR><BR>When you define the fields within the new 
      type, it's important to determine the length of each string. Random access 
      is sensitive about record lengths. When you define a String field like: 
      <B>Fname As String * 15</B> you determine that the size of the field will 
      always be 15 characters. <B>This is important for the processing to work 
      properly!</B> Just make sure that the size you assign is big enough to 
      handle most situations. You do not have to worry about the Integer field 
      because its size is standard.<BR><BR>
      <H4>Writing and Reading records</H4>The command to write records to the 
      Random file is <B>Put</B>. Its format is:<BR><BR><B>Put #Filenumber, 
      [RecordNumber], Variable</B><BR><BR>RecordNumber is optional and, if it's 
      omitted, variable is written in Next record position after last Put or Get 
      statement.<BR><BR>The command to read records from a Random file is: 
      <B>Get</B>. Its format is:<BR><BR><B>Get #FileNumber, [RecordNumber], 
      Variable</B><BR><BR>If RecordNumber is omitted, next record is read from 
      the file.<BR><BR>
      <H4>Creating the Random file</H4>To create the PhoneBook file, we will 
      need a new form which is just a copy of the SAdresOut form with the 
      additional Person number TextBox, which is in fact the record number. Then 
      we'll write the code, making use of the user-defined data type 
      "<B>PhoneRec</B>" described earlier. This form, "<B>RAdresOut</B>", 
      obtains the next record number from the file, accepts input from the user 
      and writes- the record out to the file. <BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f09.gif" width=375 
      height=367></DIV><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f08.gif" width=474 
      height=450></DIV><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f10.gif" width=463 
      height=408></DIV><BR><BR>To read records from the file, we have to specify 
      a record number. This number is accepted into the Person number TextBox 
      and then used to locate the appropriate record in the file.<BR><BR>The 
      error-trapping routine is useful in this procedure because you are almost 
      certain to encounter the "Reading past End-of-file" error when you enter a 
      Person number that does not exist.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f11.gif" width=461 
      height=261></DIV><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f12.gif" width=441 
      height=370></DIV><BR><BR></DIV></DIV>
                                               The error-trapping routine is 
          useful in this procedure because you are almost certain to encounter the 
          &quot;Reading past End-of-file&quot; error when you enter a Person number that does not 
          exist.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f11.gif" width=461 
      height=261></DIV><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb08f12.gif" width=441 
      height=370></DIV><BR><BR></DIV></DIV>
                                                   
                                                   
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
                  <br />
                  <br />
                  <p>
                  </p>
                  <p>
                  </p>
</p>
                                                        </asp:Panel>

               
               
          
                <br />
                                                        </a>
                                                    </div>
                                                    <BR><BR></DIV><BR>
                                            <BR>
            <DIV align=right style="color: #00FF00">
                <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L7.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L9.aspx">Next &gt;&gt;</asp:LinkButton>
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
