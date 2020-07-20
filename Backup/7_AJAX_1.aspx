<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="7_AJAX_1.aspx.cs" Inherits="JQueryTestProject._7_AJAX_1" %>

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
            // generate markup
            $("#rating").append("Please rate: ");

            for (var i = 1; i <= 5; i++)
                $("#rating").append("<a href='#'>" + i + "</a> ");

            // add markup to container and apply click handlers to anchors
            $("#rating a").click(function(e) {
                // stop normal link click
                e.preventDefault();

                // send request
                $.post("7_AJAX_1.aspx", { rating: $(this).html() }, function(xmlresponse) {
                //$.get("7_AJAX_1.aspx", { rating: $(this).html() }, function(xmlresponse) {
                    // format and output result
                    $("#rating").html("Thanks for rating, current average: " + $("average", xmlresponse).text() + ", number of votes: " + $("count", xmlresponse).text());
                });
            });
        });

        $(document).ready(function() {
            $("#myLabel").click(function() {
                $.ajax({
                    url: '7_AJAX_1.aspx',
                    type: "POST",
                    data: "rating2=5",
                    success: function(data) {
                        $('#result').html(data);
                        $('#myLabel').hide('slow');
                        //alert('Load was performed.');
                    }
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="rating">

    </div>
    <br />
    <label id="myLabel">Click me Check Ajax syntax!</label>
        <div id="result">

    </div>
    </form>
</body>
</html>
