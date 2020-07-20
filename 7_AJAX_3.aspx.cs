using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace JQueryTestProject
{
    public partial class _7_AJAX_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToLongTimeString();

            if (Request.QueryString["rating2"] != null)            
            {
                //   string ratingToStore = Request.QueryString["rating"].ToString();
                string ratingToStore = Request.QueryString["rating2"].ToString();                
                Response.Clear();                
                Response.Write("This message is returned from server Side.");                
                Response.End();
            }                      
        }
    }
}


/*
Get JSON using jQuery:
JavaScript Object Notation (JSON) is a popular light weight format that can be used to get data from server. 
JSON has became very popular since that web pages have became interactive using AJAX. 
JSON format is easy to create from the server and easy to parse at client as it is the basic object representation in JavaScript.


*/