<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="JavaScript_L5.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>JavaScript Tutorials</TITLE>
<META content="text/html; charset=windows-1256" http-equiv=Content-Type>
<META name=Description 
content="Lesson 1 on the VB IDE, the environment, creating a Project, creating a form">
<META name=Keywords 
content="VB 6, IT training, course, application, computer programming, file processing, database">
<META name=Distribution content=Global>
<META name=Rating content=General><LINK rel=StyleSheet type=text/css 
href="images\LessonsImages\JAVASCRIPTLessons\newstyles2.css">
<META name=GENERATOR content="MSHTML 8.00.6001.18904">
        <style type="text/css">
            .headline
            {
                margin-top: 0px;
            }
        </style>
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
        DestinationPageUrl="~/JavaScript_L5.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;<img alt="" src="images/JAVASCRIPT.PNG" 
                    style="width: 204px; height: 87px" />&nbsp;<br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/JavaScript_L4.aspx">&lt;&lt; 
                Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/JavaScript_Contents.aspx">Back to JavaScript Contents!</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="JavaScript_L6.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 5 - FRAMESET SCRIPT </H2>
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
                                                            <span class="text"><span class="fancyfirst">J</span>avascript can be a powerful 
                                                            addition to frames pages.<br />
                                                            <br />
                                                            <span class="fancyfirst">O</span>ne of the biggest disadvantages of frame based 
                                                            websites has been that you could not refer to your subpages, unless you wanted 
                                                            the visitor to open it oustside the frameset.<br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>ith javascript, you can create subpages that - 
                                                            if loaded outside the frameset - will load themselves into the frameset.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">T</span>hat's what the rest of this article is about.</span></p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <p>
                                                            &nbsp;</p>
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <p>
                                                            &nbsp;</p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            style="font-size: 22px; font-weight: bold; color: #800000">
                                                            THE TECHNIQUE</div>
                                                        <p>
                                                            &nbsp;</p>
                                                        <p>
                                                            <span class="text"><span class="fancyfirst">T</span>his script ensures that 
                                                            subpages aren't loaded outside a frameset.<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>f a visitor enters the url of a subpage - the 
                                                            script will make sure that the frameset is loaded with the subpage in one of the 
                                                            frames.<br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>e will need to enter a small script on both the 
                                                            frameset page and each of the subpages.<br />
                                                            <br />
                                                            <span class="fancyfirst">W</span>hat actually happens is this:<br />
                                                            <br />
                                                            <span class="fancyfirst">I</span>f a subpage is loaded outside the frameset, the 
                                                            script on the subpage will detect it and load the frameset instead.
                                                            <br />
                                                            <br />
                                                            <span class="fancyfirst">O</span>nce the frameset is loaded, the script on the 
                                                            frameset page will load the referring subpage into the correct frame window.<br />
                                                            </span></p>
            <DIV align=center><A 
            href="#top">Top</A></DIV>
                                                        <p>
                                                            &nbsp;</p>
                                                        <div align="center" class="headline" 
                                                            
                                                            style="font-size: 22px; font-weight: bold; color: #800000; background-color: #FFFFFF;">
                                                            THE CODE<br />
                                                        </div>
                                                        <span class="text"><span class="fancyfirst">A</span>s mentioned on the previous 
                                                        page, you need to enter a small script in the <span class="style2">&lt;head&gt;</span> 
                                                        section of both your subpages and your frameset page.<br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">T</span>HE CODE FOR THE SUB PAGES</span><br />
                                                        The script to copy and paste to the &lt;HEAD&gt;-section of your subpages looks like 
                                                        this:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;HEAD&gt;<br />
                                                                                <br />
                                                                                <span class="style1">&lt;script&gt;<br />
                                                                                function detect()<br />
                                                                                {<br />
                                                                                framesetpage=&quot;myframeset.htm&quot;;<br />
                                                                                thispage=window.location.href;<br />
                                                                                if (thispage.indexOf('://')&lt;0) {thispage=&quot;://&quot;+thispage;};<br />
                                                                                prefix=thispage.substring(0,thispage.lastIndexOf('://'));<br />
                                                                                suffix=thispage.substring(thispage.lastIndexOf('://')+3,thispage.length);<br />
                                                                                // alert('the subpage is:['+prefix+']['+suffix+']');<br />
                                                                                if (parent.location.href==window.location.href) 
                                                                                {parent.location.href=framesetpage+&quot;?&quot;+prefix+&quot;&amp;&amp;&amp;&quot;+suffix};<br />
                                                                                }<br />
                                                                                &lt;/script&gt;</span><br />
                                                                                &lt;/HEAD&gt;<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>ustomize this line to fit your own pages 
                                                        (replace myframeset.htm with the name of your own frameset page.):
                                                        <br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->framesetpage=&quot;<span class="style1">myframeset.htm</span>&quot;;<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n addition to adding the above script, you also 
                                                        need to add an onLoad-event to the <span class="note">&lt;BODY&gt;</span>-tag.<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;BODY <span class="style1">onLoad=&quot;detect()&quot;</span>&gt;<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>hat's it. After adding this piece of code to 
                                                        each of your subpages you're can proceed to the final step: adding a code-piece 
                                                        to the frameset-page itself.<br />
                                                        <br />
                                                        <span class="fancyfirst">B</span>efore describing the code to add to the 
                                                        frameset-page, we will explain how the code for the subpages works.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">H</span>OW IT WORKS</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his line detects if the page is loaded into a 
                                                        frameset:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->if (parent.location.href==window.location.href)
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="note"><span class="style4">parent.location.href</span></span> 
                                                        returns the url of the parent frame.<br />
                                                        <span class="note"><span class="style4">window.location.href</span></span> 
                                                        returns the url of the current page.<br />
                                                        <br />
                                                        <span class="fancyfirst">N</span>ow, if these two are the similar it means that 
                                                        there are no parent frames: the current page is the top page.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>n that case, this line is executed:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->
                                                                                parent.location.href=framesetpage+&quot;?&quot;+prefix+&quot;&amp;&amp;&amp;&quot;+suffix;
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>t opens the frameset page similar to if you had 
                                                        entered <span class="note">
                                                        http://www.yourdomain.com/framespage.htm?http&amp;&amp;&amp;www.yourdomain.com/subpage.htm</span><br />
                                                        in the url box of your browser.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he trick of this entire script is that the 
                                                        script on the framespage can access the entry that follows the
                                                        <span class="style2">?</span> through the javascript built-in <span class="note">
                                                        <span class="style4">window.location.search</span> object</span>.<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>hat is how the information is passed to tell 
                                                        the frameset page which subpage to load.<br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">T</span>HE CODE FOR THE FRAMESET 
                                                        PAGE</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his is the script to copy and paste to the 
                                                        frames page:<br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->&lt;HTML&gt;<br />
                                                                                &lt;HEAD&gt;<br />
                                                                                &lt;TITLE&gt;MyFramesPage&lt;/TITLE&gt;<br />
                                                                                <span class="style1">&lt;SCRIPT LANGUAGE=&quot;JavaScript&quot;&gt;<br />
                                                                                &lt;!--<br />
                                                                                defaultsubpage=&quot;defaultsub.htm&quot;;<br />
                                                                                if (location.search) {subpage=location.search.substring(1)}<br />
                                                                                else {subpage=defaultsubpage}<br />
                                                                                <br />
                                                                                if (subpage.indexOf('&amp;&amp;&amp;')&gt;=0) {<br />
                                                                                prefix=subpage.substring(0,subpage.indexOf('&amp;&amp;&amp;'))+&quot;://&quot;;<br />
                                                                                suffix=subpage.substring(subpage.indexOf('&amp;&amp;&amp;')+3,subpage.length);<br />
                                                                                subpage=prefix+suffix;<br />
                                                                                }<br />
                                                                                // --&gt;<br />
                                                                                &lt;/SCRIPT&gt;</span><br />
                                                                                &lt;/HEAD&gt;<br />
                                                                                <br />
                                                                                <br />
                                                                                <br />
                                                                                <span class="style1">&lt;SCRIPT&gt;<br />
                                                                                document.write('&lt;FRAMESET COLS=&quot;50%,50%&quot;&gt;');<br />
                                                                                document.write('&lt;FRAME SRC=&quot;navpage.htm&quot; NAME=&quot;nav&quot;&gt;');<br />
                                                                                document.write('&lt;FRAME SRC=&quot;'+subpage+'&quot; NAME=&quot;main&quot;&gt;');<br />
                                                                                document.write('&lt;/FRAMESET&gt;');<br />
                                                                                &lt;/SCRIPT&gt;</span><br />
                                                                                <br />
                                                                                &lt;/HTML&gt;<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>ustomize the frameset values to fit your own 
                                                        page.<br />
                                                        <br />
                                                        <span class="fancyfirst">Y</span>ou need to customize this one line:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->defaultsubpage=&quot;<span class="style1">defaultsub.htm</span>&quot;;<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        Replace <span class="note">defaultsub.htm</span> with the name of your own 
                                                        default page for the frameset.<br />
                                                        <br />
                                                        <span class="fancyfirst">A</span>lso note, that in this line:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->document.write('&lt;FRAME SRC=&quot;'+subpage+'&quot; NAME=&quot;<span 
                                                                                    class="style1">main</span>&quot;&gt;');<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="style4">main</span> is the name of the &quot;intelligent&quot; frame. You can 
                                                        pick any name you want for the frame, we just used the name <span class="style4">
                                                        main</span> for our example.
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <hr align="center" width="300" />
                                                        <br />
                                                        <br />
                                                        <span class="style4"><span class="fancyfirst">H</span>OW IT WORKS</span><br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>hese lines detects if a value was passed to the 
                                                        frameset page following a ? in the url:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->if (location.search) 
                                                                                {subpage=location.search.substring(1)}<br />
                                                                                else {subpage=defaultsubpage}<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>f a value was entered after a
                                                        <span class="style2">?</span> in the url, then the script returns the value. 
                                                        Otherwise it returns the name you entered for the default page to load (in our 
                                                        example it would be &quot;defaultsub.htm&quot;).<br />
                                                        <br />
                                                        <span class="fancyfirst">N</span>ow, if this page was called from a subpage that 
                                                        was loaded outside of the frameset, then the url would look something like this:
                                                        <br />
                                                        <br />
                                                        <span class="note">
                                                        http://www.yourdomain.com/framespage.htm?http&amp;&amp;&amp;www.yourdomain.com/subpage.htm</span><br />
                                                        <br />
                                                        <span class="fancyfirst">F</span>or technical reasons the subpage doesn't pass 
                                                        the URL of the subpage as is. It uses &amp;&amp;&amp; instead of the normal :// that you 
                                                        usually see in a URL. (The reason is that netscape can't pass these values in a 
                                                        querystring).<br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>his url based on <span class="note">&amp;&amp;&amp;</span> 
                                                        is translated into a real url by these lines at the top of our script:<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="background-color: #FFFFFF" width="450">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->if (subpage.indexOf('&amp;&amp;&amp;')&gt;=0) {<br />
                                                                                prefix=subpage.substring(0,subpage.indexOf('&amp;&amp;&amp;'))+&quot;://&quot;;<br />
                                                                                suffix=subpage.substring(subpage.indexOf('&amp;&amp;&amp;')+3,subpage.length);<br />
                                                                                subpage=prefix+suffix;<br />
                                                                                }<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he final part of our script is the
                                                        <span class="note">document.write</span> lines that writes the HTML for the 
                                                        frameset.<br />
                                                        <br />
                                                        <table align="center" bgcolor="#000000" border="0" cellpadding="3" 
                                                            cellspacing="1">
                                                            <tr>
                                                                <td bgcolor="#99aa99">
                                                                    <table bgcolor="#000000" border="0" cellpadding="2" cellspacing="1" 
                                                                        style="height: 70px; width: 450px; background-color: #FFFFFF;">
                                                                        <tr>
                                                                            <td class="table1">
                                                                                <!-- perl mysql php web host -->document.write('&lt;FRAMESET COLS=&quot;50%,50%&quot;&gt;');<br />
                                                                                document.write('&lt;FRAME SRC=&quot;navpage.htm&quot; NAME=&quot;nav&quot;&gt;');<br />
                                                                                document.write('&lt;FRAME SRC=&quot;'+<span class="style1">subpage</span>+'&quot; 
                                                                                NAME=&quot;main&quot;&gt;');<br />
                                                                                document.write('&lt;/FRAMESET&gt;');</td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- perl mysql php web host-->
                                                        <br />
                                                        <br />
                                                        <span class="fancyfirst">T</span>he variable <span class="note">subpage</span> 
                                                        either contains the url of the default page or - if the frameset was launched by 
                                                        a subpage - the url of the subpage to load into the &quot;intelligent&quot; frame.<br />
                                                        </span>
                                                        <div align="center" class="headline">
                                                            <br />
                                                        <div align="center" class="headline" 
                                                            
                                                                style="font-size: 22px; font-weight: bold; color: #800000; background-color: #FFFFFF;">
                                                            EXAMPLE<br />
                                                            <br />
                                                            </div>
                                                        </div>
                                                        <span class="text"><span class="fancyfirst">T</span>o let you try out the 
                                                        scripts we produced a sample page.<br />
                                                        <br />
                                                        <span class="fancyfirst">I</span>t consists of four files:<br />
                                                        <ul>
                                                            <li><span class="style4">framespage.htm</span>--The page that declares the frameset.
                                                                <br />
                                                            </li>
                                                            <li><span class="style4">navpage.htm</span>--The page that is loaded into the left 
                                                                frame window.
                                                                <br />
                                                            </li>
                                                            <li><span class="style4">defaultsub.htm</span>--The defaultpage to be loaded into 
                                                                the right frame window.<br />
                                                            </li>
                                                            <li><span class="style4">subpage.htm</span>--A secondary page that can be loaded 
                                                                into the right frame window.<br />
                                                            </li>
                                                        </ul>
                                                        <br />
                                                        <span class="fancyfirst">T</span>he most interesting page is
                                                        <span class="style2">subpage.htm.</span><br />
                                                        Although it is not a default page declared in the frameset, it will be opened 
                                                        within the frameset if we try to open it.<br />
                                                        <br />
                                                        <span class="fancyfirst">W</span>hen you click the links to the sample page, it 
                                                        will open in a new window. Just close that window to return back here.<br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>lick to open
                                                        <a href="http://www.echoecho.com/framespage.htm" target="&quot;_blank&quot;">
                                                        <span class="link">framespage.htm</span></a>.
                                                        <br />
                                                        It will open the frameset in the ordinary way.<br />
                                                        <br />
                                                        <span class="fancyfirst">C</span>lick to open
                                                        <a href="http://www.echoecho.com/subpage.htm" target="&quot;_blank&quot;">
                                                        <span class="link">subpage.htm</span></a>.<br />
                                                        It will try to open subpage outside the frameset.
                                                        <br />
                                                        As you will see, the script ensures that the page gets opened within the 
                                                        frameset instead.<br />
                                                        <br />
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
                    InsertCommand="INSERT JavaScript_tblComments (Name,Comments,Rating,Date) VALUES (@Name, @Comments, @Rating, @Date)" 
                    
                      
                      
                      SelectCommand="SELECT [Name], [Comments], [Rating], [Date] FROM [JavaScript_tblComments]">
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
                <asp:LinkButton ID="LinkButton8" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/JavaScript_Contents.aspx">Back to JavaScript Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/JavaScript_L4.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/JavaScript_L6.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
                                            <br />
                                            <br />
                                            <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </TD></TR></TBODY></TABLE>
      <SCRIPT type=text/javascript>
var dc_UnitID = 14;
var dc_PublisherID = 9313;
var dc_AdLinkColor = '#009600';
var dc_adprod='ADL';
</SCRIPT>

     </DIV></TR></TBODY></TABLE>
    </form>
</BODY></HTML>
