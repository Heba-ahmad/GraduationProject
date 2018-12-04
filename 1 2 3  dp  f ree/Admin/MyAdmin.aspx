<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="MyAdmin.aspx.cs" Inherits="_Default" %>

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
                        </UL></DIV></DIV>
<DIV id=center_column>
<DIV class=in1>
<DIV class=in2>
<DIV class=in3>
<DIV class=in4>
<DIV class=indent>
<H2 class=pagetitle 
        style="font-size: 21px; font-variant: small-caps; font-family: calibri;" 
        align="center">Admin Page </H2>
    <!--start title-->
<DIV id=title>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;"><BR><SPAN 
class=date>Users' Comments&nbsp;&nbsp; </SPAN></P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">VB6</P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                        DataKeyNames="ID" DataSourceID="SqlDataSource1" 
                                                        EmptyDataText="There are no data records to display.">
                                                        <Columns>
                                                            <asp:CommandField ShowDeleteButton="True" />
                                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                                                SortExpression="ID" />
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Comments" HeaderText="Comments" 
                                                                SortExpression="Comments" />
                                                            <asp:BoundField DataField="Rating" HeaderText="Rating" 
                                                                SortExpression="Rating" />
                                                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                        </Columns>
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [VB6_tblComments] WHERE [ID] = @ID" 
                                                        InsertCommand="INSERT INTO [VB6_tblComments] ([Name], [Comments], [Rating], [Date]) VALUES (@Name, @Comments, @Rating, @Date)" 
                                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                                        SelectCommand="SELECT [ID], [Name], [Comments], [Rating], [Date] FROM [VB6_tblComments]" 
                                                        UpdateCommand="UPDATE [VB6_tblComments] SET [Name] = @Name, [Comments] = @Comments, [Rating] = @Rating, [Date] = @Date WHERE [ID] = @ID">
                                                        <InsertParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                        </InsertParameters>
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </DeleteParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                </P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">SQL</P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                        DataKeyNames="ID" DataSourceID="SqlDataSource2" 
                                                        EmptyDataText="There are no data records to display.">
                                                        <Columns>
                                                            <asp:CommandField ShowDeleteButton="True" />
                                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                                                SortExpression="ID" />
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Comments" HeaderText="Comments" 
                                                                SortExpression="Comments" />
                                                            <asp:BoundField DataField="Rating" HeaderText="Rating" 
                                                                SortExpression="Rating" />
                                                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                        </Columns>
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [SQL_tblComments] WHERE [ID] = @ID" 
                                                        InsertCommand="INSERT INTO [SQL_tblComments] ([Name], [Comments], [Rating], [Date]) VALUES (@Name, @Comments, @Rating, @Date)" 
                                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                                        SelectCommand="SELECT [ID], [Name], [Comments], [Rating], [Date] FROM [SQL_tblComments]" 
                                                        UpdateCommand="UPDATE [SQL_tblComments] SET [Name] = @Name, [Comments] = @Comments, [Rating] = @Rating, [Date] = @Date WHERE [ID] = @ID">
                                                        <InsertParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                        </InsertParameters>
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </DeleteParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                </P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    PHP</P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                                        DataKeyNames="ID" DataSourceID="SqlDataSource3" 
                                                        EmptyDataText="There are no data records to display.">
                                                        <Columns>
                                                            <asp:CommandField ShowDeleteButton="True" />
                                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                                                SortExpression="ID" />
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Comments" HeaderText="Comments" 
                                                                SortExpression="Comments" />
                                                            <asp:BoundField DataField="Rating" HeaderText="Rating" 
                                                                SortExpression="Rating" />
                                                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                        </Columns>
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [PHP_tblComments] WHERE [ID] = @ID" 
                                                        InsertCommand="INSERT INTO [PHP_tblComments] ([Name], [Comments], [Rating], [Date]) VALUES (@Name, @Comments, @Rating, @Date)" 
                                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                                        SelectCommand="SELECT [ID], [Name], [Comments], [Rating], [Date] FROM [PHP_tblComments]" 
                                                        UpdateCommand="UPDATE [PHP_tblComments] SET [Name] = @Name, [Comments] = @Comments, [Rating] = @Rating, [Date] = @Date WHERE [ID] = @ID">
                                                        <InsertParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                        </InsertParameters>
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </DeleteParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                    </P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    Ms Access</P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                                                        DataKeyNames="ID" DataSourceID="SqlDataSource4" 
                                                        EmptyDataText="There are no data records to display.">
                                                        <Columns>
                                                            <asp:CommandField ShowDeleteButton="True" />
                                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                                                SortExpression="ID" />
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Comments" HeaderText="Comments" 
                                                                SortExpression="Comments" />
                                                            <asp:BoundField DataField="Rating" HeaderText="Rating" 
                                                                SortExpression="Rating" />
                                                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                        </Columns>
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [MsAccess_tblComments] WHERE [ID] = @ID" 
                                                        InsertCommand="INSERT INTO [MsAccess_tblComments] ([Name], [Comments], [Rating], [Date]) VALUES (@Name, @Comments, @Rating, @Date)" 
                                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                                        SelectCommand="SELECT [ID], [Name], [Comments], [Rating], [Date] FROM [MsAccess_tblComments]" 
                                                        UpdateCommand="UPDATE [MsAccess_tblComments] SET [Name] = @Name, [Comments] = @Comments, [Rating] = @Rating, [Date] = @Date WHERE [ID] = @ID">
                                                        <InsertParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                        </InsertParameters>
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </DeleteParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                    </P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    JavaScript</P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                                                        DataKeyNames="ID" DataSourceID="SqlDataSource5" 
                                                        EmptyDataText="There are no data records to display.">
                                                        <Columns>
                                                            <asp:CommandField ShowDeleteButton="True" />
                                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                                                SortExpression="ID" />
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Comments" HeaderText="Comments" 
                                                                SortExpression="Comments" />
                                                            <asp:BoundField DataField="Rating" HeaderText="Rating" 
                                                                SortExpression="Rating" />
                                                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                        </Columns>
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [JavaScript_tblComments] WHERE [ID] = @ID" 
                                                        InsertCommand="INSERT INTO [JavaScript_tblComments] ([Name], [Comments], [Rating], [Date]) VALUES (@Name, @Comments, @Rating, @Date)" 
                                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                                        SelectCommand="SELECT [ID], [Name], [Comments], [Rating], [Date] FROM [JavaScript_tblComments]" 
                                                        UpdateCommand="UPDATE [JavaScript_tblComments] SET [Name] = @Name, [Comments] = @Comments, [Rating] = @Rating, [Date] = @Date WHERE [ID] = @ID">
                                                        <InsertParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                        </InsertParameters>
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </DeleteParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                    </P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    HTML</P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                                                        DataKeyNames="ID" DataSourceID="SqlDataSource6" 
                                                        EmptyDataText="There are no data records to display.">
                                                        <Columns>
                                                            <asp:CommandField ShowDeleteButton="True" />
                                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                                                SortExpression="ID" />
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Comments" HeaderText="Comments" 
                                                                SortExpression="Comments" />
                                                            <asp:BoundField DataField="Rating" HeaderText="Rating" 
                                                                SortExpression="Rating" />
                                                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                        </Columns>
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [HTML_tblComments] WHERE [ID] = @ID" 
                                                        InsertCommand="INSERT INTO [HTML_tblComments] ([Name], [Comments], [Rating], [Date]) VALUES (@Name, @Comments, @Rating, @Date)" 
                                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                                        SelectCommand="SELECT [ID], [Name], [Comments], [Rating], [Date] FROM [HTML_tblComments]" 
                                                        UpdateCommand="UPDATE [HTML_tblComments] SET [Name] = @Name, [Comments] = @Comments, [Rating] = @Rating, [Date] = @Date WHERE [ID] = @ID">
                                                        <InsertParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                        </InsertParameters>
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </DeleteParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                    </P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    FLASH</P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
                                                        DataKeyNames="ID" DataSourceID="SqlDataSource7" 
                                                        EmptyDataText="There are no data records to display.">
                                                        <Columns>
                                                            <asp:CommandField ShowDeleteButton="True" />
                                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                                                SortExpression="ID" />
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Comments" HeaderText="Comments" 
                                                                SortExpression="Comments" />
                                                            <asp:BoundField DataField="Rating" HeaderText="Rating" 
                                                                SortExpression="Rating" />
                                                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                        </Columns>
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [FLASH_tblComments] WHERE [ID] = @ID" 
                                                        InsertCommand="INSERT INTO [FLASH_tblComments] ([Name], [Comments], [Rating], [Date]) VALUES (@Name, @Comments, @Rating, @Date)" 
                                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                                        SelectCommand="SELECT [ID], [Name], [Comments], [Rating], [Date] FROM [FLASH_tblComments]" 
                                                        UpdateCommand="UPDATE [FLASH_tblComments] SET [Name] = @Name, [Comments] = @Comments, [Rating] = @Rating, [Date] = @Date WHERE [ID] = @ID">
                                                        <InsertParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                        </InsertParameters>
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </DeleteParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                    </P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    DreamWeaver</P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" 
                                                        DataKeyNames="ID" DataSourceID="SqlDataSource8" 
                                                        EmptyDataText="There are no data records to display.">
                                                        <Columns>
                                                            <asp:CommandField ShowDeleteButton="True" />
                                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                                                SortExpression="ID" />
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Comments" HeaderText="Comments" 
                                                                SortExpression="Comments" />
                                                            <asp:BoundField DataField="Rating" HeaderText="Rating" 
                                                                SortExpression="Rating" />
                                                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                        </Columns>
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [DreamWeaver_tblComments] WHERE [ID] = @ID" 
                                                        InsertCommand="INSERT INTO [DreamWeaver_tblComments] ([Name], [Comments], [Rating], [Date]) VALUES (@Name, @Comments, @Rating, @Date)" 
                                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                                        SelectCommand="SELECT [ID], [Name], [Comments], [Rating], [Date] FROM [DreamWeaver_tblComments]" 
                                                        UpdateCommand="UPDATE [DreamWeaver_tblComments] SET [Name] = @Name, [Comments] = @Comments, [Rating] = @Rating, [Date] = @Date WHERE [ID] = @ID">
                                                        <InsertParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                        </InsertParameters>
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </DeleteParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                    </P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    CSS</P>
                                                <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                    <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" 
                                                        DataKeyNames="ID" DataSourceID="SqlDataSource9" 
                                                        EmptyDataText="There are no data records to display.">
                                                        <Columns>
                                                            <asp:CommandField ShowDeleteButton="True" />
                                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                                                SortExpression="ID" />
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Comments" HeaderText="Comments" 
                                                                SortExpression="Comments" />
                                                            <asp:BoundField DataField="Rating" HeaderText="Rating" 
                                                                SortExpression="Rating" />
                                                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                        </Columns>
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [CSS_tblComments] WHERE [ID] = @ID" 
                                                        InsertCommand="INSERT INTO [CSS_tblComments] ([Name], [Comments], [Rating], [Date]) VALUES (@Name, @Comments, @Rating, @Date)" 
                                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                                        SelectCommand="SELECT [ID], [Name], [Comments], [Rating], [Date] FROM [CSS_tblComments]" 
                                                        UpdateCommand="UPDATE [CSS_tblComments] SET [Name] = @Name, [Comments] = @Comments, [Rating] = @Rating, [Date] = @Date WHERE [ID] = @ID">
                                                        <InsertParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                        </InsertParameters>
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </DeleteParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Comments" Type="String" />
                                                            <asp:Parameter Name="Rating" Type="Byte" />
                                                            <asp:Parameter Name="Date" Type="String" />
                                                            <asp:Parameter Name="ID" Type="Int32" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                    </P>
                                            <p style="font-size: -3px; font-family: calibri;">
                                                .................................................................................................................................................................................................................................................................          <P style="font-size: 19px; font-weight: normal; font-family: calibri;"><BR><SPAN 
