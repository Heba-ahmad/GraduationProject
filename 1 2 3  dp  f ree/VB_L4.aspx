<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="VB_L4.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>Visual Basic 6 Tutorials Lesson 4</TITLE>
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
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<A title="SignUp" 
  href="Signup.aspx">Signup</A>                                
                                                    <SPAN class=author>to add comment, &amp; 
          to Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/VB_L4.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                style="background-image: url('images/tabletop_gradient.gif'); height: 108px;">
                &nbsp;&nbsp;&nbsp;
                <img alt="" src="images/VB6.JPG" style="width: 204px; height: 72px" /><br />
                                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L3.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L5.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 4 - Standard controlscontrols</H2>
                        <BR></DIV>
      <DIV class=para1>
      <TABLE border=0 cellSpacing=0 cellPadding=10 width="90%" align="left">
        <TBODY>
        <TR>
          <TD><BR><BR>
            <DIV></DIV><BR><BR><BR></TD>
          <TD align="left">
      <DIV align=center>
      <TABLE width="40%" bgColor=#ccffff>
        <TBODY>
        <TR>
          <TD>
            <DIV class=para6>For more information and special deals related to 
            any of the issues on this page, place your cursor over the 
            double-underlined links. <BR>All information supplied by 
            Kontera.com.</DIV></TD></TR></TBODY></TABLE></DIV>
                                            <COLSPAN="2">
                                            <br />
      <DIV class=para1>
          <BR>For this lesson 
      we will need a <B>new Project</B>, call it <B>Lesson4.vbp</B>, which will 
      only be used to create and try out various controls.<BR><BR>To refresh 
      your memory, since the previous two lessons have been rather theoretical, 
      you select the New tab, and Standard EXE for the type. As soon as 
      The Form opens, you <B>Save</B> the new Project, <B>give the Form a 
      name</B>, let's say it's Lesson4.frm and then you <B>give the Project a 
      name:</B> Lesson4.vbp. Note that you do not have to specify the 
      extensions, .frm and .vbp, because they will be assigned automatically. 
      <BR><BR>
      <H3>The Form</H3>We covered it too briefly in Lesson1 so we'll go over it 
      again. The Form is the first object you see when you Open the application. 
      It is the window into which all the controls will appear, where you will 
      input data and see results.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb04f01.gif" width=561 
      height=359></DIV><BR><BR>There's not too much you can do with the form, at 
      this time. Basically, you adjust the <B>BackColor</B> and the 
      <B>StartUpPosition</B> (where it will open on the screen when you Run it) 
      and then you start putting controls on it. <BR>
          <br />
      <H3>The Label</H3>This is probably the first control you will master. It 
      is used to display static text, titles and screen output from operations. 
      The important properties to remember: 
      <UL>
        <LI>Caption - the text that is displayed in the label<BR>
        <LI>BackColor and ForeColor - colors of the background and the text<BR>
        <LI>BackStyle - Opaque or Transparent - whether the background is 
        visible or not<BR>
        <LI>Font - font and size of text<BR>
        <LI>Alignment - text centered, left or right<BR>
        <LI>Multiline- True or False - if True, you can have several lines of 
        text, delimited by &lt;CR&gt; in the label - by default, it is set to 
        False<BR></LI></UL>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb04f02.gif" width=565 
      height=236></DIV><BR><BR>
      <H3>Frame</H3>
      <H3>PictureBox</H3>When you want to group several controls together - name 
      and address, for example - you use a <B>Frame</B>. The frame backcolor can 
      be the same as the form's and only the frame borders will be obvious, or 
      it can be a different color and stand out. <BR><BR>You create the frame 
      before the controls. When you create controls in a frame, they are tied to 
      the frame and move with it. The frame caption is the text that appears at 
      the top of the frame - you use it to define the group. <BR><BR>The 
      <B>PictureBox</B> is like a Label with a picture in it instead of text. 
      The <B>Picture property</B> determines the name of the file, .BMP or .GIF, 
      that will be displayed. It can be used for a company logo, etc.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb04f03.gif" width=622 
      height=300></DIV><BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV><BR><BR>
      <H3>TextBox</H3>
      <H3>CommandButton</H3>The TextBox is like a Label but, it is used to input 
      data into the program. The data typed in is in the <B>Text</B> property of 
      the control. <BR><BR>When the program is Run, only the controls that can 
      be manipulated will be activated. For example, if the form contains 3 
      Labels, 3 TextBoxes and 3 Buttons, when it is Run, the cursor will not 
      stop at the labels. <BR><BR>When the user hits the Tab key, the cursor 
      will go to the first TextBox or Button - not necessarily the first one on 
      the form but, the first one that was created. That is called the <B>Tab 
      order</B> and you have to specify it. <BR><BR>On the form there is only 
      one control at any given time that has the cursor on it - it is said to 
      have <B>Focus</B>. If you type data, the control with Focus will receive 
      it. You change the Focus with Tab or by clicking on a different 
      control.<BR><BR>
      <DIV align=center>
      <TABLE width="70%" bgColor=#ffffcc>
        <COLGROUP>
        <COL>
        <TBODY>
        <TR>
          <TD>Up until now we haven't bothered with the names of controls (the 
            Name property). Once we start to code, however, it does become 
            important. There are all kinds of occasions in code where you have 
            to call upon a certain control. It can get very confusing when your 
            12 buttons are called Command1...Command12. What did Command7 do, 
            again? Give each control a name (except for titles, etc. that you 
            never refer to) so that you will be able to identify it easily. It 
            is recommended that you use a prefix when assigning a name; cmd for 
            a CommandButton, lbl for a Label, txt for a TextBox. Thus, txtNumber 
            where you input the value can be distinguished from lblNumber where 
            you display the result.&nbsp;</TD></TR></TBODY></TABLE><BR><BR></DIV>The 
      CommandButton is used to initiate actions, usually by clicking on it. The 
      Caption property determines the text to display on the face of the button. 
      The <B>Default</B> property, if set to true, means that the button will be 
      activated (same as Clicked) if the &lt;Enter&gt; key is hit anywhere in 
      the form. If <B>Cancel</B> is set to True, the button will be activated 
      from anywhere in the form by the &lt;Esc&gt; key.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb04f04.gif" width=495 
      height=270></DIV><BR><BR>Hopefully, you have now run this program several 
      times, each time you added a new control, in fact. Admittedly, nothing 
      much happened except to confirm that the controls were appearing in the 
      right place on the form.<BR><BR>Here now is an example of the code we 
      could write to perform simple tasks: input name and city and display the 
      information in a label when the Continue button is clicked. The Exit 
      button will end execution of the program and the Cancel button (or the Esc 
      key) will clear the fields.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb04f05.gif" width=477 
      height=475></DIV><BR><BR>A few explanations: the Form_Load event occurs 
      when the form first opens. This is where we initialize things - we want 
      the TextBoxes and the result Label to be empty when we start off so, we 
      set them to a blank space. <BR><BR>The actual processing is done after the 
      data have been entered and we hit the Continue button. The processing 
      logic is put in the Continue_button_clicked event.<BR><BR>When you hit the 
      &lt;Esc&gt; key or you click on the Cancel button, you want to annul the 
      entry you're doing and start over again. That's the same as opening the 
      form so, we just tell the program to execute the Form_Load procedure which 
      we already have.<BR><BR>The Exit button uses the <B>pronoun Me</B> to 
      Unload. <B>Me</B> means <B>the form currently active</B> without having to 
      name it. <BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV><BR><BR><BR>
      <DIV align=center>
      <TABLE width="70%" bgColor=#ffffcc>
        <COLGROUP>
        <COL>
        <TBODY>
        <TR>
          <TD>
            <DIV align=center><B>Multiple forms</B></DIV><BR><BR>For the next 
            series of examples we will use a new Form. It is not necessary to 
            create a new Project; any Project can have several Forms in 
            it.<BR><BR>With the Project open on the current Form, go to: Menu 
            --&gt; Project --&gt; Add form. Select New form in the creation 
            window and, voila! Next time you save the Project, it will ask you 
            to name this new Form. You can name it Lesson4B.frm for 
            example.<BR><BR>One more detail: when you Run the Project, you want 
            to tell it which Form to open. <BR><BR>Go to the <B>Project Manager 
            window</B>, right click on the Project name and select <B>Project 
            properties</B>. In the Project properties window, the ListBox on the 
            right says "<B>Startup object</B>". Select the Form you want to open 
            when you Run. You can change the Startup object at any time to run 
            the different forms that you 
      created.&nbsp;</TD></TR></TBODY></TABLE></DIV><BR><BR><BR>
      <H3>Check boxes</H3>
      <H3>Option buttons</H3>These two controls are used when the user must 
      choose from a list of options. The difference between the two is that with 
      Check boxes he can select several at one time but, with Option buttons, he 
      must select only one among several.<BR><BR>The example below illustrates 
      the use of Check boxes and Option buttons. To capture the information 
      entered by means of these controls, you must test the <B>property: 
      Value.</B> In a Check box, <B>Value = 1 if box is checked and = 0 if 
      not.</B> In an Option button, <B>Value = True if selected and = False if 
      not.</B><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb04f06.gif" width=338 
      height=438></DIV><BR><BR>The code, although somewhat long, is not very 
      complicated. Most of the time, processing consists of checking the content 
      of .Value. It is fairly standard procedure, especially with Option 
      buttons, to ensure that at least one button has been selected and to 
      display an error message if it has not.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb04f07.gif" width=395 
      height=263></DIV><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb04f08.gif" width=465 
      height=366></DIV><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb04f09.gif" width=504 
      height=377></DIV><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb04f10.gif" width=472 
      height=404></DIV><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb04f11.gif" width=432 
      height=150></DIV><BR><BR><BR>
      <H3>Assignment 3</H3>Create the Payroll form shown below. Number of hours 
      must be entered as well as the appropriate rate. Gross salary = rate * 
      hours. Net salary = gross salary - deductions.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb04f12.gif" width=380 
      height=409></DIV>
          <br />
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
                  <br />
                  <br />
                  <p>
                  </p>
                  <p>
                  </p>
</p>
          </asp:Panel>

              <br />
                                            <BR></DIV><BR>
      <DIV align=center>
      </DIV><BR>
                     
                     
                     
                     <br />
         
                                 <BR>
            <DIV align=right style="color: #00FF00">
                <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                                            </DIV><BR>
            <DIV align=center style="background-image: url('images/tabletop_gradient.gif')">
                &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L3.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L5.aspx">Next &gt;&gt;</asp:LinkButton>
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
