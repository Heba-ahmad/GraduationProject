<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="MSAccess_L1.aspx.cs" Inherits="_Default" %>

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
                                                    <SPAN class=author>to add comment, &amp; 
          to Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/MSAccess_L1.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                    style="width: 202px; height: 83px" /><br />
                &nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/MSAccess_Contents.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/MSAccess_Contents.aspx">Back to MS Access Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="MSAccess_L2.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 1 - Designing the application &amp; Creating the database.</H2>
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
                      <div class="title2">
                          Basic concepts                       </div>
                      <br />
                      This tutorial is on <b>Application Development with Microsoft Access.</b> Let's 
                      define what we will be doing:<br />
                      <br />
                      <ul>
                          <li><b>Application:</b> a series of programs or computer codes that execute tasks 
                              that a user wants done.<br />
                              <br />
                              Maintaining a list of your friends' addresses and phone numbers is a personal 
                              application.<br />
                              <br />
                              Producing the weekly payroll for 100 employees of a business is a commercial 
                              application.<br />
                              <br />
                              Running a computer model to forecast tomorrow's weather is a scientific 
                              application.<br />
                              <br />
                              We will look at <b>commercial</b>  applications only. We'll leave the scientific 
                              stuff to the people at M.I.T.</li>
                                                            </ul>
                                                        </UL>
                                                        <UL>
                                                            <LI><B>Development:</B> design, create, make, build all the parts of the 
        application.<BR>
                                                                <BR>Analyze: talk to the client (the user) to find-out 
        what he wants. If you don't have a user handy, use your imagination and 
        prior knowledge to guess what a user would want.<BR>
                                                                <BR>Design: create a 
        <B>model</B> of the system. A model is like a blueprint to a builder. It 
        is a drawing or a description of some kind of what the system will look 
        like when finished. When you determine how things will work and how 
        problems will be solved. You do that <B>before</B> you start to write 
        computer code.<BR>
                                                                <BR>Create: write the application using the software - 
        Access, in this case. And while you're creating you're also testing and 
        debugging to make sure that what you create works the way it's supposed 
        to work.<BR>
                                                                <BR>
                                                            <LI><B>Microsoft Access:</B> Access is part of Microsoft Office. 
        However, it is not included in the basic suite with Word and Excel. You 
        need to get <B>Microsoft Office Professional Edition</B> to have 
        Access.<BR>
                                                                <BR>Obviously, if you intend to do this tutorial we have to 
        assume that you have access to Access. It really is impossible to do 
        otherwise.<BR>
                                                                <BR>We are using Access 2000. You could do just as well 
        with Access 97. Any application created in Access 2000 can be converted 
        to the previous version of Access and any application created in Access 
        97 can be used in Access 2000. The sample applications are all in Access 2000.</LI
                                                            <LI></LI>
                                                            <LI>
      <DIV class=para1>
      <DIV class=title2>The "Video Store" </DIV>
          <BR>To illustrate how to use 
      Access in a commercial application we'll use a business that almost 
      everyone is somewhat familiar with: the local video rental 
      store.<BR><BR>Let's say that the store, <B>Mike's Video</B>, is going to 
      open for business in a few weeks and the owner, Mike, wants to have a 
      database application ready to go for opening day.<BR><BR>You, <B>the 
      Analyst</B>, will sit down with Mike and you will question him on what he 
      wants to get from the computer application. Then you will draw the plans 
      for the application, which we call <B>the model</B>, and you will check 
      with him again to make sure you haven't forgotten anything. Only then will 
      you actually start to write the application in Access.<BR>
      <DIV class=title2>Defining the application </DIV><BR>Why does Mike want a 
      database in the first place?<BR><BR>There are actually two main 
      reasons.<BR>
      <OL>
        <LI>This is rather obvious: he is going to be renting thousands of 
        movies to thousands of customers. There has to be a system in place to 
        track who has what movie, when it was rented, when it was returned, if 
        it was late, if it was lost, who to call to get it back, etc.<BR><BR>
        <LI>To succeed in business you have to <B>analyze </B>your business: Who 
        are your customers - men? women? old? young? What are they renting? 
        What's selling and what isn't? What do you have on the shelves that is 
        gathering dust? What are they asking for?<BR><BR></LI></OL>So, a 
      <B>well-designed</B> database application will meet both those 
      requirements. It will do the routine sales management and, it will allow 
      the user to do all the sales analysis he needs to do to make the business 
      prosper.<BR><BR>You have to keep both of those basic needs in mind when 
      you work on the design.<BR><BR></DIV>
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
      <DIV class=para1>
          <DIV class=title2>Commercial requirements design </DIV><BR>This is the 
      part where we identify what has to be done to make the application perform 
      all the commercial functions it has to have.<BR><BR>First, a word of 
      warning: Since you're just beginning with this, we'll keep the exercice 
      simple. We know that there are many functions that you can do in the video 
      store: rent DVDs, rent VHS movies, rent games, buy previously-viewed 
      movies, buy popcorn, chips and cola, rent machines, etc. We won't cover 
      all of those. Which is what you should be doing when you do it for real: 
      design the <B>core application</B> and get it working then, add other 
      functions to it. <BR>Our core application is to track the rentals of 
      movies, DVDs and games. We'll leave the popcorn and Pepsi for another 
      session.<BR><BR>The first thing you will discover is that there are 2 
      <B>entities</B> that you are working with. An <B>entity</B> is something 
      you keep data on, an object that acts on other objects.<BR><BR>In this 
      application they are: <B>Customers</B> and <B>Movies</B>. We'll use the 
      term "Movies" to describe our products even if they are DVDs or games or 
      whatever.<BR><BR>Now, take out your pencil and paper and make a list of 
      all the data, we call them <B>fields</B>, that you have to keep for each 
      entity. You should get something like this:<BR><BR>
      <TABLE border=2 cellSpacing=0 cellPadding=0 width="30%" bgColor=#ffffff>
        <TBODY>
        <TR>
          <TD><IMG src="images/LessonsImages/MSACCSSESLessons/acc0101.gif"> 
      </TD></TR></TBODY></TABLE>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      <TABLE border=2 cellSpacing=0 cellPadding=0 width="30%" bgColor=#ffffff>
        <TBODY>
        <TR>
          <TD><IMG src="images/LessonsImages/MSACCSSESLessons/acc0102.gif"> 
      </TD></TR></TBODY></TABLE><BR><BR><BR>Why do you need the customer's DOB? 
      If you want to analyze your sales by <B>age</B> you have to have it. Also, 
      maybe you'll want to send your best customers a card on their birthday. It 
      would be a nice touch!<BR><BR>Same with sex. You need it to analyze by 
      gender and maybe orient your publicity towards certain target 
      groups.<BR><BR>This assumes that you can get the information. <BR><BR>When 
      you ask the customer originally to fill-in a <B>membership form</B> you 
      will ask for that information. If the customer refuses to give it, that's 
      OK. You don't make a federal case out of it. But 95% of people will give 
      you what you ask for on the form.<BR><BR>For the movies, you keep what 
      might be important if it's not too much trouble to obtain it. 
      <BR><BR>Maybe customers will want to know what movies starring "Tom 
      Cruise" you have. Or Spielberg movies. Maybe there is a Film Studies 
      program at a college nearby and they will want to know which Hitchcock 
      movies from the 1960s you carry. <BR><BR>The idea of <B>Sales Analysis</B> 
      is that if you know your customers, you know their needs and you give them 
      what they want, they'll come back as customers. The more customers you 
      have, the more money you make. Simple, isn't it!<BR><BR>So, the database 
      is designed to store as much description of the customer and of the 
      product as possible. We can then use that information to build customer 
      profiles and to track daily or weekly or monthly sales and identify 
      patterns. As soon as something is starting to go off-track, the manager 
      can take corrective action.<BR><BR>This is just the beginning in your 
      career path to bigger and better databases.<BR><BR>Right now on the market 
      there are databases containing many <B>terabytes</B> of information (a 
      terabyte = 1,000 gigs). There are applications called <B>Data 
      warehousing</B> and <B>Data mining</B> that dig through those mountains of 
      data looking for shopping trends, customer buying patterns, etc. This is 
      going to be BIG!<BR>
          <br />
          <br />
