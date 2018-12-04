<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="References.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
protected void MyCalendar_SelectionChanged(object sender, EventArgs e)
{
}
</script>

<HTML dir=ltr xmlns="http://www.w3.org/1999/xhtml"><HEAD 
profile=""><TITLE>STEP by STEP » Free Programming & Web/Graphic Designing Tutorials</TITLE>
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
<!--


/*
		                       __                                                __     
		                      /\ \                  __                          /\ \    
		  ___ ___      __     \_\ \      __  __  __/\_\  ____      __     _ __  \_\ \    ____  
		/' __` __`\  /'__`\   /'_` \    /\ \/\ \/\ \/\ \/\_ ,`\  /'__`\  /\`'__\/'_` \  /',__\ 
		/\ \/\ \/\ \/\ \_\.\_/\ \_\ \   \ \ \_/ \_/ \ \ \/_/  /_/\ \_\.\_\ \ \//\ \_\ \/\__, `\
		\ \_\ \_\ \_\ \__/.\_\ \___,_\   \ \___¤___/'\ \_\/\____\ \__/.\_\\ \_\\ \___,_\/\____/
		 \/_/\/_/\/_/\/__/\/_/\/__,_ /    \/__//__/   \/_/\/____/\/__/\/_/ \/_/ \/__,_ /\/___/ 
  <======[http://MadWizards.net]========[Code:Vidar Larsen 2006/10]====[http://cyber-web.biz]=======>
  
  
  --------------------------------[start]-------------------------------------- */


ns6 = document.getElementById;
ns  = document.layers;
ie  = document.all;
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
var remContent = '';
function init(soundfile,autostart,loopit) {
	soundname=soundfile;
	var buff='';
	if (loopit==null) loopit=false;
	if (audioEnabled) {
				if (autostart==null) autostart=false;
				buff+='<embed name="obj_'+soundname+'" src='+soundfile+' autoplay="'+autostart+'" AUTOSTART="'+autostart+'" loop="'+loopit+'" hidden="true" volume="80%" > ';
				buff+='<NOEMBED><BGSOUND src='+soundfile+'></NOEMBED>';
			  buff+='</embed> ';
	} else { // try something else
			if (autostart==true) autostart=1; else autostart=0;
			if (loopit==true) loopit=1; else loopit=0;			
			buff+='<object type="application/x-mplayer2" ';
			buff+=' pluginspage="http://www.microsoft.com/Windows/MediaPlayer/" ';
			buff+=' Name="obj_'+soundname+'" src='+soundfile+' AutoStart='+autostart+' ShowStatusBar=1 volume=-1 loop='+loopit+' >';
  		buff+=' </object> ';
	}
	remContent = buff;
	makeSoundDiv(soundname,buff);
	
}


function play(soundname,loopit) {
	if (document.getElementById(soundname)) newContent(soundname,remContent); 
	else init(soundname,true,loopit);
}


/*
 		all you need is to write play("your_sound_file.midi",true);  for loop
 		or play("your_sound_file.midi",false); for one time play
 		You do not have to use the init(...) function since it is called from the play(...) function
		This script has been tested and work with Internet Explorer, FireFox and Netscape
		
		example below :
*/



var musicOn = true;
function toggleMusic() {
	if (musicOn) {// music is on -> turn it off
		document.getElementById(soundname).innerHTML = '';
		document.getElementById("toggleMusic_div").innerHTML = '<a href="#" onclick="toggleMusic();">Start Music</a>';
		musicOn = false;
	} else {// Music is off -> turn it on
		play(soundname);
		document.getElementById("toggleMusic_div").innerHTML = '<a href="#" onclick="toggleMusic();">Stop Music</a>';
		musicOn = true;
	}

}
	

//must have this to avoid IE bug..
var soundname = "Sounds/2.mp3";
function doIt() { setTimeout('play(soundname,true);',200);  }
document.body.onLoad=doIt();

//--------------------------------[stop]--------------------------------------
//-->
</script>
    <form id="form1" runat="server">
<DIV class=main>
<DIV class=main_in1>
<DIV id=header style="background-image: url('images/topbgd.png')">
<DIV id=logo align="left">
<H1><A href="Default.aspx">123 
dp Free</A></H1><div id="navigation">
						<ul style="background-image: url('images/navigation.png'); position: absolute; top: -12px; left: 123px;">
						    <li><a href="Default.aspx">Home</a></li>
						    <li><a href="About.aspx">About Us</a></li>
						    <li><a href="Tutorials_MainPage.aspx">Toturials</a></li>
						    <li><a href="Contact.aspx">Contact</a></li>
						</ul>
					</div><SPAN>&nbsp;Free Programming & Web/Graphic Designing Tutorials</SPAN><BR>
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</embed></DIV></DIV>
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
      <A 
  title="About" 
  href="About.aspx">About</A>&nbsp; 
  </LI>
  <LI class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img 
          alt="script" border="0" 
          src="images/arrow.png" /></span> 
      <A title="Tutorials" 
  href="Tutorials_MainPage.aspx">Tutorials</A> </LI>
  <LI class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img 
          alt="script" border="0" 
          src="images/arrow.png" /></span> 
      <A title="Chat&Interact" 
  href="ChatAndInteract.aspx">Chat & Interact</A> </LI>
  <LI class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img 
          alt="script" border="0" 
          src="images/arrow.png" /></span> <A 
  title="Contact" 
  href="Contact.aspx">Contact</A>&nbsp; 
</LI>
                        </UL></DIV>
                        
                        <DIV id=DIV2 class=widget_style>
