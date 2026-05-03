using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINALPROJECT.Pages
{
    public partial class Page5 : System.Web.UI.Page
    {
       
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    string SQLStr = "SELECT * FROM [TableUser]";
                    DataSet ds = RetrieveUsersTable(SQLStr);
                    DataTable dt = ds.Tables[0];
                    string table = BuildUsersTable(dt);
                    tableDiv.InnerHtml = table;
                }
            }

            public DataSet RetrieveUsersTable(string SQLStr)
            {
                string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\ziv eliyahu\source\repos\FINALPROJECT\FINALPROJECT\App_Data\DataBase.mdf"";Integrated Security=True";

                SqlConnection con = new SqlConnection(connectionString);

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = SQLStr;
                cmd.Connection = con;

                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                ad.Fill(ds, "Table");

                return ds;
            }

            public string BuildUsersTable(DataTable dt)
            {
                string str = "<table class='usersTable' align='center'>";
                str += "<tr>";
                foreach (DataColumn column in dt.Columns)
                {
                    str += "<td>" + column.ColumnName + "</td>";
                }
                str += "</tr>";

                foreach (DataRow row in dt.Rows)
                {
                    str += "<tr>";
                    foreach (DataColumn column in dt.Columns)
                    {
                        str += "<td>" + row[column] + "</td>";
                    }
                    str += "</tr>";
                }

                str += "</table>";
                return str;
            }

            public string BuildSQLStr(string str)
            {
                if (string.IsNullOrWhiteSpace(str))
                {
                    return "SELECT * FROM [TableUser]";
                }

                return "SELECT * FROM [TableUser] WHERE firstName LIKE N'%" + str + "%' OR lastName LIKE N'%" + str + "%'";

            }


            public void Click_Filter(object sender, EventArgs e)
            {
                string SQLStr = BuildSQLStr(Request.Form["filter"]);
                DataSet ds = RetrieveUsersTable(SQLStr);
                string table = BuildUsersTable(ds.Tables[0]);
                tableDiv.InnerHtml = table;
            }
        }
    }
    
