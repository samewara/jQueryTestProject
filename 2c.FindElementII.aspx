<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2c.FindElementII.aspx.cs" Inherits="JQueryTestProject._2cFindElementII" %>

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

        // While filter() reduces the selection to the elements that fit the filter expression, 
        // not() does the contrary and removes all elements that fit the expression
        $(document).ready(function() {
            $("li").not(":has(ul)").css("border", "1px solid black");
        });


        //The [expression] syntax is taken from XPath and can be used to filter by attributes
        $(document).ready(function() {
        $("a[name]").css("border", "1px solid black");
        });

        $(document).ready(function() {
            $("a[href*=/content/gallery]").click(function(event) {
                // do something with all links that point somewhere to /content/gallery
                $(this).hide("slow");
                event.preventDefault();
            });
        });

        // There are situations where you need to select the previous or next elements, known as siblings.
        // Here we use some chaining to reduce the code size and gain better performance, as '#faq' is only selected once
        // By using end(), the first find() is undone, so we can start search with the next find() at our #faq element, instead of the dd children
        $(document).ready(function() {
            $('#faq').find('dd').hide().end().find('dt').click(function() {
                $(this).next().slideToggle();
            });
        });

        // Maybe you want to highlight the paragraph that is the parent of the link the user hovers.
        // For all hovered anchor elements, the parent paragraph is searched and a class "highlight" added and removed.
        $(document).ready(function() {
            $("a").hover(function() {
                $(this).parents("p").addClass("highlight");
            }, function() {
                $(this).parents("p").removeClass("highlight");
            });
        });

        //The following is a shortcut for the $(document).ready(callback) notation:
        $(function() {
            // code to execute when the DOM is ready
            $("a").click(function() {
                alert("Hello world!");
            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <ol id="orderedlist">
		    <li>First element, second list</li>
		    <li>Second element, second list</li>
		    <li>Third element, second list</li>
		    <li>Li with child ul
			    <ul>
				    <li>Child One</li>
				    <li>child two</li>
			    </ul>
		    </li>
	    </ol>
	    <br />
	    <a href="http://www.google.co.in/" name="abc">Google - Has a border as it has name</a><br />
	    <a href="http://www.google.co.in/">Google - Has NO border as it does not has name</a><br />
	    <a href="http://www.google.co.in/content/gallery">Google - Has some content in href so hide on click</a><br />
    </div>
    </form>
</body>
</html>
