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
    public partial class _7_AJAX_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if (Request.QueryString["rating"] != null) //for GET 
            if (Request.Form["rating"] != null)            
            {
                //   string ratingToStore = Request.QueryString["rating"].ToString();
                string ratingToStore = Request.Form["rating"].ToString();                
                Response.Clear();
                Response.ContentType = "text/xml";
                Response.Write("<ratings><average>4</average><count>2</count></ratings>");
                Response.End();
            }

            if (Request.Form["rating2"] != null)            
            {
                //   string ratingToStore = Request.QueryString["rating"].ToString();
                string ratingToStore = Request.Form["rating2"].ToString();                
                Response.Clear();                
                Response.Write("Sandeep Mewara.");                
                Response.End();
            }                      
        }
    }
}


/*
Additional Notes:
Due to browser security restrictions, most "Ajax" requests are subject to the same origin policy; the request can not successfully retrieve data from a different domain, subdomain, or protocol.
If a request with jQuery.get() returns an error code, it will fail silently unless the script has also called the global .ajaxError() method. 
Script and JSONP requests are not subject to the same origin policy restrictions


*/