<DIV align=center><A 
href="#top">Top</A></DIV>
      <DIV class=title2>Technical requirements design </DIV><BR>Now we look at 
      what we should put in so that the application works as smoothly as 
      possible with the computer - speed, error-checking, flexibility for future 
      growth, standard design practices.<BR><BR><BR>Here are the things 
      that you have to identify:<BR>
      <OL>
        <LI>The <B>primary key</B> for each table: the field that will identify 
        each individual in a unique way. Customers: First name? No - there are 
        thousands with the same First name. Same with Last Name. And City, and 
        State, etc. Phone number might be a candidate but, you may have 2 
        memberships in one family with the same phone.<BR><BR>So we'll create a 
        new field. We'll assign a unique ID to each customer when he registers. 
        Since the ID doesn't have to be anything in particular we'll make it 
        <B>autonumber</B>, meaning that the first customer will automatically 
        get ID=1, the second will be ID=2, etc.<BR><BR>Then we do the same for 
        Movies.<BR><BR>The <B>prime directive</B> for database design: <B>Every 
        table <U>must</U> have a primary key.</B><BR><BR>
        <LI><B>Lists</B>: any field that contains a limited list of items. 
        Obviously not First name or Last name. But <B>State</B> contains a list 
        of 50 items. <BR><BR>Identifying it as a List will help us down the 
        line. It will avoid errors: with a list you select from the list instead 
        of keying-in the state; if you want Maine, you select "ME" and you don't 
        risk entering "MA" by mistake. <BR><BR>And, if items are added to the 
        list, it can be done easily. That probably won't happen too often with 
        State (maybe Canada, eh!) but it will be more frequent with other 
        fields.<BR><BR>Other List fields will include: Sex, Credit card name, 
        Movie Category, Rating, Language.<BR><BR>The rule is: <B>any field that 
        can be a list, should be.</B><BR><BR>
        <LI><B>Default values</B>: the most common value for a field. If you 
        know that 70% of customers are from Springfield, make the default for 
        City = "Springfield". When you come to enter City for the customer, 70% 
        of the time you will just do Enter to accept the default value. It helps 
        cut down on mistakes.<BR><BR>
        <LI><B>Naming convention</B>: a standard format for field names in your 
        application. For example, I use the first letter of the table name as a 
        prefix for field name: c_custID for customer ID, c_Fname for customer 
        first name. <BR><BR>The reason is that eventually, when you get into 
        many tables, you will run into duplicate field names. If you create a 
        Supplier table, the Supplier may also have a First name. When you 
        program the application it will be a lot easier if you can tell one from 
        another at a glance: <B>c_Fname</B> will be Customer_First_name and 
        <B>s_Fname</B> will be Supplier_First_name. <BR><BR>Here, all Customers 
        fields start with <B>c_</B> and all Movies fields start with <B>m_</B>. 
        </LI>
                                                                        </OL>
          <p>
              &nbsp;</p>
