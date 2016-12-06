using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


// identity refence
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
namespace FoodList
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // use default connection in web.config
            var userStore = new UserStore<IdentityUser>();
            var manger = new UserManager<IdentityUser>(userStore);
            // populate from register
            var user = new IdentityUser()
            {
                UserName = textUsername.Text
            };
            // save the user
            IdentityResult result = manger.Create(user, txtPassword.Text);
            // evaluate the result
            if (result.Succeeded)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                lblMessage.Text = result.Errors.FirstOrDefault();
                lblMessage.CssClass = "alert alert-danger";
            }
        }
    }
}