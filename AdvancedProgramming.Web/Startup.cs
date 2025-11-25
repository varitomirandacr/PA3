using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AdvancedProgramming.Web.Startup))]
namespace AdvancedProgramming.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
