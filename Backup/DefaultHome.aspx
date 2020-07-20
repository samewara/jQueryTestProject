<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultHome.aspx.cs" Inherits="JQueryTestProject.DefaultHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Home Page</title>
    <link type="text/css" href="StyleSheets/MainPage.css" rel="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="HyperLink" Target="_self" CssClass="LinkItems">
            <asp:ListItem Text="Document Ready" Value="1.DocumentReady.aspx"></asp:ListItem>        
            <asp:ListItem Text="Click Event" Value="2.ClickEvent.aspx"></asp:ListItem>   
            <asp:ListItem Text="Find Element" Value="2b.FindElement.aspx"></asp:ListItem>         
            <asp:ListItem Text="Find Element Advanced" Value="2c.FindElementII.aspx"></asp:ListItem>                    
            <asp:ListItem Text="AddRemove Class" Value="3.AddRemoveCss.aspx"></asp:ListItem>   
            <asp:ListItem Text="Special Effects" Value="4.SpecialEffects.aspx"></asp:ListItem>               
            <asp:ListItem Text="Callback Function" Value="5.Callback.aspx"></asp:ListItem>                           
            <asp:ListItem Text="Each Event" Value="6.EachEvent.aspx"></asp:ListItem>                                       
            <asp:ListItem Text="" Value=""></asp:ListItem>        
            <asp:ListItem Text="" Value=""></asp:ListItem>        
        </asp:BulletedList>
        <br />        
        <asp:BulletedList ID="BulletedList2" runat="server" DisplayMode="HyperLink" Target="_self" CssClass="LinkItems">
            <asp:ListItem Text="AJAX - 1" Value="7_AJAX_1.aspx"></asp:ListItem>        
            <asp:ListItem Text="" Value=""></asp:ListItem>        
            <asp:ListItem Text="" Value=""></asp:ListItem>        
            <asp:ListItem Text="" Value=""></asp:ListItem>        
            <asp:ListItem Text="" Value=""></asp:ListItem>        
            <asp:ListItem Text="" Value=""></asp:ListItem>        
        </asp:BulletedList>
    </div>
    </form>
</body>
</html>
