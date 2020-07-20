<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5.Callback.aspx.cs" Inherits="JQueryTestProject._5Callback" %>

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

        // A callback is a function that is passed as an argument to another function 
        // and is executed after its parent function has completed.
        // The special thing about a callback is that functions that appear after the "parent" can execute before the callback executes

        $(document).ready(function() {
            if (confirm("Without params?")) {
                // Callback without arguements
                $.get('5.Callback.aspx', myCallBackNoParams);
            }
            else {
                // Callback with arguements
                $.get('5.Callback.aspx', function() { myCallBack("v1", "v2") });
            }
        });
        
        function myCallBackNoParams() {
            alert("No Params");
        }

        function myCallBack(para1, para2) {
            alert("Params 1:"+ para1+"\n Params 2:"+ para2);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Callback with and without params!! 
    </div>
    </form>
</body>
</html>
