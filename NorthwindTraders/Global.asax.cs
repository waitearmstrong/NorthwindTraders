using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using NorthwindTraders.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace NorthwindTraders
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            ApplicationDbContext context = new ApplicationDbContext();

            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));

            var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>());

            if (!roleManager.RoleExists("Employee"))
            {
                var role = new IdentityRole();
                role.Name = "Employee";
                roleManager.Create(role);

                var user = new ApplicationUser();
                user.UserName = "empuser1@test.com";
                user.Email = "empuser1@test.com";
                string userPWD = "Test1234!";

                var chkUser = userManager.Create(user, userPWD);

                if (chkUser.Succeeded)
                {
                    userManager.AddToRole(user.Id, "Employee");
                }
            }

            if (!roleManager.RoleExists("Administrator"))
            {
                var roleTwo = new IdentityRole();
                roleTwo.Name = "Administrator";
                roleManager.Create(roleTwo);


                var userTwo = new ApplicationUser();
                userTwo.UserName = "adminuser1@test.com";
                userTwo.Email = "adminuser1@test.com";
                string userPWD = "Test1234!";

                var chkUser = userManager.Create(userTwo, userPWD);

                if (chkUser.Succeeded)
                {
                    userManager.AddToRole(userTwo.Id, "Administrator");
                }
            }
            // Code that runs on application startup

            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}