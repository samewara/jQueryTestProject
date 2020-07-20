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
    public partial class _7_AJAX_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToLongTimeString();

            if (Request.QueryString["rating2"] != null)            
            {
                //   string ratingToStore = Request.QueryString["rating"].ToString();
                string ratingToStore = Request.QueryString["rating2"].ToString();
                System.Threading.Thread.Sleep(3000);
                Response.Clear();                
                Response.Write("This message is returned from server Side.");                
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