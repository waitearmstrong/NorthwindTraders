using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NorthwindTraders
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                PopulateControls();
        }

        protected void PopulateControls()
        {
            DataTable dt = ShoppingCartAccess.GetCartItems();

            if (dt.Rows.Count > 0)
            {
                Label1.Text = "These are the items in your cart:  ";
                grid.DataSource = dt;
                grid.DataBind();
               
                decimal amount = ShoppingCartAccess.GetCartTotal();
                cartTotal.Text = String.Format("{0:c}", amount);
                UpdateQuantityBtn.Enabled = true;

            }
            else
            {

                Label1.Text = "These are no items in your cart  ";
                grid.Visible = false;
                grid.DataBind();
                cartTotal.Text = String.Format("{0:c}", 0);
                UpdateQuantityBtn.Enabled = false;
            }
        }

        protected void UpdateQuantityBtn_Click(object sender, EventArgs e)
        {
            int rowsCount = grid.Rows.Count;
            int newQuantity;
            string productID;
            int prodID;
            GridViewRow gridRow;
            TextBox qtyTextBox;

            bool success = true;

            for (int i = 0; i < rowsCount; i++)
            {
                gridRow = grid.Rows[i];
                productID = grid.DataKeys[i].Value.ToString();
      
                qtyTextBox = (TextBox)gridRow.FindControl("EditQty");
                if (Int32.TryParse(qtyTextBox.Text, out newQuantity))
                {
                    success = success && ShoppingCartAccess.UpdateItem(productID, newQuantity);
                }
                else
                {
                    success = false;
                }
            }

            statusLabel.Text =
                success ? "Your cart was successfully updated." : "Update Failed, Please check your cart.";

            PopulateControls();
        }

        protected void CheckoutBtn_OnClickBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/OrderFolder/Checkout.aspx");
        }
    }
}