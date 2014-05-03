using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebService.Model
{
    public class RunRpt
    {
        public static List<string> RunSelRpt(Report report)
        {

            using (SqlConnection conn = new SqlConnection(report.ReportConnectionString))
            {
                conn.Open();
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    cmd.CommandText = report.ReportQuery;
                    cmd.CommandType = CommandType.Text;
                    SqlDataReader reader = cmd.ExecuteReader();

                    List<string> returnData = new List<string>();
                    while(reader.Read())
                    {
                        int item = 0;
                        returnData.Add(reader.GetString(item));
                        item++;
                    }
                    conn.Close();
                    return returnData;
                }
            }

        }
    }
}