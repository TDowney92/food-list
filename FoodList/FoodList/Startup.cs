using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

// add refences for asp.net identity
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security.Cookies;

[assembly: OwinStartup(typeof(FoodList.StartUp))]

namespace FoodList
{
    public class StartUp
    {
        public void Configuration(IAppBuilder app)
        {
            // cookie tracking config & authentaction stuff
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/default.aspx")
            });

            // For more information on how to configure your application, visit http://go.microsoft.com/fwlink/?LinkID=316888
        }
    }
}
