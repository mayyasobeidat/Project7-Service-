using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Project7.Startup))]
namespace Project7
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
