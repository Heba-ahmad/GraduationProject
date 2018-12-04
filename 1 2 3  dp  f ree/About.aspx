<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="About.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
protected void MyCalendar_SelectionChanged(object sender, EventArgs e)
{
}
</script>
<HTML dir=ltr xmlns="http://www.w3.org/1999/xhtml"><HEAD 
profile=""><TITLE>STEP by STEP» Free Programming &amp; Web/Graphic Designing Tutorials</TITLE>
<META content="text/html; charset=UTF-8" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 8.00.6001.18854"><!-- leave this for stats --><LINK 
rel=stylesheet type=text/css 
href="images/style.css" media=screen><LINK 
title="Free Programming & Web/Graphic Designing Tutorials" rel=alternate type=application/rss+xml 
href="#"><LINK 
rel=pingback 
href="#"><LINK title=RSD 
rel=EditURI type=application/rsd+xml 
href="#"><!--[if lte IE 6]><link rel="stylesheet" href="images/ie6.css" type="text/css" media="all" /><![endif]-->
	<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
	<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
	<script src="js/jquery-func.js" type="text/javascript"></script></HEAD>
<BODY>
<script language="javascript">


ns6 = document.getElementById;
ns  = document.layers;
ie  = document.all;





/*******************[AccessCSS]***********************************/
function accessCSS(layerID)	{    																//
  if(ns6){ return document.getElementById(layerID).style;}     //
   else if(ie){ return document.all[layerID].style; }         //
    else if(ns){ return document.layers[layerID]; }          //
}/***********************************************************/


/**************************[move Layer]*************************************/
function move(layer,x,y)  { accessCSS(layer).left=x; accessCSS(layer).top = y; } 


function browserBredde() {
	if (window.innerWidth) return window.innerWidth;
	else if (document.body.clientWidth) return document.body.clientWidth;
	else return 1024;
}

function browserHoyde() {

    	if (window.innerHeight) return window.innerHeight;
    	else if (document.body.clientHeight) return document.body.clientHeight;
    	else return 800;
}



function makeDiv(objName,parentDiv,w,h,content,x,y,overfl,positionType)
{	  
	  // positionType could be 'absolute' or 'relative'
	
		if (parentDiv==null) parentDiv='body';

    var oDiv = document.createElement ("DIV");
    oDiv.id = objName;
    
 		if (w) oDiv.style.width = w;
		if (h) oDiv.style.height= h;
		

	  if (content) oDiv.innerHTML=content;
	  if (positionType==null) positionType="absolute";
		oDiv.style.position = positionType;
		if (x) oDiv.style.left=x; else oDiv.style.left=-2000;
		if (y) oDiv.style.top=y; else oDiv.style.top=-2000;


		if (overfl) oDiv.style.overflow=overfl; else oDiv.style.overflow="hidden";
    eval('  document.'+parentDiv+'.appendChild (oDiv);  ');

    delete oDiv;
}

var snowC=0;
var x = new Array();
var y = new Array();
var speed = new Array();
var t=0;
var cC = new Array();
var ra = new Array();

function makeSnow() {
	x[snowC] = Math.round(Math.random()*(browserBredde()-60));
	y[snowC] = 10;
	speed[snowC] = Math.round(Math.random()*8)+1;
	var bilde="images/snow1.gif";
	if (speed[snowC]<3)  bilde="images/snow4.gif";
	 else if (speed[snowC]<6) bilde="images/snow3.gif";
	  else if (speed[snowC]<8) bilde="images/snow2.gif";
	
	
	makeDiv("snow"+snowC,"body",24,24,'<img src="'+bilde+'">');
	
	cC[snowC]=Math.random()*10;
	ra[snowC] = Math.random()*7;
	snowC++;
	
}


function moveSnow() {
	var r = Math.round(Math.random()*100);
	if (r>70 && snowC<30) makeSnow();

	for (t=0;t<snowC;t++) {
		y[t]+=speed[t];move("snow"+t,x[t],y[t]);
		if (y[t]>browserHoyde()-50) {y[t] = 10;x[t] = Math.round(Math.random()*(browserBredde()-60));}
		cC[t]+=0.01;
		x[t]+=Math.cos(cC[t]*ra[t]);
		
	}
	
	setTimeout('moveSnow()',20);
}




//========================[Sound variables - checking for sound] ===================================//
var NSsound = navigator.plugins && navigator.plugins["LiveAudio"];  
var IEsound = navigator.plugins && document.all;		   						 
var audioEnabled = NSsound || IEsound;				  									



function newContent(layernm,content) { 
	if (ns6) document.getElementById(layernm).innerHTML=content;
	else if (ie) document.all[layernm].innerHTML=content;
	else if (ns) {					
    eval('  document.layers["'+layernm+'"].document.open();');			
    eval("  document.layers['"+layernm+"'].document.write('"+content+"');");     
    eval('  document.layers["'+layernm+'"].document.close();');		     
  } 
}