<DIV align=center><A 
href="#top">Top</A></DIV>
                                                                        <BR>
      <DIV class=title2>The new "MikeVideo" database </DIV><BR><BR>To your 
      keyboards. <B>START ACCESS!</B><BR><BR>Do you want to open an existing 
      database or create a new one. If this is your first session, you want to 
      <B>create a new database</B>. <BR><BR>And, because you want to learn 
      something from the ground up, you <B>won't use the wizards,</B> pages and 
      projects which are the database-creation templates. <BR><BR>Once you've 
      mastered the concept, then you can use the shortcuts and let Access guide 
      you through the process.<BR><BR>
          <IMG 
      src="images/LessonsImages/MSACCSSESLessons/acc0301.gif" align="middle"><BR><BR><BR><BR><BR>
      <DIV class=para1>And again, to make it interesting, just choose General 
      Database.<BR><BR>
          <IMG 
      src="images/LessonsImages/MSACCSSESLessons/acc0302.gif" align="middle"><BR><BR><BR><BR>Choose a name for the 
      database and store it in a folder.<BR><BR>In Access, a database, no matter 
      how many tables or forms or reports it contains, is stored in a single 
      file. That file has the extension: .<B>mdb</B> (for <B>M</B>icrosoft 
      <B>d</B>ata<B>b</B>ase). When you want to move or copy or delete the 
      database, all you have to do is work with the one file.<BR><BR><IMG 
      src="images/LessonsImages/MSACCSSESLessons/acc0303.gif"><BR><BR><BR><BR>So far, you have an empty 
      database.<BR><BR>The first object you create to define the database is the 
      <B>table</B>.<BR><BR>A table is the description of an entity. It is used 
      to store the data. When you create the table you first describe its 
      <B>structure</B>. <BR><BR>A table in Access is sort of like a spreadsheet 
      in Excel: it consists of rows and columns. Only, it is more organized than 
      a spreadsheet and that organization will later allow you to retrieve the 
      data in all kinds of ways.<BR><BR><IMG 
      src="images/LessonsImages/MSACCSSESLessons/acc0304.gif"><BR><BR><BR>The <B>design view</B> of 
      the table is meant to define the <B>structure</B>.<BR><BR>You name all the 
      columns (in technical jargon they would be called <B>attributes of the 
      entity</B>). Remember to use the prefix for the table, in this case 
      <B>c_</B> because it's the <B>C</B>ustomers table.<BR><BR><IMG 
      src="images/LessonsImages/MSACCSSESLessons/acc0305.gif"><BR><BR><BR>Then, choose a <B>Data Type</B> 
      for each column.<BR><BR>The Data Type defines what kind of data will be 
      contained: text, numbers, URL, dates, etc. This lets the system know how 
      much memory to reserve and also, what you are allowed to do to the data. 
      For example, if you specify that a column is a "Number" type, you won't be 
      allowed to put "XYZ" in it.<BR><BR>To see the data types available, click 
      on the Data Type column and do F1 (the Help function). Here's what you 
      should get:<BR><BR><IMG alt="" src="images/LessonsImages/MSACCSSESLessons/acc0307.gif" width=660 
      height=615> <IMG alt="" src="images/LessonsImages/MSACCSSESLessons/acc0308.gif" width=662 height=531> 
      <BR><BR><BR>And here are the basic rules on how to use them:<BR>
      <UL>
        <LI>When you define a <B>primary key field</B> and it doesn't matter 
        what the format is, use <B>AutoNumber</B>. If the identifier is 
        formatted, like A9-1234, use <B>Text</B>.<BR><BR>
        <LI>When the data is a <B>date</B> of any kind, Date of birth, Date 
        hired, Invoice date, etc., you have to use the <B>Date/Time</B> data 
        type.<BR><BR>
        <LI>Most fields will be <B>Text</B>. Even a phone number (it contains a 
        dash), or department number that happens to be 101. <BR><BR>
        <LI>Use <B>Number</B> only for fields that will be used in calculations 
        (+ - * / ) like quantities or salaries. If it does not have to be 
        calculated, use <B>Text</B>. Even if the Department_number is 101, 
        define it as text: it's not the number one hundred and one, it's the 
        characters "1""0""1". Believe me, it will make your life easier.<BR><BR>
        <LI>Use <B>Memo</B> when the Text field may be too big. If you are doing 
        a Patients table for a Doctor, the <B>Diagnosis</B> field should be 
        Memo.<BR><BR>
        <LI>Whenever a field has only a yes/no answer, use the <B>Yes/No</B> 
        type. For example: Paid?, Member?, Active?<BR><BR></LI>
          </UL>
          <BR><BR>
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

      <SCRIPT type=text/javascript src="111_files/amm.js">
