using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AdvancedProgramming.Web.Filters
{
    public class LogActionFilter : ActionFilterAttribute​
    {

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
            Debug.WriteLine(filterContext.HttpContext.Request.RawUrl + " En EJECUCION por el profe");
        }

        public override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            base.OnActionExecuted(filterContext);
            Debug.WriteLine(filterContext.HttpContext.Request.RawUrl + " EJECUTADO por el profe");
        }

    }
}