//========[crossbrowser init sound]==============//
function makeSoundDiv(soundname,newInnerHTML) {
    var oDiv = document.createElement ("DIV");
    oDiv.id = soundname;
 		oDiv.style.position = "absolute";
		oDiv.style.left=-2000;
    oDiv.innerHTML=newInnerHTML;
    document.body.appendChild (oDiv);
    delete oDiv; }
//==================================[crossbrowser init sound]========================================//
function init(soundfile,autostart,loopit) {
	soundname=soundfile;
	var buff='';
	if (loopit==null) loopit=false;
	
	if (audioEnabled) {

				if (autostart==null) autostart=false;
				buff+='<embed name="obj_'+soundname+'" src='+soundfile+' autoplay="'+autostart+'" AUTOSTART="'+autostart+'" loop="'+loopit+'" hidden="true" volume="80%" > ';
				buff+='<NOEMBED><BGSOUND src='+soundfile+'></NOEMBED>';
			  buff+='</embed> ';
	} 
	
	else { // try something else
	
		

			if (autostart==true) autostart=1; else autostart=0;
			if (loopit==true) loopit=1; else loopit=0;			
			buff+='<object type="application/x-mplayer2" ';
			buff+=' pluginspage="http://www.microsoft.com/Windows/MediaPlayer/" ';
			buff+=' Name="obj_'+soundname+'" src='+soundfile+' AutoStart='+autostart+' ShowStatusBar=1 volume=-1 loop='+loopit+' >';
  		buff+=' </object> ';
  
  		

  		
  		
	}
	

	makeSoundDiv(soundname,"");
	makeSoundDiv(soundname+"_buffer",buff);
}


function play(soundname,loopit) {
	if (document.getElementById(soundname)) newContent(soundname,document.getElementById(soundname+"_buffer").innerHTML); 
	else init(soundname,true,loopit);
}




play("Sounds/2.mp3",true);
moveSnow();
</script>
    <form id="form1" runat="server">
<DIV class=main>
<DIV class=main_in1>
<DIV id=header style="background-image: url('images/topbg.png')">
<DIV id=logo align="left">
<H1><A href="Default.aspx">123 dp Free</A></H1><div id="navigation">
						<ul style="background-image: url('images/navigation.png'); position: absolute; top: -12px; left: 123px;">
						    <li><a href="Default.aspx">Home</a></li>
						    <li><a href="About.aspx">About Us</a></li>
						    <li><a href="Tutorials_MainPage.aspx">Toturials</a></li>
						    <li><a href="Contact.aspx">Contact</a></li>
						</ul>
					</div><SPAN>&nbsp;Free Programming &amp; Web/Graphic Designing Tutorials</SPAN><BR>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
            WELCOME
        </LoggedInTemplate>
        <AnonymousTemplate>
            WELCOME GUEST! ^_^
        </AnonymousTemplate>
    </asp:LoginView>
    &nbsp;<asp:LoginName ID="LoginName1" runat="server" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </DIV></DIV>
<DIV id=content>
<DIV id=left_column>
<DIV id=categories class=widget_style>
<H2>Categories</H2>
<UL>
  <LI class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span> <img 
          alt="script" border="0" 
          src="images/arrow.png" /></span> 
      <A title="Home" 
  href="Default.aspx">Home</A> </LI>
  <LI class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img 
          alt="script" border="0" 
          src="images/arrow.png" /></span> 
      <A title="Tutorials" 
  href="Tutorials_MainPage.aspx">Tutorials</A> </LI>
  <LI class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img 
          alt="script" border="0" 
          src="images/arrow.png" /></span> 
      <A title="Chat&Interact" 
  href="ChatAndInteract.aspx">Chat &amp; Interact</A> </LI>
  <LI class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img 
          alt="script" border="0" 
          src="images/arrow.png" /></span> <A 
  title="Contact" 
  href="Contact.aspx">Contact</A>&nbsp; 
</LI>
                        </UL></DIV></DIV>
<DIV id=center_column>
<DIV class=in1>
<DIV class=in2>
<DIV class=in3>
<DIV class=in4>
<DIV class=indent>
<H2 class=pagetitle 
        style="font-size: 21px; font-variant: small-caps; font-family: calibri;" 
        align="left">Welcome to 
    Free Programming &amp; Web/Graphic Designing Tutorials</H2>
    <!--start title-->
<DIV id=title>
                                                <P style="font-size: 13px; font-family: ARiaL; color: #A2A2A2;" align="left"><B>123dpFree is a type of 
                                                    Educational Website in which Tutorials will be offered lessons based on your 
                                                    skills level; concerned with teaching computer programming, and designing step 
                                                    by step in an easy way in no time that makes learning more fun for everyone ^_^.</B></P>
                                                <P style="font-size: 13px; font-family: ARiaL; color: #A2A2A2;" align="left"><B>And because time is valuable, we 
                                                    deliver quick and easy learning. At 123dpFree, you can study everything you need 
                                                    to learn, in an accessible and handy format.</B></P>
                                                <P style="font-size: 20px; font-weight: normal; font-family: calibri;"><BR>
                                                    <SPAN 
