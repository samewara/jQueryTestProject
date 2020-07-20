<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2b.FindElement.aspx.cs" Inherits="JQueryTestProject._2bFindElement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Test Page</title>
    <link type="text/css" href="StyleSheets/MyTest.css" rel="Stylesheet" />
    <script type="text/javascript" src="jQuery File/jquery-1.4.1.js"></script>
    <script type="text/javascript">
    // Normal scripts
    
    </script>
    <script type="text/javascript">
        // jQuery Scripts

        //jQuery provides two approaches to select elements. 
        // 1 .The first uses a combination of CSS and XPath selectors passed as a string to the jQuery constructor (eg. $("div > ul a"))
        // 2. The second uses several methods of the jQuery object.

        //////////////////////////////////////////////////////////
        // # is used to get by ID
        //In classic JavaScript, you could select it by using document.getElementById("orderedlist"). With jQuery, we do it like this:
        $(document).ready(function() {
            $("#orderedlist").addClass("RedCss");
        });

        // add some more classes to the child elements of this list
        $(document).ready(function() {
            $("#orderedlist2 > li").addClass("BlueCss");
        });

        //add and remove the class when the user hovers the li element, but only on the last element in the list
        $(document).ready(function() {
            $("#orderedlist3 li:last").hover(function() { $(this).addClass("GreenCss");}, function() {$(this).removeClass("GreenCss");});
        });

        // find() allows you to further search the descendants of the already selected elements,
        // therefore $("#orderedlist").find("li") is mostly the same as $("#orderedlist li").
        // each() iterates over every element and allows further processing. Most methods, like addClass(), use each() themselves.         
        // i starting from 0 automatically.
        $(document).ready(function() {
            $("#orderedlist4").find("li").each(function(i) {
                $(this).append(" SM! " + i);
            });
        });
        
        
        ///////////////////////////////////////////////////////
        // . is used to get by CSS
        // Inside the ready event, add a click handler to the link:
        // For click and most other events, you can prevent the default behaviour 
        $(document).ready(function() {
            $(".Normal").click(function(event) {
            alert("As you can see, label was clicked!");                
            });
        });

        ////////////////////////////////////////////////////////
        //direct tag is used to get by tag
        //Adding and Removing an HTML Class
        $(document).ready(function() {
            $("label").hover(function() {
                $(this).addClass("RedCss");
            }, function(event) { $(this).removeClass("RedCss"); });
        });
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <ol id="orderedlist">
		    <li>First element</li>
		    <li>Second element</li>
		    <li>Third element</li>
	    </ol>
	    <ol id="orderedlist2">
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
	    <ol id="orderedlist3">
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
	    <ol id="orderedlist4">
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
	    <a href="http://www.google.co.in/" class="Normal">Google - Working</a> <br />
	    <label id="lblTestCSS" class="Normal">Click me to redirect to Google & change color to Red on Hover</label> <br />
	    <label id="lblTestTag">Click me to change the color to Red</label>
    </div>
    </form>
</body>
</html>
