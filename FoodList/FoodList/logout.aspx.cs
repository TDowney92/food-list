using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodList
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // log out the user
            var AuthenticationManger =
                HttpContext.Current.GetOwinContext().Authentication;
            AuthenticationManger.SignOut();
            Response.Redirect("login.aspx");
        }
    }
}