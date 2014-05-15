using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrontEnd
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            ReportProjectDBEntities1 db = new ReportProjectDBEntities1();


            try
            {
                Report r = new Report
                {
                    ReportQuery = TextBoxSQL.Text,
                    ReportHeader = TextBoxHeader.Text,
                    ReportName = TextBoxName.Text,
                    ReportConnectionString = TextConString.Text                
                };


                db.Reports.Add(r);

                ClearBoxes();

                Response.Redirect("Reports.aspx");
            }
            catch
            {
                
            }

      
        }

        private void ClearBoxes()
        {
            TextConString.Text = "";
            TextBoxHeader.Text = "";
            TextBoxName.Text = "";
            TextBoxSQL.Text = "";
        }
    }
}