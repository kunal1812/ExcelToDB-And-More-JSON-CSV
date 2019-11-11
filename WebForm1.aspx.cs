using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ExcelToDbAndConToMore
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        String str = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(str))
            {
                sqlCon.Open();
                SqlDataAdapter sqlAdp = new SqlDataAdapter("SELECT [Item Name],[Category Name],[Average Price],[Date],[City],[Unit],[Amount To Be Paid] FROM [dbo].[ExcTOdb]",sqlCon);

                DataTable dt=new DataTable();
                sqlAdp.Fill(dt);
                GvStore.DataSource = dt;
                GvStore.DataBind();
            }
        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            if(ddlExToDb.SelectedValue=="CSV")      //Check condition for CSV
          { 
            //conversion
            using (SqlConnection sqlCon = new SqlConnection(str))
            {
                SqlDataAdapter Adp = new SqlDataAdapter("SELECT [Item Name],[Category Name],[Average Price],[Date],[City],[Unit],[Amount To Be Paid] FROM [dbo].[ExcTOdb]", sqlCon);
                using (DataTable dt = new DataTable())
                {
                    Adp.Fill(dt);
                    string csv = string.Empty;

                    foreach(DataColumn column in dt.Columns)
                    {
                        csv += column.ColumnName +',';
                    }
                    csv += "\r\n";

                    foreach(DataRow row in dt.Rows)
                    {
                        foreach (DataColumn column in dt.Columns)
                        {
                            csv += Convert.ToString(row[column.ColumnName]).Replace(",", ";") + ',';
                        }
                        csv += "\r\n";
                    }
                    //Response.Clear();
                    //Response.Buffer = true;
                    //Response.AddHeader("content-disposition", "attachment;filename=SqlExport.csv");
                    //Response.Charset = "";
                    //Response.ContentType = "application/text";
                    //Response.Output.Write(csv);
                    //Response.Flush();
                    //Response.End();

                   // Response.Output.Write(csv.ToString());
                    // StreamWriter sw = new StreamWriter("~/.SqlExport.csv");
                    StreamWriter file = new StreamWriter(@"C:\Users\kunal.jadhav\datacsv.txt");
                    file.WriteLine(csv.ToString());
                    //Response.Output.Write(csv.ToString());
                   // Response.Flush();
                    //Response.End();
                    file.Close();
                }
               
            }
          }
        }
    }
}