using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


// identity refence
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EnityFramework;
namespace FoodList
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // use default connection in web.config
            var userStore = new UserStore<IdentityUser>();
            var manger = new UserManger<IdentityUser>(userStore);
            // populate from register
            var user = new IdentityUser()
            {
                textUsername = txtUsername.Text
            };
            // save the user
            IdentityResut result = manger.Create(user, txtPassword.Text);
            // evaluate the result
            if (result.Secceeded)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                lblMessage.Text = result.errors.firstordefault();
                lblMessage.cssclasss = "alert alert-danger";
            }
        }
    }
}