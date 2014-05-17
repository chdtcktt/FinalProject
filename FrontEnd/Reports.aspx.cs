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
            if (Session["authentication"] != "o5kF4VGTwOMe7GMkwHSM")
                Response.Redirect("Default.aspx");

        }


 
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var item = GridView1.SelectedRow.Cells[0].Text;


            Response.Redirect("Output.aspx?id=" + item);

        }

   


   
   


    }
}