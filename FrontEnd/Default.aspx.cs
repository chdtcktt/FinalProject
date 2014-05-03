using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrontEnd
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login(object sender, EventArgs e)
        {            
            if (TxtUsername.Text == "testuser" && TxtPassword.Text == "testpassword")
                Response.Redirect("Reports.aspx");


            LblMsg.Text = "-Login Failed";

        }

       
       

    }
}