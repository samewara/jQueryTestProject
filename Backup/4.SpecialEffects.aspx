<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4.SpecialEffects.aspx.cs" Inherits="JQueryTestProject._4SpecialEffects" %>

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

        // Inside the ready event, add a click handler to the link:
        // For click and most other events, you can prevent the default behaviour 
        $(document).ready(function() {
            $("a.Normal").click(function(event) {
                alert("The link will take you to Google.com");                
            });
        });
        
        // Inside the ready event, add a click handler to the link:
        // For click and most other events, you can prevent the default behaviour
        $(document).ready(function() {
            $("a.NotNormal").click(function(event) {
               // alert("The link NO longer took you to Google.com. Istead it will hide it.");
                event.preventDefault();
                $(this).hide("slow");
            });
        });             
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a href="http://www.google.co.in/" class="NotNormal">Google - No Affect on clicking! instead it will hide it</a><br />
        <a href="http://www.google.co.in/" class="Normal">Google - Working</a>
    </div>
    </form>
</body>
</html>
