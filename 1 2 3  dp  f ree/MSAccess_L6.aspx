<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="MSAccess_L6.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>MS Access Tutorials</TITLE>
<META content="text/html; charset=windows-1256" http-equiv=Content-Type>
<META name=Description 
content="Lesson 1 on the VB IDE, the environment, creating a Project, creating a form">
<META name=Keywords 
content="VB 6, IT training, course, application, computer programming, file processing, database">
<META name=Distribution content=Global>
<META name=Rating content=General><LINK rel=StyleSheet type=text/css 
href="images\LessonsImages\MSACCSSESLessons\newstyles2.css">
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
        DestinationPageUrl="~/MSAccess_L6.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;<img alt="" src="images/MS-ACCESS.GIF" 
                    style="width: 202px; height: 83px" />&nbsp;<br />
                &nbsp;
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/MSAccess_L5.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/MSAccess_Contents.aspx">Back to MS Access Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="MSAccess_L7.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 6 - More complex Queries</H2>
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
                                                        <p>
<TABLE border=0 width="100%">
  <TBODY>
  <TR>
    <TD><BR>
        <BR>
        <DIV align=center>
            <BR>
      <DIV align=center>
      <TABLE width="40%" bgColor=#ccffff>
        <TBODY>
        <TR>
          <TD>
            <DIV class=para6>For more information and special deals related to 
            any of the issues on this page, place your cursor over the 
            double-underlined links. <BR>All information supplied by 
            Kontera.com.</DIV></TD></TR></TBODY></TABLE></DIV><BR>
                                                                                    <DIV class=para1>
                                                                                        <DIV class=title2>Working with dates </DIV>
                                                                                        Whenever you develop a 
      commercial application, there is absolutely no way that you can get by 
      without using date fields. The Video application has Movie Rental date, 
      Return date, Date-of-birth, Report dates. The Dating Service has dates for 
      dates. The Credit card has an Expiry date. There are Birth dates, Hire 
      dates, Delivery dates, Order dates, and so on, and so on ....<BR><BR>In 
      ancient times, like 20 years ago, dates were stored as strings and we all 
      remember what that brought about in 1999. Now all DBMSs handle dates in a 
      Date/Time format, which makes our lives a lot simpler, but we have to be 
      aware of the particular properties of Date formats.<BR><BR>Before we begin 
      writing queries there is an aside we must make about 
      formatting.<BR><BR>Access is a Microsoft product, obviously. As with all 
      Microsoft products it works closely with Windows, obviously. When it comes 
      to formatting for different countries Access gets its information from the 
      Windows Control panel. <BR><BR>The Windows default values are basically 
      American. But, if you live in France for example, the standard date format 
      is dd-mm-yy and not mm-dd-yy as you are used to. And some countries use 
      the comma as a decimal separator and put the currency sign to the right of 
      the amount and so on.<BR><BR>Therefore, before starting with Access you 
      should go to the Control panel ---&gt; Regional settings and adjust all 
      the settings for your particular situation.<BR><BR>To avoid confusion with 
      dates I preach and preach to all who will hear that you should 
      automatically adopt the ANSI standard for dates and that is: 
      <B>yyyy-mm-dd</B>. For example, January 1st 2003 should <B>always</B> be 
      input into Access as: <B>2003-01-01</B>.<BR><BR>
      <DIV align=center>
      <SCRIPT type=text/javascript><!--
