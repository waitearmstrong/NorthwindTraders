using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NorthwindTraders.AdminFolder
{
    public partial class AdminMainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddProducts_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminFolder/AddProduct.aspx");
        }
    }
}