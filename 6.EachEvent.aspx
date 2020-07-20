<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="6.EachEvent.aspx.cs" Inherits="JQueryTestProject._6EachEvent" %>

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
        // jQuery Script
        // call methods on DOM elements that are not covered by jQuery.
        // Think of a form you would like to reset after you submitted it successfully via AJAX
        
        // This code selects the first form element and calls reset() on it.
        $(document).ready(function() {
            // use this to reset a single form
            $("#reset").click(function() {
                //$("form")[0].reset(); Not working  
                $("#form2")[0].reset(); //Working
                // $("form")[1].reset();
            });
        });

        // In case you had more than one form, you could also do this
        // Note that in an .each() function, this refers to the actual element. 
        // Also note that, since the reset() function belongs to the form element and not to the jQuery object, 
        // we cannot simply call $("form").reset() to reset all the forms on the page
        $(document).ready(function() {
            // use this to reset several forms at once
            $("#reset2").click(function() {
                $("form").each(function(i) {
                    this.reset(); // Not working something wrong.
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="Text1" type="text" value="1" />
        <input id="Text2" type="text" value="2" />
        <input id="Text3" type="text" value="3" />
        <input id="reset" type="button" value="Reset1" />
        <label id="lable1" runat="server"></label>
    </div>
    </form>
    <form id="form2">
        <input id="Text4" type="text" value="4" />
        <input id="Text5" type="text" value="5" />
        <input id="Text6" type="text" value="6" />
        <input id="reset2" type="button" value="Reset2" />
        <label id="lable2" runat="server"></label>
    </form>
</body>
</html>