ch_client = "MikeLat";
ch_type = "mpu";
ch_width = 468;
ch_height = 180;
ch_non_contextual = 4;
ch_vertical ="premium";
ch_sid = "Access";
var ch_queries = new Array( );
var ch_selected=Math.floor((Math.random()*ch_queries.length));
if ( ch_selected < ch_queries.length ) {
ch_query = ch_queries[ch_selected];
}
//--></SCRIPT>
      <BR><BR></DIV>In Access, a date or time constant should be identified with 
      # ... #, as in:<BR><B>... [m_videorelease] = 
      #2001-01-01#;</B><BR><BR><BR>To begin with, know that you can do some 
      calculations with dates as you do with numbers. <BR><BR><B>#2003-01-31# - 
      #2003-01-01#</B> will return <B>30</B>, the number of days between the 2 
      dates.<BR><BR><B>#2003-01-01# + 3</B> will return <B>#2001-01-04#</B> 
      because a numeric constant is always taken to mean days.<BR><BR>When using 
      the comparison operators, <B>&gt; #date1#</B> is taken to mean later than 
      or after and <B>&lt; #date1#</B> is taken to mean earlier than or 
      before.<BR><BR>The smallest date value refers to the earliest or oldest 
      date. The person with the smallest date-of-birth is the oldest. This 
      sometimes comes-in handy because you can sort people by age without having 
      to actually calculate age: to get a list in ascending age order, sort on 
      date-of-birth descending.<BR><BR>In the criteria<B> BETWEEN #date1# AND 
      #date2#</B> sets a date between date1 and date2, inclusive.<BR><BR>To work 
      with date fields we'll use the Date and Time functions that Access 
      supplies. There are dozens of built-in functions that will allow us to 
      manipulate dates and times in just about any way that you can imagine. 
      <BR><BR>The function that will probably be used more than any other: 
      <B>Now( ) </B>returns the current date from the system clock. <BR><BR>In 
      Access and SQL, one of the most useful functions is called: <B>DateDiff( 
      )</B> <BR><BR>
      <DIV class=para1><B>DateDiff('interval', #date1#, #date2#)</B> returns the 
      time difference between date1 and date2, expressed in interval units which 
      could be: days, months, years, weeks or hours.<BR><BR>The interval is 
      specified as: 'd' for days, 'w' for weeks, 'm' for months and 'yyyy' for 
      years.<BR><BR>For example:<BR><BR><B>Datediff('d', #2003-01-01#, now()) 
      </B>returns the number of days between January 1st, 2003 and 
      today.<BR><BR><B>Datediff('m', p_StartDate, p_EndDate)</B> returns the 
      number of months between start date and end date, in this case, for a 
      project.<BR><BR>If the result displays too many numbers after the decimal, 
      use the <B>ROUND(number, digits)</B> function to display the number 
      rounded to 'digits' positions after the decimal: 
      <BR><B>ROUND(Datediff('m', p_StartDate, p_EndDate), 
      2)</B>.<BR><BR></DIV><BR>In theory, <B>Datediff('yyyy', c_BirthDate, 
      now())</B> returns the customer's age, expressed in years. In practice 
      however, you will find that it works or doesn't work depending on whether 
      the person has had his birthday yet this year or not. Usually it doesn'y 
      work very well.<BR><BR>To calculate the exact age, the following formula 
      is quite accurate. There may be a small variation of a day or so once in a 
      while.<BR><BR>
      <DIV class=para1><B>INT(Datediff('d', c_BirthDate, 
      now())/365.25)</B><BR><BR>Calculate the number of days between birth and 
      now and divide by the exact number of days in a year, which, as you know, 
      is 365.25 and not 365. That takes leap years into account. <BR><BR>The 
      Integer function, <B>INT( ) </B>, truncates the result so that 25.9 
      becomes 25, for example; the person is 25 years old until the day she 
      turns 26; after the age of 5, you rarely hear people say that they are 25 
      and a half years 
old.<br />
          <BR>
      <DIV align=center>
      <SCRIPT type=text/javascript><!--
ch_client = "MikeLat";
ch_type = "mpu";
ch_width = 468;
ch_height = 180;
ch_non_contextual = 4;
ch_vertical ="premium";
ch_sid = "Access";
var ch_queries = new Array( );
var ch_selected=Math.floor((Math.random()*ch_queries.length));
if ( ch_selected < ch_queries.length ) {
ch_query = ch_queries[ch_selected];
}
//--></SCRIPT>

      <SCRIPT type=text/javascript src="11_files/amm.js">
</SCRIPT>
<DIV align=center><A 
href="#top">Top</A></DIV>
                                                                    </DIV>
          <BR></DIV><BR><BR><BR></DIV></DIV></TD></TR></TBODY></TABLE>
<DIV class=para1 align="center">
<DIV class=title2>Queries that calculate</DIV><BR>In the previous lesson we 
created several queries to get information from a table. But we always selected 
columns that had already been defined in the table.<BR><BR>We can also define a 
query that will do other calculations using data from the table.<BR><BR>As we 
saw in the previous section, we can calculate age if we know date-of-birth, as 
in the following example:<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <IMG alt="" 
        src="images/LessonsImages/MSACCSSESLessons/acc0801.gif" width=624 
height=301 align="middle"><BR><BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <IMG alt="" src="images/LessonsImages/MSACCSSESLessons/acc0802.gif" width=422 
height=207><BR><BR>
      <DIV align=center>
      <SCRIPT type=text/javascript><!--
ch_client = "MikeLat";
ch_type = "mpu";
ch_width = 468;
ch_height = 180;
ch_non_contextual = 4;
ch_vertical ="premium";
ch_sid = "Access";
var ch_queries = new Array( );
var ch_selected=Math.floor((Math.random()*ch_queries.length));
if ( ch_selected < ch_queries.length ) {
ch_query = ch_queries[ch_selected];
}
//--></SCRIPT>

      <SCRIPT type=text/javascript src="11_files/amm.js">
</SCRIPT>
<DIV align=center><A 
href="#top">Top</A></DIV>
                                                                    </DIV>
      <BR>As you can see, to put calculations into a query:<BR><BR>
<DIV class=para1>Pick an empty column<BR><BR>Define a heading - a name followed 
by a colon - for example, Age:<BR><BR>When you use a column name in the 
calculation, it must be enclosed in square brackets as, [c_DOB]<BR><BR>All 
functions have parentheses - make sure all parentheses are balanced, especially 
if you use several functions<BR><BR></DIV><BR>Obviously you can do more than 
calculate age with queries. Eventually you will use the technique to calculate 
sales amounts, stock quantities, etc.<BR><BR>For example, if you have a Sales 
table with a <B>s_Quantity</B> column and a <B>s_Amount</B> column, you would 
do:<BR><B>LineTotal: [s_Quantity] * [s_Amount]</B><BR><BR>One of the frequent 
uses of this is to do <B>concatenation</B>, that is, stick two strings 
together.<BR><BR>For example, instead of having Last name and First name in 
separate boxes on a form, I want to see First name and Last name together. 
<BR><BR>To get that I have to put it into a query:<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <IMG alt="" 
src="images/LessonsImages/MSACCSSESLessons/acc0803.gif" width=569 height=352 
        align="middle"><BR><BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <IMG alt="" 
src="images/LessonsImages/MSACCSSESLessons/acc0804.gif" width=333 height=115><BR><BR>
<DIV class=title2>Update and Delete queries </DIV><BR>90% of the time when you 
use a query it will be a Select query - one that displays 
information.<BR><BR>Once in a while you will have to do maintenance operations 
on the tables: change a group of prices, delete all obsolete items, etc. For 
those operations you use a different type of query called: <B>an action 
query</B>.<BR><BR>We'll look at two: the Update and the Delete.<BR><BR>First, 
create a new query and specify the table that will be affected, same as the 
Select query.<BR><BR>Then, choose the Query type from the toolbar.<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <IMG 
alt="" src="images/LessonsImages/MSACCSSESLessons/acc0805.gif" width=526 
        height=395 align="middle"><BR><BR><BR>For the Update 
query, specify the operation on the update line: what you want to change and the 
criteria: which records will be changed.<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<DIV align=center>
      <SCRIPT type=text/javascript><!--
ch_client = "MikeLat";
ch_type = "mpu";
ch_width = 468;
ch_height = 180;
ch_non_contextual = 4;
ch_vertical ="premium";
ch_sid = "Access";
var ch_queries = new Array( );
var ch_selected=Math.floor((Math.random()*ch_queries.length));
if ( ch_selected < ch_queries.length ) {
ch_query = ch_queries[ch_selected];
}
//--></SCRIPT>

      <SCRIPT type=text/javascript src="11_files/amm.js">
</SCRIPT>
<DIV align=center><A 
href="#top">Top</A></DIV>
                                                                    </DIV>
      &nbsp;<IMG alt="" 
src="images/LessonsImages/MSACCSSESLessons/acc0806.gif" width=406 height=355><BR><BR><BR>For the Delete query, 
all you have to specify is the Criteria. <BR><BR>You cannot ask to delete 
certain columns in certain records; you can only delete entire 
records.<BR><BR>After choosing Delete query, specify the Criteria to delete 
records:<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <IMG alt="" src="images/LessonsImages/MSACCSSESLessons/acc0807.gif" width=415 height=447> 
<BR></DIV>
                                                            <BR>
                                                        </p>
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
                    InsertCommand="INSERT MsAccess_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    
                      
                      SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [MsAccess_tblComments]">
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
                <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/MSAccess_Contents.aspx">Back to MS Access Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/MSAccess_L5.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/MSAccess_L7.aspx">Next &gt;&gt;</asp:LinkButton>
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
