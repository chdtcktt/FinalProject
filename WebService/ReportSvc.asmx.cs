using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using WebService.Model;

namespace WebService
{
    /// <summary>
    /// Summary description for ReportSvc
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class ReportSvc : System.Web.Services.WebService
    {
        RprtPrjDBDataContext RptDb;
        public ReportSvc()
        {
            RptDb = new RprtPrjDBDataContext();
        }

        [WebMethod]
        public List<string> GetReport(int id)
        {
            var report = new Report();

           //first get report info 
           var collection = RptDb.pSelReport(id);

           foreach (var item in collection)
           {
               report.ReportID = item.ReportID;
               report.ReportName = item.ReportName;
               report.ReportHeader = item.ReportHeader;
               report.ReportConnectionString = item.ReportConnectionString;
               report.ReportQuery = item.ReportQuery;
           }

           List<string> viewData = RunRpt.RunSelRpt(report);

           return viewData;
        }
    }
}
