using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NorthwindTraders.Startup))]
namespace NorthwindTraders
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
