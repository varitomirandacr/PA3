using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using AdvancedProgramming.Core;
using AdvancedProgramming.Data;

namespace AdvancedProgramming.Web.Controllers
{
    /// <summary>
    /// Controller responsible for managing Supplier entities in the system.
    /// Provides full CRUD operations for suppliers including listing, creating, editing, and deleting.
    /// </summary>
    [Authorize]
    public class SupplierController : ControllerBase
    {
        /// <summary>
        /// Displays a list of all suppliers in the system.
        /// </summary>
        /// <returns>View containing the list of all suppliers</returns>
        public ActionResult Index()
        {
            var suppliers = SupplierBusiness.GetSuppliers(id: 0);
            return View(suppliers.ToList());
        }

        /// <summary>
        /// Displays the details of a specific supplier.
        /// </summary>
        /// <param name="id">The unique identifier of the supplier to display</param>
        /// <returns>View containing the supplier details, or BadRequest/NotFound if invalid</returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var supplier = SupplierBusiness.GetSuppliers((int)id);
            if (supplier == null)
            {
                return HttpNotFound();
            }
            return View(supplier);
        }

        /// <summary>
        /// Displays the form for creating a new supplier.
        /// </summary>
        /// <returns>View containing the create supplier form</returns>
        public ActionResult Create()
        {
            return View();
        }

        /// <summary>
        /// Processes the creation of a new supplier.
        /// </summary>
        /// <param name="supplier">The supplier object containing the data to be saved</param>
        /// <returns>Redirects to Index on success, or returns the create view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SupplierID,SupplierName,ContactName,ContactTitle,Phone,Address,City,Country,LastModified,ModifiedBy")] Supplier supplier)
        {
            if (ModelState.IsValid)
            {
                SupplierBusiness.SaveOrUpdate(supplier);
                return RedirectToAction("Index");
            }
            return View(supplier);
        }

        /// <summary>
        /// Displays the form for editing an existing supplier.
        /// </summary>
        /// <param name="id">The unique identifier of the supplier to edit</param>
        /// <returns>View containing the edit form, or BadRequest/NotFound if invalid</returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var supplier = SupplierBusiness.GetSuppliers((int)id);
            if (supplier == null)
            {
                return HttpNotFound();
            }
            return View(supplier);
        }

        /// <summary>
        /// Processes the update of an existing supplier.
        /// </summary>
        /// <param name="supplier">The supplier object containing the updated data</param>
        /// <returns>Redirects to Index on success, or returns the edit view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SupplierID,SupplierName,ContactName,ContactTitle,Phone,Address,City,Country,LastModified,ModifiedBy")] Supplier supplier)
        {
            if (ModelState.IsValid)
            {
                SupplierBusiness.SaveOrUpdate(supplier);
                return RedirectToAction("Index");
            }
            return View(supplier);
        }

        /// <summary>
        /// Displays the confirmation page for deleting a supplier.
        /// </summary>
        /// <param name="id">The unique identifier of the supplier to delete</param>
        /// <returns>View containing the delete confirmation, or BadRequest/NotFound if invalid</returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var supplier = SupplierBusiness.GetSuppliers((int)id);
            if (supplier == null)
            {
                return HttpNotFound();
            }
            return View(supplier);
        }

        /// <summary>
        /// Confirms and processes the deletion of a supplier.
        /// </summary>
        /// <param name="id">The unique identifier of the supplier to delete</param>
        /// <returns>Redirects to Index after successful deletion</returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SupplierBusiness.Delete(id);
            return RedirectToAction("Index");
        }
    }
}
