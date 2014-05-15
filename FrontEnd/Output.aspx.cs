using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrontEnd
{
    public partial class Output : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);

            ServiceReference1.ReportSvcSoapClient Svc = new ServiceReference1.ReportSvcSoapClient();
            
            id++;
            List<string> collection = Svc.GetReport(id);

            string value = "";
            foreach (var item in collection)
            {
                value += item + "  \n";
            }

            TextBox1.Text = value;

      
        }


    }
}