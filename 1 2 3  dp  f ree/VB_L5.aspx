<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="VB_L4.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML><HEAD><TITLE>Visual Basic 6 Tutorials Lesson 5</TITLE>
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
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<A title="SignUp" 
  href="Signup.aspx">Signup</A>                                
                                                    <SPAN class=author>to add comment &amp; 
          to Rate The Tutorials YOU Like!<br />
          <span> 
    <asp:Login ID="Login1" runat="server" Font-Bold="False" Font-Overline="False" 
        Width="507px" Height="34px" 
        PasswordLabelText="Password: " PasswordRecoveryText="Forgot your Password?!" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
        DestinationPageUrl="~/VB_L5.aspx" DisplayRememberMe="False" Font-Names="Calibri" 
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
                &nbsp;&nbsp;&nbsp;<img alt="" src="images/VB6.JPG" 
                    style="width: 204px; height: 72px" /><br />
&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L4.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" BorderStyle="None" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#00A600" 
                    PostBackUrl="~/VB_Contents.aspx">Back to VB6 Contents!</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L6.aspx">Next &gt;&gt;</asp:LinkButton>
                                            <br />
                                            <br />
              </DIV>
        </DIV>
        <DIV align=center>
        <H2>LESSON 5 - More standard controls</H2>
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
            <DIV class=para1>
            <H3>Working with arrays</H3>
            <DIV align=center>
            <TABLE width="40%" bgColor=#ccffff>
              <TBODY>
              <TR>
                <TD>
                  <DIV class=para6>For more information and special deals 
                  related to any of the issues on this page, place your cursor 
                  over the double-underlined links. <BR>All information supplied 
                  by Kontera.com.</DIV></TD></TR></TBODY></TABLE></DIV><BR><BR>Before 
            we get to today's lesson on common controls, we will cover a bit of 
            programming theory on Arrays.<BR>In VB, arrays work in much the same 
            way as they do in all other languages you have studied. By 
            definition an array is <B>an indexed variable</B>, meaning it is one 
            variable with many parts, each part being referenced by an index 
            number. The index number being numeric, it can be manipulated by 
            loop statements, incremented, decremented, etc. An array can contain 
            any valid data type and, if it is of the Variant type, can even 
            contain elements of different types.<BR>An array is declared like 
            any other variable, with the addition of an index:<BR><BR><B>
            <DIV align=center>Dim Department(6) As String</DIV></B><BR>will 
            declare an array of 7 elements of the String type (we assume that it 
            will be 7 Department names). The only problem with this declaration 
            is that the index goes from 0 to 6. So, if you want the name of the 
            sixth Department you have to specify Department(5), which can be 
            confusing at times.<BR>To work around this problem you can specify 
            the starting index in the declaration:<BR><BR>
            <DIV align=center><B>Dim Months(1 To 12) As 
            String</B></DIV><BR>Thus, Months(1) is January and Months(12) is 
            December.<BR>You don't even have to start at 1. If your Sections are 
            numbered 101 - 120 you can define an array: <BR><BR>
            <DIV align=center><B>Dim Sections(101 To 120) As 
            Integer</B></DIV><BR>One common method of manipulating arrays is to 
            use For...Next loops:<BR><BR>
            <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb05f01.gif" width=468 
            height=308></DIV><BR>
                <br />
                <BR>An array can also be assigned to a variable in code. Look at the following 
                example and understand that that is <B>not an implicit 
      declaration</B>. The variable "Week" is declared as Variant. It is 
      assigned an <B>array value</B> in code.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb05f02.gif" width=508 
      height=112></DIV><BR><BR>Now, when we get to the next set of controls, 
      different kinds of Lists, these notions may prove useful.<BR><BR><BR>
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
      <H3>ListBox</H3>With the ListBox control the user can select items from a 
      list of choices. Although the list of choices can be entered in the List 
      property of the control, as in the example below, this is not a very good 
      habit to get into. It is essentially "hardcoding" data into the program 
      and it can cause maintenance headaches. <BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb05f03.gif" width=416 
      height=295></DIV><BR><BR>The common technique for loading a ListBox is to 
      do it in code, with the Form_Load event. This way, if items have to be 
      added it is a simple matter to add a line of code.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb05f04.gif" width=409 
      height=204></DIV><BR><BR>
      <DIV align=center>
      <TABLE width="70%" bgColor=#ffffcc>
        <COLGROUP>
        <COL>
        <TBODY>
        <TR>
          <TD>It is sometimes difficult to distinguish an object's Properties 
            and its Methods. In the example above we used lst_team.AddItem. What 
            is AddItem? It is a Method. How do I know? Well, to tell them apart, 
            think of grammar. A property is a characteristic, something that the 
            object is, a color, a size - it is like an adjective. A Method is an 
            action, something that it does, in fact, a verb. When you see 
            object.something_descriptive, it is a Property. When you see 
            object.some_action, it is a 
      Method.<BR>&nbsp;</TD></TR></TBODY></TABLE><BR><BR></DIV>In the example 
      shown, <B>AddItem is a Method </B>because it is the action of adding items 
      to the ListBox.<BR>If you wanted to remove an item from the list in code, 
      there is a <B>RemoveItem Method</B> for the ListBox. lst_team.RemoveItem 2 
      would remove the 3rd team - remember that it starts at 0.<BR>When the Form 
      opens, it will load the list in Form_load before the ListBox is displayed. 
      If there are too many items for the space allocated to the ListBox, it 
      will create a vertical scroll bar. <BR>When the user selects one of the 
      teams from the list, we have to have a way of capturing that information 
      in a variable. That is done with the Text property of the ListBox: 
      <DIV align=center><B>TeamName = lst_team.Text</B></DIV>
      <H3>ComboBox</H3>The ComboBox is called that because it's a combination of 
      a ListBox and a TextBox. It has the advantage over the ListBox of not 
      taking up space until it is actually used which means that it makes it 
      easier to position on the Form.<BR>But the combo has the disadvantage, 
      sort of, that the user can enter his own information, in addition to what 
      is in the list. This may make data validation harder because the choices 
      are not limited. When you want to force the user to make a choice only 
      among the specified items, use a ListBox, even if it is a bit more 
      awkward. If the user is allowed to override the choices, uses a 
      ComboBox.<BR>As in the ListBox, use the <B>Text</B> property to get the 
      information input. 
      <DIV align=center><B>Label3.Caption = cbo_position.Text</B></DIV><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb05f06.gif" width=317 
      height=387></DIV><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb05f07.gif" width=477 
      height=394></DIV><BR><BR>As you can see, it is fairly simple to load the 
      ListBox and the ComboBox during the From_Load event. The only other detail 
      to note is that the order in which the items appear in the Combo is not 
      the same as the order in which the items were added. That is intentional - 
      it is done with the <B>Sorted</B> property for the ComboBox. It can also 
      be done for the ListBox.<BR><BR><BR>
      <DIV align=center><A 
      href="#top">Top</A></DIV><BR><BR><BR>
      <H3>DriveListBox, DirListBox, FileListBox</H3>For this next example we 
      need to create a new form, Form2, in the current 
      Project.<BR><BR><B>Specifications:</B> While in Form1, the Registration 
      form, we need to be able to hit a button which will call-up a new form, 
      the DirList form, which will look like the example below. This form will 
      allow us to select a type of file that we want to see and then to select a 
      file, in a directory, in a drive that will be specified. If the file 
      selected is an executable, we will run the file. If it is a text file we 
      will call-up Notepad to edit it, and if it is a graphics file we will 
      call-up the image editor.<BR>In fact, this allows us to call an external 
      program from inside a form. If, for example, we wish to edit the player's 
      picture before storing it, we can open the picture file with the image 
      editor, change it, and continue with the rest of the form.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb05f08.gif" width=494 
      height=266></DIV><BR><BR>There are 3 new controls on this form, plus the 
      buttons and the ListBox. Since you almost always have only one of each of 
      those controls on the form, we won't bother to change the names of the 
      controls in this example - we keep them as: Drive1, Dir1, and 
      File1.<BR><BR>The control that shows the current drive is called a 
      <B>DriveListBox</B>. The name of the active drive is in the control's 
      <B>Drive</B> property. The selected drive can be changed, in code, by 
      writing: <B>Drive1.Drive = "D:"</B>, for example.<BR><BR>
      <DIV align=center>
      <TABLE width="70%" bgColor=#ffffcc>
        <COLGROUP>
        <COL>
        <TBODY>
        <TR>
          <TD>Don't bother looking for the .Drive property in the Properties 
            window for Drive1 - you won't find it. Same with Dir1.Path and 
            List1.FileName. That's because Drive is a runtime property. That is, 
            one that is only available when the program runs. Makes sense when 
            you think about it. You can design the DriveListBox to have the 
            size, the color and the font you want but you can't tell it which 
            drive will be active at runtime. That will have to come from the 
            system.<BR>VB is full of these details. Every control has properties 
            that are only accessible at runtime, through code. The only way to 
            find them is to look in the documentation. A big Reference Manual is 
            handy and the Help function helps a lot with this, 
        too.&nbsp;</TD></TR></TBODY></TABLE></DIV><BR><BR>The current directory is 
      in the <B>DirectoryListBox</B>. The name is in the <B>Dir1.Path</B> 
      property.<BR><BR>The default event associated with Drive1 and Dir1 is 
      called a <B>Change</B> event. That's because nothing has to be done with 
      those controls until they are actually changed. Remember, when the program 
      runs they are automatically loaded with the current drive and the current 
      directory active.<BR><BR>The current file selected is in the 
      <B>FileListBox</B>, in the File1.FileName property. This one is not 
      automatically loaded because there is no current active file. You select a 
      file by clicking on it, generating a <B>Click</B> event. <BR><BR>Study the 
      code and then look at the explanations below. To keep the code section 
      from getting too long, explanations have not been included as 
      comments.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb05f09.gif" width=534 
      height=447></DIV><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb05f10.gif" width=606 
      height=386></DIV><BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb05f11.gif" width=533 
      height=292></DIV><BR><BR>Program notes:<BR>
      <UL type=DISC>
        <LI>First task in Form_Load is to load the list of file types. We only 
        want to display files that are Executable, Text or Graphics. The .EXE is 
        selected by default - ListIndex =0.<BR><BR>
        <LI>The FileListBox <B>Pattern</B> property creates the filter for the 
        selection.<BR><BR>
        <LI>Whenever we change the Drive selection or the Directory selection, a 
        <B>Change event</B> is generated. When the Drive changes, the 
        Directory's path changes and when the Directory changes, the list of 
        files changes.<BR><BR>
        <LI>When you click on the Start button you first have to check if a file 
        is selected. If not, issue a message. <BR><BR>
        <LI>The Right() function, which we will look at in Lesson7, checks to 
        see if the rightmost character of the filename is a \. If it is it means 
        that the file is in the root directory. If it isn't, we have to add a \ 
        between the path and the filename.<BR><BR>
        <LI>Based on the type of file selected, we execute the <B>Shell 
        function</B> which runs an executable program. vbNormalFocus is the 
        <B>window style argument</B> that tells the program to run in a normal 
        window.<BR><BR>
        <LI>When we click on a file type, the Pattern property for the FieList 
        must change.<BR><BR>
        <LI>A double-click on a filename does the same as hitting the Start 
        button.<BR><BR>
        <LI>Remember, we called this Form from the Registration form. When we're 
        done with this, we want to close it and go back to the calling form. The 
        Exit button does an <B>Unload</B> of the current form but, <B>it does 
        not execute an End statement</B> because that would cause the Project to 
        end.<BR><BR></LI></UL>This final section of code is in the Registration 
      form. It is the code for the Viewer button which calls the DirList 
      form.<BR><BR>The only thing to do is to Load the form using its FormName 
      (from the Name property) and then to execute its <B>Show method</B>. The 
      argument <B>vbModeless</B> means that the form does not get exclusive 
      focus. The opposite of vbModeless is <B>vbModal</B>. A <B>modal</B> form 
      is one which requires action from the user before it can be closed. 
      Usually, error messages are modal - you have to respond, usually by 
      hitting the OK or Cancel button, and you can't click on another form to 
      send this one to the background, and you can't close it with the close 
      box. A <B>modeless</B> form can be sent to the background and it can be 
      closed at any time.<BR><BR>
      <DIV align=center><IMG border=0 src="images/LessonsImages/VBLessons/vb05f12.gif" width=428 
      height=171></DIV><BR>
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
                                                PostBackUrl="~/VB_L4.aspx">&lt;&lt; Previous</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                                ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3DAAFE" 
                                                PostBackUrl="~/VB_L6.aspx">Next &gt;&gt;</asp:LinkButton>
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