</SCRIPT>
      <BR><BR></DIV>
      <DIV align=center>
      <TABLE border=1 width="60%" bgColor=#ffffcc>
        <TBODY>
        <TR>
          <TD><BR><BR>
            <DIV class=para1>Before starting to enter data, you should define 
            the data formats in the <B>Windows Control Panel</B>.<BR><BR>Access 
            gets its formatting information from Windows. <BR><BR>If you want 
            dates to automatically display as YYYY-MM-DD, as you should, you set 
            that property in Windows.<BR><BR>The same for currency and number 
            formats. Different countries have different ways of displaying those 
            types so, you set them for your country in the Windows 
            environment.</DIV><BR><BR></TD></TR></TBODY></TABLE><BR><BR></DIV>The 
      <B>Properties</B> at the bottom will usually be acceptable for the data 
      type you selected.<BR><BR>But, to simplify things later there is one 
      property you should indicate: <B>Caption</B>. <BR><BR>The Caption is the 
      name that will show for the column on forms and reports and so on. If 
      there is no caption, the Field Name is used. So, if you want forms to show 
      "Customer ID" instead of c_custID, define the 
      caption.<BR><BR><BR><BR>Now, complete the Table, as defined in the 
      <B>model</B> from Lesson 2, adding all the fields required.<BR><BR>Before 
      you save the Table, make sure the <B>Primary key</B> is identified. To do 
      that, click on the grey button to the left of c_CustID and that should 
      select the whole row. Then click on the <B>key in the toolbar</B>. That 
      should put a little key symbol on the grey button, identifying that field 
      as the Primary key.<BR><BR>Save the table and, if this is the first Save, 
      it will ask you to name it (don't keep Table1 as a name!).<BR><BR><IMG 
      src="images/LessonsImages/MSACCSSESLessons/acc0306.gif"><BR><BR>
<DIV align=center><A 
href="#top">Top</A></DIV>
                                                                        <BR>Finally, <B>repeat the 
      whole process with the Movies table</B> and you will be well on your way. 
      <BR></DIV>
                                                                        <p>
                                                                            &nbsp;</p>
                                                                        <p>
                                                                            &nbsp;</p>
                                                                    </DIV></LI>
                                                        </UL>
      <DIV class=para1>
      <DIV class=title2> </DIV>
                                                            </DIV>
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
                    PostBackUrl="~/MSAccess_Contents.aspx">Back to MS Access Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/MSAccess_Contents.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/MSAccess_L2.aspx">Next &gt;&gt;</asp:LinkButton>
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
