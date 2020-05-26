using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;

namespace NorthwindTraders
{
    public class ShoppingCartAccess
    {
        public static void AddItem(string cartID, string productID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "spShoppingCartAdditem";

            SqlParameter parameter = new SqlParameter("@cartID", cartID);
            parameter.DbType = DbType.String;
            command.Parameters.Add(parameter);

            SqlParameter parameterTwo = new SqlParameter("@prodID", productID);
            parameterTwo.DbType = DbType.Int32;
            command.Parameters.Add(parameterTwo);

           


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

        public static decimal GetCartTotal()
        {
            string cartID;
            HttpContext context = HttpContext.Current;
            if (context.Request.Cookies["NT_CartID"] != null)
            {
                cartID = context.Request.Cookies["NT_CartID"].Value;
            }
            else
            {
                cartID = Guid.NewGuid().ToString();

                HttpCookie cookie = new HttpCookie("NT_CartID", cartID);

                DateTime currentDate = DateTime.Now;
                TimeSpan timeSpan = new TimeSpan(10, 0, 0);
                DateTime experiationDate = currentDate.Add(timeSpan);
                cookie.Expires = experiationDate;

                context.Response.Cookies.Add(cookie);
            }

            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "spShoppingCartGetTotalAmount";

            SqlParameter parameter = new SqlParameter("@CartID", cartID);
            parameter.DbType = DbType.String;
            command.Parameters.Add(parameter);
            DataTable table = new DataTable();

            decimal cartTotal = 0m;
            try
            {
                command.Connection.Open();
                decimal.TryParse(command.ExecuteScalar().ToString(), out cartTotal);
            }
            catch (Exception F)
            {
                Debug.Write("\n\n\n" + F);
            }
            finally
            {
                command.Connection.Close();
            }

            return cartTotal;
        }
    

        public static DataTable GetCartItems()
        {
            string cartID;
            HttpContext context = HttpContext.Current;
            if (context.Request.Cookies["NT_CartID"] != null)
            {
                cartID = context.Request.Cookies["NT_CartID"].Value;
            }
            else
            {
                cartID = Guid.NewGuid().ToString();

                HttpCookie cookie = new HttpCookie("NT_CartID", cartID);

                DateTime currentDate = DateTime.Now;
                TimeSpan timeSpan = new TimeSpan(10, 0, 0);
                DateTime experiationDate = currentDate.Add(timeSpan);
                cookie.Expires = experiationDate;

                context.Response.Cookies.Add(cookie);
            }

            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "spShoppingCartGetItems";

            SqlParameter parameter = new SqlParameter("@cartID", cartID);
            parameter.DbType = DbType.String;
            command.Parameters.Add(parameter);
            DataTable table = new DataTable();
            try
            {
                command.Connection.Open();
                SqlDataReader rdr = command.ExecuteReader();
                table.Load(rdr);
                rdr.Close();
            }
            catch (Exception F)
            {
                Debug.Write("\n\n\n" + F);
            }
            finally
            {
                command.Connection.Close();
            }

            return table;
        }


        public static bool UpdateItem(string productID, int newQuantity)
        {
            string cartID;
            HttpContext context = HttpContext.Current;

            if (context.Request.Cookies["NT_CartID"] != null)
            {
                cartID = context.Request.Cookies["NT_CartID"].Value;
            }
            else
            {
                cartID = Guid.NewGuid().ToString();

                HttpCookie cookie = new HttpCookie("NT_CartID", cartID);
                DateTime currentDate = DateTime.Now;
                TimeSpan timeSpan = new TimeSpan(10, 0, 0);
                DateTime experiationDate = currentDate.Add(timeSpan);
                cookie.Expires = experiationDate;

                context.Response.Cookies.Add(cookie);
            }

            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "spShoppingCartUpdateItem";

            SqlParameter parameter = new SqlParameter("@CartID", cartID);
            parameter.DbType = System.Data.DbType.String;
            command.Parameters.Add(parameter);

            SqlParameter parameterTwo = new SqlParameter("@prodID", productID);
            parameterTwo.DbType = System.Data.DbType.Int32;
            command.Parameters.Add(parameterTwo);
            SqlParameter parameterThree = new SqlParameter("@quantity", newQuantity);
            parameterThree.DbType = System.Data.DbType.Int32;
            command.Parameters.Add(parameterThree);
            DataTable table = new DataTable();


            try
            {
                command.Connection.Open();
                return command.ExecuteNonQuery() > 0;
            }
            catch (Exception F)
            {
                Debug.Write("\n\n\n" + F);
            }
            finally
            {
                command.Connection.Close();
            }

            return false;
        }
    }
}
