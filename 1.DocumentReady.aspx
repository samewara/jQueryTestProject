<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1.DocumentReady.aspx.cs" Inherits="JQueryTestProject._1DocumentReady" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Test Page</title>
    <link type="text/css" href="StyleSheets/MainPage.css" rel="Stylesheet" />
    <script type="text/javascript" src="jQuery File/jquery-1.4.1.js"></script>
    <script type="text/javascript">
    // Normal scripts
    
    // The Javascript code isn't run until all images are finished downloading. 
    // Further, window.onload won't run until HTML 'document' isn't finished loading yet!
    window.onload = function(){ alert("Welcome to normal JS"); }
    </script>
    <script type="text/javascript">
        // jQuery Scripts
        // For having jQuery intellisense, you need to have vsdoc for jQuery and this patch(http://blogs.msdn.com/webdevtools/archive/2008/11/07/hotfix-to-enable-vsdoc-js-intellisense-doc-files-is-now-available.aspx) for VS2008 SP1
        // VS 2010 has support for –vsdoc files built-in.
        
        
        //statement that checks the document and waits until it's ready to be manipulated, using its ready event
        // thus this excutes before normal JS alert.
        $(document).ready(function() {
            alert("Welcome to jQuery JS");
        });

//        $(document).ready(function() {
//            $("input[@name='ctl00$ContentPlaceHolder2$RadioButtonList1']").change(function() {
//                alert('Test');
//            });
//        });
                
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Hi!
    </div>
    </form>
</body>
</html>
