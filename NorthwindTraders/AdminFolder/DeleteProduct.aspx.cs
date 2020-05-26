using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NorthwindTraders.AdminFolder
{
    public partial class DeleteProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DeleteProductBtn_Click(object sender, EventArgs e)
        {
            HttpContext context = HttpContext.Current;
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "spCreatePurchaseOrder";
            var cartID = Request.Cookies["NT_CartID"].Value;
            SqlParameter parameter = new SqlParameter("@productID", cartID);
            parameter.DbType = DbType.Int32;
            command.Parameters.Add(parameter);

            try
            {
                command.Connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception F)
            {
                Debug.Write("\n\n\n" + F);
            }
            finally
            {
                command.Connection.Close();
            }
            
        }
    }
    }
