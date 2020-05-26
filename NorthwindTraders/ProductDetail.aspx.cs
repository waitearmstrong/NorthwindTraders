using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NorthwindTraders
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PopulateControls();
        }
        protected void PopulateControls()
        {
            string prodID = Request.QueryString["ProductID"];
            Product pd = CatalogAccess.GetProductDetails(prodID);

            titleLable.Text = pd.Name;
            descLabel.Text = pd.Description;
            targetLevelLabel.Text = pd.TargetLevel.ToString();
            reorderLevelLabel.Text = pd.ReorderLevel.ToString();
            priceLabel.Text = String.Format("{0:c}",
                pd.ListPrice);


        }
        protected void AddToCart_Button_Click(object sender, EventArgs e)
        {
            string prodID = Request.QueryString["ProductID"];
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

            ShoppingCartAccess.AddItem(cartID, prodID);
        }
    }
}