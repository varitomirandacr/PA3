using AdvancedProgramming.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AdvancedProgramming.Web.Controllers
{
    public class ControllerBase : Controller
    {
        protected readonly ProductBusiness ProductBusiness;
        protected readonly CategoryBusiness CategoryBusiness;
        protected readonly ComponentBusiness ComponentBusiness;
        protected readonly NotificationBusiness NotificationBusiness;
        protected readonly RoleBusiness RoleBusiness;
        protected readonly SupplierBusiness SupplierBusiness;
        protected readonly TaskBusiness TaskBusiness;
        protected readonly UserBusiness UserBusiness;
        protected readonly InventoryBusiness InventoryBusiness;

        public ControllerBase()
        {
            ProductBusiness = new ProductBusiness();
            CategoryBusiness = new CategoryBusiness();
            ComponentBusiness = new ComponentBusiness();
            NotificationBusiness = new NotificationBusiness();
            RoleBusiness = new RoleBusiness();
            SupplierBusiness = new SupplierBusiness();
            TaskBusiness = new TaskBusiness();
            UserBusiness = new UserBusiness();
            InventoryBusiness = new InventoryBusiness();
        }

        protected void SetFilters()
        {
            ViewBag.CategoryID = new SelectList(CategoryBusiness.GetCategories(id: 0), "CategoryID", "CategoryName");
            ViewBag.SupplierID = new SelectList(SupplierBusiness.GetSuppliers(id: 0), "SupplierID", "SupplierName");
            ViewBag.RoleID = new SelectList(RoleBusiness.GetRoles(id: 0), "RoleID", "RoleName");
            ViewBag.InventoryID = new SelectList(InventoryBusiness.GetInventories(id: 0), "InventoryID", "InventoryID");
        }
    }
}