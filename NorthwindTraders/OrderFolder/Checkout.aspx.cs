using Microsoft.AspNet.Identity;
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

namespace NorthwindTraders.OrderFolder
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PopulateControls();
        }

        protected void PopulateControls()
        {
            DataTable dt = ShoppingCartAccess.GetCartItems();

            if (dt.Rows.Count > 0)
            {
                grid.DataSource = dt;
                grid.DataBind();

                decimal amount = ShoppingCartAccess.GetCartTotal();
                cartTotal.Text = String.Format("{0:c}", amount);
               

            }
            else
            {
               // Label1.Text = "These are no items in your cart  ";
                grid.Visible = false;
                grid.DataBind();
                cartTotal.Text = String.Format("{0:c}", 0);
                
            }
        }

        protected void PlaceOrderBtn_Click(object sender, EventArgs e)
        {
            HttpContext context = HttpContext.Current;
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "spCreatePurchaseOrder";
            var cartID = Request.Cookies["NT_CartID"].Value;
            SqlParameter parameter = new SqlParameter("@CartID", cartID);
            parameter.DbType = DbType.String;
            command.Parameters.Add(parameter);

            SqlParameter parameterTwo = new SqlParameter("@empID", User.Identity.GetUserId());
            parameterTwo.DbType = DbType.String;
            command.Parameters.Add(parameterTwo);

            SqlParameter parameterThree = new SqlParameter("@PurchaseOrderid", DbType.Int32);
            parameterThree.Direction = ParameterDirection.Output;
            command.Parameters.Add(parameterThree);




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
            context.Response.Redirect("~/OrderFolder/OrderPlaced.aspx?OrderId=" + parameterThree.Value);
        }
    }
}
