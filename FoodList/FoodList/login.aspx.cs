﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodList
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // start a user store, user manager, user variables
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            // find the user with credentials
            var user = userManager.Find(txtUsername.Text, txtPassword.Text);

            // iff user is foud make a cookie
            if (user != null)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuathenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties()
                { IsPersistent = false }, userIdentity);
                {
                    else
                    {
                        lblMessage.Text = "Invalid Login";
                        lblMessage.CssClass = "alert alert-danger col-sm-offset-3";
                    }
                }
            }
        }
    }
}