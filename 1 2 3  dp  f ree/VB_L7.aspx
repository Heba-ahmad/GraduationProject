<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="VB_L4.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>Visual Basic 6 Tutorials Lesson 7</TITLE>
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
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp; &nbsp;<A title="SignUp" 
  href="Signup.aspx">Signup</A>                                
                                                    <SPAN class=author>to add comment&amp; to 
          Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/VB_L7.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                style="background-image: url('images/tabletop_gradient.gif'); height: 109px; width: 841px;">
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<img alt="" src="images/VB6.JPG" 
                    style="width: 204px; height: 72px" /><br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L6.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L8.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 7 - Text, Graphics and Multimedia               <BR></DIV>
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
      </DIV>
      <DIV class=para1>

      <DIV class=para1>
          <BR>
      <DIV align=center>
      <TABLE width="40%" bgColor=#ccffff>
        <TBODY>
        <TR>
          <TD>
            <DIV class=para6>For more information and special deals related to 
            any of the issues on this page, place your cursor over the 
            double-underlined links. <BR>All information supplied by 
            Kontera.com.</DIV></TD></TR></TBODY></TABLE></DIV><BR><BR>
      <H3>Manipulating text</H3>
      <DIV class=para1>Whenever you are entering data, creating files or 
      databases, you are working with text strings. Text strings contain 
      characters that can be copied, deleted, cut and reassembled but they also 
      have important visual characteristics: size, color, weight, transparency, 
      etc. In this lesson we will look at different ways of manipulating those 
      text strings.<BR><BR>
      <H4>String functions</H4>Here is a list of the basic functions that work 
      with strings:<BR><BR>
      <UL type=DISC>
        <LI><B>Len(string)</B>: returns the length of <I>string</I>, the number 
        of characters it contains.<BR><BR>
        <LI><B>Left(string, number)</B>: returns the number of characters 
        specified by <I>number</I> from the left end of <I>string</I>.<BR><BR>
        <LI><B>Right(string, number)</B>: returns the number of characters 
        specified by <I>number</I> from the right end of <I>string</I>. <BR><BR>
        <LI><B>Mid(string, position, number)</B>: returns the number of 
        characters specified by <I>number</I> starting at character number 
        <I>position</I> from the left end of <I>string</I>.<BR><BR>
        <LI><B>InStr(string1, string2)</B>: returns the position of 
        <I>string2</I> in <I>string1</I> - returns 0 if <I>string2</I> is not 
        found in <I>string1</I>.<BR><BR>
        <LI><B>LTrim(string), RTrim(string) and Trim(string)</B>: returns 
        <I>string</I> with non-significant spaces removed from the left, the 
        right or both, respectively.<BR><BR>
        <LI><B>LCase(string), UCase(string)</B>: returns <I>string </I>converted 
        to lower-case or upper-case, respectively.<BR><BR></LI></UL><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb07f01.gif" width=489 
      height=396></DIV><BR><BR></DIV><BR>
      <H4>Formatting Numbers, Dates and Times</H4>The Label control is still the 
      easiest way of displaying the result of calculations. Whatever the answer 
      is, just move it to Label5.Caption and it will appear on the form. 
      Unfortunately, it does not always appear the way you want to see it. No 
      problem if the result is a string but, what if it is a dollar amount or a 
      date of some kind. That will require some formatting of the result before 
      displaying it. We use the <B>Format function</B>: 
      <DIV align=center><B>Label5.Caption = Format(result, "formatting 
      characters")</B></DIV><BR><BR><BR>
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
      <H4>Numbers</H4>For example, given that: 
      <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Dim result As 
      Single<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result = 
      3456.7<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Label5.Caption 
      = Format(result, "00000.00") 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'displays: 
      03456.70<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Label5.Caption 
      = Format(result, "#####.##") 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'displays: 
      3456.7<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Label5.Caption 
      = Format(result, "##,##0.00") 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'displays: 
      3,456.70<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Label5.Caption 
      = Format(result, "$##,##0.00") &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      'displays: $3,456.70 </B><BR><BR>Here is a list of what the formatting 
      characters mean:<BR><BR>
      <DIV align=center>
      <TABLE border=1 width="50%">
        <COLGROUP>
        <COL span=2>
        <TBODY>
        <TR>
          <TD>0&nbsp;</TD>
          <TD>represents a digit, with non-significant leading and trailing 
            zeros&nbsp;</TD></TR>
        <TR>
          <TD>#&nbsp;</TD>
          <TD>represents a digit, without non-significant leading and trailing 
            zeros&nbsp;</TD></TR>
        <TR>
          <TD>.&nbsp;</TD>
          <TD>decimal placeholder&nbsp;</TD></TR>
        <TR>
          <TD>,&nbsp;</TD>
          <TD>thousands separator&nbsp;</TD></TR>
        <TR>
          <TD>$ + - ( ) space&nbsp;</TD>
          <TD>literal character; displayed as 
      typed&nbsp;</TD></TR></TBODY></TABLE></DIV><BR><BR>
      <BLOCKQUOTE>When displaying dollar amounts, it is good practice to 
        always use the 0 placeholder with the decimal so that <B>10 cents 
        </B>does not come out as <B>$.1</B> or <B>$0.1</B> Using the formatting 
        string <B>"$#0.00"</B> ensures that the value follows standard rules and 
        comes out as <B>$0.10</B>.<BR><BR></BLOCKQUOTE>
      <DIV class=para1>
      <H4>Dates and Times</H4>When working with dates and times, you need to 
      know that there is a function that will obtain the current date and time 
      from the system clock. The function is: <B>Now( )</B> and you can use it 
      directly as in: 
      <DIV align=center><B>Label5.Caption = Now( )</B></DIV><BR><BR>The result 
      is the current date and time formatted according to what you specified in 
      the Windows Control Panel for your system. If you want to format the 
      result, because you don't want to see the time, for example, there are 
      formatting characters for date and time, as there are for numbers. The 
      main characters are:<BR><BR>
      <DIV align=center>
      <TABLE border=1 width="50%">
        <COLGROUP>
        <COL span=2>
        <TBODY>
        <TR>
          <TD>yy&nbsp;</TD>
          <TD>year without the century - eg: 00&nbsp;</TD></TR>
        <TR>
          <TD>yyyy&nbsp;</TD>
          <TD>year with century - eg: 2000&nbsp;</TD></TR>
        <TR>
          <TD>m&nbsp;</TD>
          <TD>month number - eg: 12&nbsp;</TD></TR>
        <TR>
          <TD>mmm&nbsp;</TD>
          <TD>short name of month - eg: dec&nbsp;</TD></TR>
        <TR>
          <TD>mmmm&nbsp;</TD>
          <TD>long name of month - eg: december&nbsp;</TD></TR>
        <TR>
          <TD>d&nbsp;</TD>
          <TD>day of the month, without zero - eg: 8&nbsp;</TD></TR>
        <TR>
          <TD>dd&nbsp;</TD>
          <TD>day of the month, with zero - eg: 08&nbsp;</TD></TR>
        <TR>
          <TD>dddd&nbsp;</TD>
          <TD>name of the day of the week - eg: Monday&nbsp;</TD></TR>
        <TR>
          <TD>h&nbsp;</TD>
          <TD>hour, without zero - eg: 7&nbsp;</TD></TR>
        <TR>
          <TD>hh&nbsp;</TD>
          <TD>hour, with zero - eg: 07&nbsp;</TD></TR>
        <TR>
          <TD>mm&nbsp;</TD>
          <TD>minutes - eg: 45</TD></TR>
        <TR>
          <TD>ss&nbsp;</TD>
          <TD>seconds - eg: 55</TD></TR></TBODY></TABLE></DIV><BR><BR>Thus, if Now( 
      ) is July 8, 2000 , 
      <DIV align=center><B>Label5.Caption = Format(Now( ), "dddd, yyyy mmmm 
      dd")<BR>returns: Saturday, 2000 July 08</B></DIV><BR><BR>Of course any 
      other date can be formatted for display: 
      <DIV align=center><B>Label5.Caption = Format( DateOfBirth, 
      "yyyy-mm-dd")</B></DIV><BR><BR>
      <H4>Named Formats</H4>In addition to the formatting string, there are 
      several <B>named formats</B> that can be used to determine the output 
      format. These named formats are VB constants that you call when you need 
      them:<BR><BR>
      <TABLE border=1 width="60%">
        <COLGROUP>
        <COL span=2>
        <TBODY>
        <TR>
          <TD>General Number&nbsp;</TD>
          <TD>Number with no thousands separator&nbsp;</TD></TR>
        <TR>
          <TD>Currency&nbsp;</TD>
          <TD>Thousands separator, two digits to the right of 
        decimal&nbsp;</TD></TR>
        <TR>
          <TD>Fixed&nbsp;</TD>
          <TD>Displays at least one digit to the left and two digits to the 
            right of decimal&nbsp;</TD></TR>
        <TR>
          <TD height=24>Standard&nbsp;</TD>
          <TD height=24>Thousands separator, at least one digit to the left 
            and two digits to the right of decimal &nbsp;</TD></TR>
        <TR>
          <TD>Percent&nbsp;</TD>
          <TD>Multiplies by 100, add percent sign to the right&nbsp;</TD></TR>
        <TR>
          <TD>General Date&nbsp;</TD>
          <TD>Display determined by Control panel settings; displays date and 
            time&nbsp;</TD></TR>
        <TR>
          <TD>Long Date&nbsp;</TD>
          <TD>Long date format specified for system&nbsp;</TD></TR>
        <TR>
          <TD>Short Date&nbsp;</TD>
          <TD>Short date format specified for system&nbsp;</TD></TR>
        <TR>
          <TD>Long Time&nbsp;</TD>
          <TD>Long time setting specified by system; includes hours, minutes, 
            seconds&nbsp;</TD></TR>
        <TR>
          <TD>Short Time&nbsp;</TD>
          <TD>Shows hours and 
      minutes&nbsp;</TD></TR></TBODY></TABLE></DIV><BR><BR><BR><BR>
      <DIV align=center><B>Dim DateHired As Date<BR>DateHired = 
      "1995-10-25"<BR>Label5.Caption = Format(DateHired, "Long 
      Date")<BR><BR>returns: October 25, 1995</B></DIV><BR><BR>
      <H4>Manipulating blocks of text</H4>The <B>TextBox</B> and the 
      <B>ComboBox</B> controls contain several properties which will allow you 
      to manipulate blocks of text, in addition to single characters. <BR><BR>If 
      you have to input a large quantity of text in a TextBox, for example, you 
      do not want to see it all in a single line. There are 2 properties that 
      you set that will make the data easier to see: 
      <UL>
        <LI><B>MultiLine = True</B> allows you to have several lines of input, 
        all separated by &lt;Enter&gt;.<BR><BR>
        <LI><B>ScrollBars = 2 - Vertical</B> will create scrollbars, useful to 
        read text. </LI></UL><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb07f03.gif" width=475 
      height=144></DIV><BR><BR>Then there are 3 properties to work with a 
      <B>block of selected text</B> in the control: 
      <UL>
        <LI><B>SelStart</B> an integer number identifying the start of selected 
        text, the position of the first character in the block - starts at 
        0.<BR><BR>
        <LI><B>SelLength</B> an integer number identifying the number of 
        characters selected in the block.<BR><BR>
        <LI><B>SelText</B> a string containing the selected text. 
      </LI></UL><BR>Note that this kind of manipulation is usually done with the 
      mouse. However, you do not have to code for the mouse events. It is 
      automatic - when you select text in a control, the appropriate events, 
      MouseDown, MouseUp and MouseMove, are triggered by the control.<BR><BR>
      <H4>Useful objects: Screen and Clipboard</H4>The <B>Screen object</B> 
      represents the complete Windows environment. It allows access to all Forms 
      and Controls. It has <B>2 important properties</B> that we need:<BR>
      <UL>
        <LI><B>ActiveForm</B> returns the name of the Form currently active. 
        <BR><BR>
        <LI><B>ActiveControl</B> returns the name of the Control that currently 
        has <B>focus</B>. </LI></UL><BR>In the example that follows we will use 
      these properties to avoid having to name the form and the control in code. 
      This is a way of implementing <B>re-usability of code</B>, an important 
      design principle - we can write code that can be re-used in many 
      applications without having to be re-written.<BR><BR>The <B>Clipboard 
      object</B> is the system clipboard that you know from all your other 
      Windows applications. It is the object that temporarily stores text or 
      graphics between applications. In the case of the Clipboard object, it has 
      <B>3 important methods</B> that we will use:<BR>
      <UL>
        <LI><B>Clear</B> empties the Clipboard.<BR><BR>
        <LI><B>SetText</B> puts the selected text into the Clipboard.<BR><BR>
        <LI><B>GetText</B> gets the contents of the Clipboard. </LI></UL><BR>
      <H4>Example</H4>For the purposes of this example, we will use the 
      Registration Form from Lesson 5.<BR>We will add a Comment TextBox to the 
      form. This textbox will be multiline, with a vertical scrollbar. Then, we 
      will add items to the menu to allow us to edit the text entered in 
      Comments. We want to be able to Cut, Copy, Paste and Delete blocks of 
      text.<BR><BR>To change the Menu, we again call upon the <B>Menu 
      Editor</B>. We add the new functions under the Edit item. To insert a 
      <B>separator bar</B>, just put a single hyphen in the Caption and give it 
      a Name, mnu_sep1, for example. The menu should look like this:<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb07f04.gif" width=366 
      height=363></DIV><BR><BR>Then we code the menu events. Note that we use 
      the Screen properties exclusively in this example. Even if we are working 
      in a control which is called txt_comments, there is nothing in the code 
      that refers specifically to that control. We can copy this whole section 
      to any form in any application and it will work without a hitch.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb07f02.gif" width=497 
      height=472></DIV><BR><BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV><BR><BR><BR>
      <H3>Graphics </H3>When working with graphics (pictures, diagrams, images) 
      the first thing to master in the environment is the <B>coordinate 
      system.</B> That is the 2-dimensional grid that defines locations on the 
      screen in terms of (x,y) coordinates. x is the horizontal position as 
      measured from the left edge and y is the vertical position as measured 
      from the top. (0,0) is the upper left-hand corner of the screen, form or 
      other container. <BR><BR>By default, all VB measurements are in 
      <B>twips</B>. A twip is 1/20 of a printer's point (of which there are 72 
      per inch). Thus, there are <B>1440 twips in an inch, 567 in a 
      centimeter</B>. The measurements refer to printed size; because there are 
      great variations between monitors, sizes may vary.<BR><BR>You can change 
      the units of measure yourself by setting the <B>ScaleMode property</B> for 
      objects or controls. <BR><BR>
      <DIV align=center>
      <TABLE width="70%">
        <COLGROUP>
        <COL span=2>
        <TBODY>
        <TR>
          <TD><B>ScaleMode&nbsp;</B></TD>
          <TD><B>Meaning&nbsp;</B></TD></TR>
        <TR>
          <TD>0&nbsp;</TD>
          <TD>User-defined.&nbsp;</TD></TR>
        <TR>
          <TD>1&nbsp;</TD>
          <TD>Twips - 1440 per inch.&nbsp;</TD></TR>
        <TR>
          <TD>2&nbsp;</TD>
          <TD>Points - 72 per inch.&nbsp;</TD></TR>
        <TR>
          <TD>3&nbsp;</TD>
          <TD>Pixels - number per inch depends on monitor.&nbsp;</TD></TR>
        <TR>
          <TD>4&nbsp;</TD>
          <TD>Characters - character = 1/6 inch high and 1/12 inch 
          wide.&nbsp;</TD></TR>
        <TR>
          <TD>5&nbsp;</TD>
          <TD>Inches.&nbsp;</TD></TR>
        <TR>
          <TD>6&nbsp;</TD>
          <TD>Millimeters.&nbsp;</TD></TR>
        <TR>
          <TD>7&nbsp;</TD>
          <TD>Centimeters.&nbsp;</TD></TR></TBODY></TABLE></DIV><BR><BR><B>Examples:<BR><BR>
      <DIV align=center>Me.ScaleMode = 5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B> 'sets 
      scale to inches for this form<BR><B>pic_EmployeePic.ScaleMode = 
      3</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'sets scale to pixels for 
      control</B></DIV><BR><BR><BR></DIV><BR><BR>
      <DIV class=para1>
      <H3>Adding Pictures</H3>You can display pictures in 3 places in your 
      application: 
      <UL type=DISC>
        <LI>On a form 
        <LI>In a picture box 
        <LI>In an image control </LI></UL><BR><BR>The <B>PictureBox</B> control 
      and the <B>Image</B> control are very similar in operation. However the 
      PictureBox is more flexible in its methods and properties and is the one 
      you should use most of the time. There is little use for the Image.<BR>In 
      all 3 cases you will display a picture contained in a graphics file (.BMP, 
      .GIF, .JPEG, .WMF, etc). The name of the file containing the picture will 
      be entered in the <B>Picture property </B>of the control or form.<BR>In a 
      form, the picture cannot be resized or moved, so it should be of the 
      correct size before you use it. The picture will serve as background and 
      other controls that you put on the form will be displayed over it.<BR>The 
      PictureBox's <B>AutoSize property</B> must be set to <B>True</B>, 
      otherwise the control's size will not change to accomodate the picture, as 
      in the example below.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb07f05.gif" width=366 
      height=238></DIV><BR><BR>In the above example the pictures were all added 
      to the controls at design time.<BR><BR>You can also insert or remove a 
      picture at run time. You use the <B>LoadPicture function</B>, as in: 
      <DIV align=center><B>pic_departmentlogo = 
      LoadPicture("C:\Pictures\acctnglogo.bmp")</B></DIV><BR>Removing the 
      picture is done with the LoadPicture function without a file name: 
      <DIV align=center><B>pic_departmentlogo = LoadPicture ("" 
      )</B></DIV><BR><BR>
      <H3>Drawing controls</H3>There are 2 controls in the toolbox which allow 
      you to draw directly on the form - the <B>Line control</B> and the 
      <B>Shape control</B>.<BR><BR>Both are easy to use and fairly obvious. The 
      main properties of each that have to be manipulated are: 
      <B>BorderColor</B> for the color of the line or shape and 
      <B>BorderStyle</B> to use a solid or dashed line.<BR><BR>In addition, the 
      Shape control has: <B>Shape</B> for rectangle, circle, etc., 
      <B>FillColor</B> and <B>FillStyle</B> to determine how the shape will be 
      filled and <B>BackStyle</B> for transparent or opaque.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb07f06.gif" width=412 
      height=287></DIV><BR><BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV><BR><BR><BR>
      <H3>Multimedia</H3>Multimedia refers to devices other than the screen or 
      the printer to play sounds, watch videos or record music. This is done 
      through the use of the <B>Multimedia control</B>. Don't look for it in the 
      toolbox, it's not there. It is an additional control that you must load. 
      <BR><BR>First, create anew form in Project Lesson7 and call it 
      "multimed.frm". Then, in the menu, at <B>Project --&gt; Components</B>, 
      find the item "<B>Microsoft Multimedia Control 6.0</B>" and check the box 
      next to it. Hit OK and that's it. The Multimedia control should now appear 
      in your toolbox. <BR><BR>If you select the multimedia control and put it 
      down on the form, you will have a button bar like all the ones you've seen 
      on CD players, recorders, etc. In the <B>DeviceType property</B> you 
      specify what type of device this control controls:<BR><BR>
      <DIV align=center>
      <TABLE width="70%">
        <COLGROUP>
        <COL span=2>
        <TBODY>
        <TR>
          <TD><B>DeviceType</B>&nbsp;</TD>
          <TD><B>Device</B>&nbsp;</TD></TR>
        <TR>
          <TD>CDAudio&nbsp;</TD>
          <TD>CD Audio player&nbsp;</TD></TR>
        <TR>
          <TD>DAT&nbsp;</TD>
          <TD>Digital audio tape player&nbsp;</TD></TR>
        <TR>
          <TD>Overlay&nbsp;</TD>
          <TD>Overlay&nbsp;</TD></TR>
        <TR>
          <TD>Scanner&nbsp;</TD>
          <TD>Scanner&nbsp;</TD></TR>
        <TR>
          <TD>Vcr&nbsp;</TD>
          <TD>Videotape player and recorder&nbsp;</TD></TR>
        <TR>
          <TD>Videodisc&nbsp;</TD>
          <TD>Videodisc player&nbsp;</TD></TR>
        <TR>
          <TD>Other&nbsp;</TD>
          <TD>Other devices not 
      specified&nbsp;</TD></TR></TBODY></TABLE></DIV><BR><BR>
      <H4>Example: a simple CD player</H4>We create a new form in Lesson7 and 
      call it multimed.frm. After adding the Multimedia control to the toolbox, 
      we put a MM control on the form. Since we will only be using the one MM 
      control, we'll leave its name as MMControl1. The only property we have to 
      change at this time is the <B>DeviceType</B>, to tell it that we are using 
      the CD player, so we write CDAudio in DeviceType. We add a few labels to 
      complete the form and we get:<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb07f07.gif" width=531 
      height=386></DIV><BR><BR>Now we have to write the code to operate the CD 
      player. <BR><BR>Before we start to write the code there are a few things 
      to know about the MM control. There is a <B>Track property</B> which 
      contains the number of the current track. But its most important property 
      is called the <B>Command property</B> and it can take on several values 
      that, in fact, operate the device.<BR><BR>
      <DIV align=center>
      <TABLE width="70%">
        <COLGROUP>
        <COL span=2>
        <TBODY>
        <TR>
          <TD><B>Command value</B></TD>
          <TD><B>Meaning</B></TD></TR>
        <TR>
          <TD>Open&nbsp;</TD>
          <TD>Opens the device&nbsp;</TD></TR>
        <TR>
          <TD>Close&nbsp;</TD>
          <TD>Closes the device&nbsp;</TD></TR>
        <TR>
          <TD>Eject&nbsp;</TD>
          <TD>Ejects the CD&nbsp;</TD></TR>
        <TR>
          <TD>Play&nbsp;</TD>
          <TD>Plays the device&nbsp;</TD></TR>
        <TR>
          <TD>Pause&nbsp;</TD>
          <TD>Pauses the device&nbsp;</TD></TR>
        <TR>
          <TD>Next&nbsp;</TD>
          <TD>Goes to next track&nbsp;</TD></TR>
        <TR>
          <TD>Prev&nbsp;</TD>
          <TD>Goes to beginning of current track. If used within 3 seconds of 
            most recent Prev, goes to beginning of previous track</TD></TR>
        <TR>
          <TD>Record&nbsp;</TD>
          <TD>Initializes recording&nbsp;</TD></TR>
        <TR>
          <TD>Save&nbsp;</TD>
          <TD>Saves the open device file&nbsp;</TD></TR>
        <TR>
          <TD>Seek &nbsp;</TD>
          <TD>Step backward or forward a track&nbsp;</TD></TR>
        <TR>
          <TD>Stop&nbsp;</TD>
          <TD>Stops the device&nbsp;</TD></TR>
        <TR>
          <TD>Step&nbsp;</TD>
          <TD>Step forward through 
      tracks&nbsp;</TD></TR></TBODY></TABLE></DIV><BR><BR>Understand that both 
      Track and Command are run-time properties because they are meaningless at 
      design time. For example, to open the CD player:<BR><B>MMControl1.Command 
      = "Open"</B> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'we assign the value "Open" to 
      the Command property<BR>To pause:<BR><B>MMControl1.Command = 
      "Pause"</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'we assign the value "Pause" to 
      the Command property<BR><BR>Now, as you have seen, the trick is to know 
      with which events to associate the code that has to be written. The first 
      one is fairly obvious: when we load the form, the <B>Form_Load event</B>, 
      we will open the device. Now, one we haven't used before. When we unload 
      the form, we will close the device. The reason is that, once launched, the 
      device will keep on playing, even if the form is closed. So, just click on 
      the <B>Form_Unload event</B> and write the code there. Finally, just to 
      see that things are running smoothly, we will use the StatusUpdate event 
      for the MM control to display the track being played every time the status 
      of MMControl1 changes (change track, pause, play are all status 
      changes).<BR>As you will see, once the CD starts playing, you can use the 
      buttons in the MM toolbar to control what it does.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb07f08.gif" width=410 
      height=338></DIV><BR><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb07f09.gif" width=313 
      height=268></DIV><BR><BR>You may notice that some of the buttons for the 
      CD Player are not used during play. If you want you can hide these buttons 
      from the control by using the <B>(Custom) property</B>. This will open an 
      editor window that will allow you to customize the MMControl.<BR><BR><IMG 
      border=0 src="images/LessonsImages/VBLessons/vb07f10.gif" width=631 
      height=359><BR><BR></DIV><BR><BR></DIV>
                                                <br />
                                                <br />
                                                
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
                <BR></DIV>
      </DIV><BR>
                                            <BR>
            <DIV align=right style="color: #00FF00">
                <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L6.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L8.aspx">Next &gt;&gt;</asp:LinkButton>
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

                                                <BR>
                                                <DIV align=right style="color: #00FF00">
                