class=date>Users' IDs</SPAN><b><span><br />
                                                        <![if !supportLineBreakNewLine]>
                                                        <br />
                                                        <![endif]></span></b></P>
                                                    <P style="font-size: 19px; font-weight: normal; font-family: calibri;">
                                                        <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" 
                                                            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                                            CellPadding="4" DataSourceID="SqlDataSource11" 
                                                            EmptyDataText="There are no data records to display." ForeColor="Black" 
                                                            GridLines="Vertical">
                                                            <FooterStyle BackColor="#CCCC99" />
                                                            <RowStyle BackColor="#F7F7DE" />
                                                            <Columns>
                                                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                                                    ShowSelectButton="True" />
                                                                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                                                                    SortExpression="UserName" />
                                                                <asp:BoundField DataField="LastActivityDate" HeaderText="LastActivityDate" 
                                                                    SortExpression="LastActivityDate" />
                                                            </Columns>
                                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                                            <AlternatingRowStyle BackColor="White" />
                                                        </asp:GridView>
                                                        <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                            DeleteCommand="DELETE FROM [aspnet_Users] WHERE [UserId] = @UserId" 
                                                            InsertCommand="INSERT INTO [aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (@ApplicationId, @UserId, @UserName, @LoweredUserName, @MobileAlias, @IsAnonymous, @LastActivityDate)" 
                                                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                                            SelectCommand="SELECT [UserName], [LastActivityDate] FROM [aspnet_Users]" 
                                                            
                                                            UpdateCommand="UPDATE [aspnet_Users] SET [ApplicationId] = @ApplicationId, [UserName] = @UserName, [LoweredUserName] = @LoweredUserName, [MobileAlias] = @MobileAlias, [IsAnonymous] = @IsAnonymous, [LastActivityDate] = @LastActivityDate WHERE [UserId] = @UserId">
                                                            <InsertParameters>
                                                                <asp:Parameter Name="ApplicationId" Type="Object" />
                                                                <asp:Parameter Name="UserId" Type="Object" />
                                                                <asp:Parameter Name="UserName" Type="String" />
                                                                <asp:Parameter Name="LoweredUserName" Type="String" />
                                                                <asp:Parameter Name="MobileAlias" Type="String" />
                                                                <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                                                                <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                                                            </InsertParameters>
                                                            <DeleteParameters>
                                                                <asp:Parameter Name="UserId" Type="Object" />
                                                            </DeleteParameters>
                                                            <UpdateParameters>
                                                                <asp:Parameter Name="ApplicationId" Type="Object" />
                                                                <asp:Parameter Name="UserName" Type="String" />
                                                                <asp:Parameter Name="LoweredUserName" Type="String" />
                                                                <asp:Parameter Name="MobileAlias" Type="String" />
                                                                <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                                                                <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                                                                <asp:Parameter Name="UserId" Type="Object" />
                                                            </UpdateParameters>
                                                        </asp:SqlDataSource>
                                                        <![if !supportLineBreakNewLine]>
                                                        <![endif]><o:p></o:p></P>
    <DIV id=comment style="font-size: 25px; color: #FF0000;" align="center">
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
                </DIV></DIV>
<DIV class=clear></DIV></DIV>
<DIV id=footer><SPAN style="TEXT-TRANSFORM: capitalize; FONT-WEIGHT: bold">
    ©123dpfree Site</SPAN> is designed by <A href="#" 
target=_blank>H.S.</A><BR></DIV></DIV>
<DIV></DIV>
    </form>
</BODY></HTML>
