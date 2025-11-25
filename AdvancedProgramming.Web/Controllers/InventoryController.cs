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
    /// Controller responsible for managing Inventory entities in the system.
    /// Provides full CRUD operations for inventory items including listing, creating, editing, and deleting.
    /// </summary>
    [Authorize]
    public class InventoryController : ControllerBase
    {
        /// <summary>
        /// Displays a list of all inventory items in the system.
        /// </summary>
        /// <returns>View containing the list of all inventory items</returns>
        public ActionResult Index()
        {
            var inventories = InventoryBusiness.GetInventories(id: 0);
            return View(inventories.ToList());
        }

        /// <summary>
        /// Displays the details of a specific inventory item.
        /// </summary>
        /// <param name="id">The unique identifier of the inventory item to display</param>
        /// <returns>View containing the inventory details, or BadRequest/NotFound if invalid</returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var inventory = InventoryBusiness.GetInventories((int)id);
            if (inventory == null)
            {
                return HttpNotFound();
            }
            return View(inventory);
        }

        /// <summary>
        /// Displays the form for creating a new inventory item.
        /// </summary>
        /// <returns>View containing the create inventory form</returns>
        public ActionResult Create()
        {
            return View();
        }

        /// <summary>
        /// Processes the creation of a new inventory item.
        /// </summary>
        /// <param name="inventory">The inventory object containing the data to be saved</param>
        /// <returns>Redirects to Index on success, or returns the create view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "InventoryID,UnitPrice,UnitsInStock,LastUpdated,ProductId,DateAdded,ModifiedBy")] Inventory inventory)
        {
            if (ModelState.IsValid)
            {
                InventoryBusiness.SaveOrUpdate(inventory);
                return RedirectToAction("Index");
            }
            return View(inventory);
        }

        /// <summary>
        /// Displays the form for editing an existing inventory item.
        /// </summary>
        /// <param name="id">The unique identifier of the inventory item to edit</param>
        /// <returns>View containing the edit form, or BadRequest/NotFound if invalid</returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var inventory = InventoryBusiness.GetInventories((int)id);
            if (inventory == null)
            {
                return HttpNotFound();
            }
            return View(inventory);
        }

        /// <summary>
        /// Processes the update of an existing inventory item.
        /// </summary>
        /// <param name="inventory">The inventory object containing the updated data</param>
        /// <returns>Redirects to Index on success, or returns the edit view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "InventoryID,UnitPrice,UnitsInStock,LastUpdated,ProductId,DateAdded,ModifiedBy")] Inventory inventory)
        {
            if (ModelState.IsValid)
            {
                InventoryBusiness.SaveOrUpdate(inventory);
                return RedirectToAction("Index");
            }
            return View(inventory);
        }

        /// <summary>
        /// Displays the confirmation page for deleting an inventory item.
        /// </summary>
        /// <param name="id">The unique identifier of the inventory item to delete</param>
        /// <returns>View containing the delete confirmation, or BadRequest/NotFound if invalid</returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var inventory = InventoryBusiness.GetInventories((int)id);
            if (inventory == null)
            {
                return HttpNotFound();
            }
            return View(inventory);
        }

        /// <summary>
        /// Confirms and processes the deletion of an inventory item.
        /// </summary>
        /// <param name="id">The unique identifier of the inventory item to delete</param>
        /// <returns>Redirects to Index after successful deletion</returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            InventoryBusiness.Delete(id);
            return RedirectToAction("Index");
        }
    }
}
