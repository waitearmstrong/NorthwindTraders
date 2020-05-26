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
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void AddProductButton_Click(object sender, EventArgs e)
        {
            int categoryID = int.Parse(DropDownAddCategory.SelectedValue);
            int supplierID = int.Parse(AddSupplier.SelectedValue);
            string productName = AddProductName.Text;
            string productDesc = AddDescription.Text;
            string productCode = AddProductCode.Text;
            decimal productStandardCost = Decimal.Parse(AddStandardCost.Text);
           decimal productListPrice = Decimal.Parse(AddListPrice.Text);
            int reorderLevel = int.Parse(AddReorderLevel.Text);
            int targetLevel = int.Parse(AddTargetLevel.Text);
            int availableQty = int.Parse(AddAvailableQty.Text);
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = connection.CreateCommand();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "spAddProduct";

            SqlParameter parameter = new SqlParameter("@categoryID", categoryID);
            parameter.DbType = DbType.Int32;
            command.Parameters.Add(parameter);

            SqlParameter paramTwo = new SqlParameter("@supplierID", supplierID);
            paramTwo.DbType = DbType.Int32;
            command.Parameters.Add(paramTwo);

            SqlParameter paramThree = new SqlParameter("@productName", productName);
            paramThree.DbType = DbType.String;
            command.Parameters.Add(paramThree);

            SqlParameter paramFour = new SqlParameter("@description", productName);
            paramFour.DbType = DbType.String;
            command.Parameters.Add(paramFour);

            SqlParameter paramFive = new SqlParameter("@listPrice", productListPrice);
            paramFive.DbType = DbType.Decimal;
            command.Parameters.Add(paramFive);

            SqlParameter paramSix = new SqlParameter("@standardCost", productStandardCost);
            paramSix.DbType = DbType.Decimal;
            command.Parameters.Add(paramSix);

            SqlParameter paramSeven = new SqlParameter("@availableQty", availableQty);
            paramSeven.DbType = DbType.Int32;
            command.Parameters.Add(paramSeven);

            SqlParameter paramEight = new SqlParameter("@reorderLevel", reorderLevel);
            paramEight.DbType = DbType.Int32;
            command.Parameters.Add(paramEight);

            SqlParameter paramNine = new SqlParameter("@targetLevel", targetLevel);
            paramNine.DbType = DbType.Int32;
            command.Parameters.Add(paramNine);

            SqlParameter paramEleven = new SqlParameter("@productCode", productCode);
            paramEleven.DbType = DbType.String;
            command.Parameters.Add(paramEleven);

            SqlParameter parameterTen = new SqlParameter("@productid", DbType.Int32);
            parameterTen.Direction = ParameterDirection.Output;
            command.Parameters.Add(parameterTen);



            try
            {
                command.Connection.Open();
                int result = command.ExecuteNonQuery();
                if(result >0)
                {
                    StatusLabel.Text = "Item added successfully";
                    StatusLabel.Visible = true;
                }
                else
                {
                    StatusLabel.Text = "Item not added.";
                    StatusLabel.Visible = true;
                }
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