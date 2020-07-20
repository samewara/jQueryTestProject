<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="7_AJAX_2.aspx.cs" Inherits="JQueryTestProject._7_AJAX_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Test Page</title>
    <link type="text/css" href="StyleSheets/MainPage.css" rel="Stylesheet" />
    <script type="text/javascript" src="jQuery File/jquery-1.4.1.js"></script>
    <script type="text/javascript">
    // Normal scripts
    
    </script>
    <script type="text/javascript">
        // jQuery Scripts

        $(document).ready(function() {
            $("#myLabel").click(function() {
                $.get('7_AJAX_2.aspx',"rating2=5",function(data) {
                        $('#result').html(data);
                        $('#myLabel').hide('slow');
                });
            }).ajaxStart(function() {
                $("#loading").text("Loading...");
            }).ajaxComplete(function() {
                $("#loading").text("")});
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="rating">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    <br />
        <div id="Div1">
        <asp:Label ID="loading" runat="server" Text=""></asp:Label>
    </div>
    <br />
    <label id="myLabel">Click me Check Ajax syntax!</label>
        <div id="result">

    </div>
    </form>
</body>
</html>
