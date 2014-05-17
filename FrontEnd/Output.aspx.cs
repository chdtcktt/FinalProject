using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrontEnd
{
    public partial class Output : System.Web.UI.Page
    {

        ServiceReference1.ReportSvcSoapClient Svc;
        List<string> collection;
        public Output()
        {
            Svc = new ServiceReference1.ReportSvcSoapClient();

        }
        
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["authentication"] != "o5kF4VGTwOMe7GMkwHSM")
                Response.Redirect("Default.aspx");



            int id = Convert.ToInt32(Request.QueryString["id"]);
            collection = Svc.GetReport(id);
            ExportToText();

            
      
        }

        protected void ButtonExportToCSV_Click(object sender, EventArgs e)
        {
            string value = "";
            foreach (var item in collection)
	        {
                value += item + ",";
		 
	        }

            TextBox1.Text = value;

        }

        protected void ButtonExportToText_Click(object sender, EventArgs e)
        {
            ExportToText();
        }
 
        private void ExportToText()
        {
            string value = "";
            foreach (var item in collection)
            {
                value += item + "  \n";
            }

            TextBox1.Text = value;
        }


    }
}