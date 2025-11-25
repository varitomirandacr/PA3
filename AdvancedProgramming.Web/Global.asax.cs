using NLog;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace AdvancedProgramming.Web
{
    public class MvcApplication : System.Web.HttpApplication
    {
        private static readonly Logger logger = new NLog.Config.LoggingConfiguration().LogFactory.GetLogger("App Main Logger");

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Current.Response.Cache.SetNoStore();
            HttpContext.Current.Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            HttpContext.Current.Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
            HttpContext.Current.Response.Cache.SetValidUntilExpires(false);
        }


        protected void Application_Error()
        {
            Exception ex = Server.GetLastError();
            logger.Error(ex, $"Log generado desde el App Main Start: {ex.Message}");
            Debug.WriteLine($"Log generado desde el App Main Start: {ex.Message}");

            try { Server.ClearError(); } catch (Exception ex1) 
            {
                var test = ex1.Message;
            }
            Response.Redirect("https://localhost:44383/");
        }
    }
}
