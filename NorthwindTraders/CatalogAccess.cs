using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace NorthwindTraders
{
    public class CatalogAccess
    {
        public static DataTable GetProductsInCategory(string categoryID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "spGetProductsInCategory";

            SqlParameter parameter = new SqlParameter("@categoryID", int.Parse(categoryID));
            parameter.DbType = DbType.Int32;
            command.Parameters.Add(parameter);

            DataTable dataTable = new DataTable();
            try
            {
                command.Connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                dataTable.Load(reader);
                reader.Close();
            }
            catch (Exception F)
            {

            }
            finally
            {
                command.Connection.Close();
            }
            return dataTable;
        }


        public static DataTable GetAllCategories()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "spGetAllCategories";

            DataTable dataTable = new DataTable();
            try
            {
                command.Connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                dataTable.Load(reader);
                reader.Close();
            }
            catch (Exception F)
            {

            }
            finally
            {
                command.Connection.Close();
            }

            return dataTable;
        }

        public static Product GetProductDetails(string prodID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "spGetProductDetail";

            SqlParameter parameter = new SqlParameter("@productID", prodID);
            parameter.DbType = DbType.Int32;
            command.Parameters.Add(parameter);


            DataTable dataTable = new DataTable();
            try
            {
                command.Connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                dataTable.Load(reader);
                reader.Close();
            }
            catch (Exception F)
            {

            }
            finally
            {
                command.Connection.Close();
            }

            Product pd = new Product();
            if (dataTable.Rows.Count > 0)
            {
                DataRow dr = dataTable.Rows[0];
                pd.Name = dr["ProductName"].ToString();
                pd.ProductID = int.Parse(prodID);
                pd.Description = dr["Description"].ToString();
                pd.ListPrice = decimal.Parse(dr["ListPrice"].ToString());
                pd.StandardCost = decimal.Parse(dr["StandardCost"].ToString());
                pd.ReorderLevel = int.Parse(dr["ReorderLevel"].ToString());
                pd.TargetLevel = int.Parse(dr["TargetLevel"].ToString());
                pd.supplierID = int.Parse(dr["SupplierID"].ToString());


            }
            return pd;
        }
    }
}