<H2>References</H2>
<UL>
  <LI class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span> <img 
          alt="script" border="0" 
          src="images/arrow.png" /></span> 
      <A href="References.aspx">References</A> </L </LI>
                        </UL></DIV></DIV>
<DIV id=center_column>
<DIV class=in1>
<DIV class=in2>
<DIV class=in3>
<DIV class=in4>
<DIV class=indent>
<H2 class=pagetitle>References</H2>
    <!--start title-->
<DIV id=DIV1 style="padding-left: 24px">
    <br />
    <span class="date">Programming Tutorials Links<br />
    <a href="http://www.asp.net">ASP.NET Home Page</a>
    <br />
    <br /><a href="http://www.programmertutorials.com/">Programmer Tutorials</a>
    <br />
    <br /><a href="http://www.w3schools.com/">Full Web Building Tutorials</a>
    <br />
    </span>
    <br /><br />
    
   <br />
    <span class="date">Web/Graphic Designing Tutorials Links<br />
    <a href="http://templates.entheosweb.com/">Web Design Tutorials</a><br />
    <br />
    <a href="http://www.good-tutorials.com/tutorials">good-tutorials</a><br />
    <br />
    <a href="http://www.webdesign-tutorials.com/">webdesign-tutorials</a><br />
    <br />
    <a href="http://www.tutorialized.com/">tutorialized</a><br /><br />
    <br />
    </span>
                                                <p style="font-size: -3px; font-family: calibri;">.................................................................................................................................................................................................................................................................</p>
                                                
    <br />
<br /><SPAN class=date>Online</SPAN>&nbsp;<SPAN class=author>Building my website application using ASP.NET, C#, MySQL and Flash [online] Available from: <br /> http://www.asp.net website [Accessed 15 March 2010]</SPAN><BR>
<br /><SPAN class=date>Online</SPAN>&nbsp;<SPAN class=author>The Java TM Tutorials [online] Available from: <br /> http://java.sun.com/docs/books/tutorial/ website [Accessed 1 April 2010]</SPAN><BR>
<br /><SPAN class=date>Online</SPAN>&nbsp;<SPAN class=author>W3schools Online Web Tutorials [online] Available from: http://www.w3schools.com/ website [Accessed 1 April 2010]</SPAN><BR>
<br /><SPAN class=date>Online</SPAN>&nbsp;<SPAN class=author>Free Online Programming Tutorials [online] Available from: <br /> http://www.programmingtutorials.com/default.aspx website [Accessed 1 April 2010]</SPAN><BR>
<br /><SPAN class=date>Online</SPAN>&nbsp;<SPAN class=author>Free IT Tutorials [online] Available from:  http://www.profsr.com/sitemap.html website [Accessed 21 April 2010]</SPAN><BR>
<br /><SPAN class=date>Online</SPAN>&nbsp;<SPAN class=author>EchoEcho.com Complete Web Tutorials [online] Available from: http://www.echoecho.com website [Accessed 15 May 2010]</SPAN><BR>
<br /><SPAN class=date>Online</SPAN>&nbsp;<SPAN class=author>-Wikipedia, the free encyclopedia   [online] Available from: http://www.webdesign.org/ website [Accessed 15 May 2010]</SPAN><BR>
<br /><SPAN class=date>Online</SPAN>&nbsp;<SPAN class=author>Web Design Library – one stop web design resource Available online at : http://www.webdesign.org/ website [Accessed 15 May 2010]</SPAN><BR>


                                            <p style="font-size: -3px; font-family: calibri;">.................................................................................................................................................................................................................................................</p>
<SPAN class=date>Book</SPAN>&nbsp;<SPAN class=author>Cristian Darie, Zak Ruvalcaba. (October 2006 ). Build Your Own ASP.NET 2.0 Web Site Using C# & VB, Second Edition. Available: http://oreilly.com/catalog/9780975240281. Last accessed 17 May 2010. </SPAN><BR>
<br /><SPAN class=date>Book</SPAN>&nbsp;<SPAN class=author>CRISTIAN DARIE & WYATT BARNETT. (October 2008). ASP.NET 3.5 WEB SITE USING C# & VB 3RD EDITION. Available: http://www.sitepoint.com/books/aspnet3/. Last accessed 17 May 2010. 
    <br />
    <br />
    <br />
    </SPAN><BR>
    
                                        </DIV>
                                        <!--start title-->
                                                
<DIV id=title>
<H3><A title="Tutorials" 
href="Default.aspx" rel=bookmark> << Back To the Home Page</A></H3><SPAN 
class=date>^_^</SPAN><BR></DIV><!--end title--><!--start content-->
                                        <!--end content--><p style="font-size: -3px; font-family: calibri;">...................................................................................................................................................................................................................................................................</p><!--start vavigation-->
<DIV class=navigation>
<DIV class=left></DIV>
<DIV class=right></DIV>
<DIV 
class=clear></DIV></DIV><!--end navigation--></DIV></DIV></DIV></DIV></DIV></DIV>
<DIV id=right_column>
<DIV id=statusbar>
	<div id="toggleMusic_div" align="center" style="color: #FF0000">
	    &nbsp;<a href="#" onclick="toggleMusic();">Stop Music</a><br />
        <br />
        <br />
	</div>

    </DIV>
<DIV id=archives class=widget_style>

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
                    </DIV>
                </DIV></DIV>
<DIV class=clear></DIV></DIV>
<DIV id=footer><SPAN style="TEXT-TRANSFORM: capitalize; FONT-WEIGHT: bold">&copy;123dpfree 
Site</SPAN> is designed by <A href="#" 
target=_blank>H.S.</A><BR></DIV></DIV>
<DIV></DIV>
    </form>
</BODY></HTML>
