using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebService;

namespace FrontEnd
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
             string v = Convert.ToString(e.CommandArgument);
             Response.Redirect("Output.aspx?id=" + v);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}