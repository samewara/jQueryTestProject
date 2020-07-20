<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3.AddRemoveCss.aspx.cs" Inherits="JQueryTestProject._3AddRemoveCss" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Test Page</title>
    <link type="text/css" href="StyleSheets/MainPage.css" rel="Stylesheet" />
    <style type="text/css">
        .test { font-weight: bold; }
     </style>
    <script type="text/javascript" src="jQuery File/jquery-1.4.1.js"></script>
    <script type="text/javascript">
        // jQuery Scripts

        //Adding and Removing an HTML Class
        $(document).ready(function() {
            $("label").addClass("test");
            //$("label").addClass("TestCss");
            alert("After you click Ok, it will be no more be bold");
            $("label").removeClass("test");
        });
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label id="lblTest">Css to this label has been applied using jQuery</label>
    </div>
    </form>
</body>
</html>
