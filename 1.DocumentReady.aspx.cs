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
    public partial class _1DocumentReady : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Just to prelong the page load such that Javacsript in Onload executes
            System.Threading.Thread.Sleep(3000);
        }
    }
}