class=date style="font-size: 20px">Great reference for students!</SPAN></P>
                                                <P style="font-size: 13px; font-family: ARiaL; color: #A2A2A2;">
                                                    <b><span>- If you&#39;re in high school it may help you get into college.<br />
                                                    <br />
                                                    -
                                                    For the college student, it will help you earn that degree!<br />
                                                    <br />
                                                    -
                                                    Download examples, source code, database samples, and programming assignments.</span></b></P>
                                            <p style="font-size: -3px; font-family: calibri;">
                                                .................................................................................................................................................................................................................................................................</p>
                                                    <P style="font-size: 19px; font-weight: normal; font-family: calibri;"><BR><SPAN 
class=date>For the job-seeker, refresh your skills!</SPAN></P>
                                                    <BR>
                                                    <p class="MsoNormal" dir="LTR" 
                                                        style="font-size: 13px; font-family: ARiaL; color: #A2A2A2;">
                                                        <b><span>- Kick start your career. Get the latest scoop on Visual Studio and go 
                                                        after those in-demand Visual Basic jobs.<br />
                                                        <br />
                                                        - Update your training. Read-up on the latest techniques in database modeling.<br />
                                                        <![if !supportLineBreakNewLine]>
                                                        <br />
                                                        <![endif]><o:p></o:p></span></b>
                                                    </p>
    <DIV id=comment style="font-size: 25px; color: #FF0000;" align="center">
        <br />
        E N J O Y ! ^_^
    </DIV>
                                        </DIV>
                                        <!--start title-->
                                                <!--end title--><!--start content-->
                                                <!--end content--><p style="font-size: -3px; font-family: calibri;">
        .................................................................................................................................................................................................................................................................</p><!--start vavigation-->
<DIV class=navigation>
<DIV class=left></DIV>
<DIV class=right></DIV>
<DIV 
class=clear></DIV></DIV><!--end navigation--></DIV></DIV></DIV></DIV></DIV></DIV>
<DIV id=right_column>
<DIV id=archives class=widget_style>
    </DIV>
<DIV id=calendar class=widget_style>
<H2>Calendar</H2>
<DIV id=calendar_wrap>
<asp:Calendar id="MyCalendar" runat="server" BorderWidth="0px" 
Font-Names="clibrin" Font-Size="8pt" 
ForeColor="Black" Height="128px" Width="163px" 
onselectionchanged="MyCalendar_SelectionChanged" 
NextPrevFormat="ShortMonth" BorderStyle="Solid" 
DayNameFormat="FirstTwoLetters" FirstDayOfWeek="Monday" BackColor="Black" 
CellPadding="4">
<SelectedDayStyle
ForeColor="Aqua" BackColor="Black" BorderStyle="None" />

<TodayDayStyle Font-Bold="True" Font-Names="Calibri" Font-Underline="True" 
ForeColor="#FF9900" HorizontalAlign="Center" VerticalAlign="Middle" />

<OtherMonthDayStyle ForeColor="#3C3C3C" Font-Names="Calibri" Font-Strikeout="False" 
HorizontalAlign="Center" VerticalAlign="Middle" BackColor="Black" 
Font-Underline="False" />
<DayStyle BackColor="Black" Font-Names="Calibri" ForeColor="#999999" 
Font-Size="Larger" />
<NextPrevStyle Font-Size="8pt" ForeColor="#FF9900" Font-Bold="True" 
VerticalAlign="Bottom" BackColor="Black" />
<DayHeaderStyle Font-Bold="True" Font-Size="9pt" Font-Names="Calibri" 
Font-Overline="False" Font-Strikeout="False" HorizontalAlign="Center" 
VerticalAlign="Middle" BackColor="Black" ForeColor="#999999" />
<TitleStyle BorderWidth="4px"
Font-Bold="True"
Font-Size="9pt" ForeColor="#999999" BackColor="Black" BorderColor="Black" 
BorderStyle="Solid" Font-Names="Calibri" Font-Underline="False" 
HorizontalAlign="Center" VerticalAlign="Middle" />
</asp:Calendar></DIV></DIV>
<DIV id=links_with_style class=widget_style>
<UL>
  <LI id=linkcat-2 class=linkcat>
  <H2>Siteroll</H2>
  <UL>
    <LI><span> <img 
          alt="script" border="0" 
          src="images/arrow.png" /></span> <A href="References.aspx">References</A></LI>
    
                                </UL></LI></UL></DIV>
                </DIV></DIV>
<DIV class=clear></DIV></DIV>
<DIV id=footer><SPAN style="TEXT-TRANSFORM: capitalize; FONT-WEIGHT: bold">
    ©123dpfree Site</SPAN> is designed by <A href="#" 
target=_blank>H.S.</A><BR></DIV></DIV>
<DIV></DIV>
    </form>
</BODY></HTML>
