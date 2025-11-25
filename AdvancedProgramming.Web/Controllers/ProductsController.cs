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
    /// Controller responsible for managing Product entities in the system.
    /// Provides full CRUD operations for products including listing, creating, editing, and deleting.
    /// </summary>
    [Authorize]
    public class ProductsController : ControllerBase
    {
        /// <summary>
        /// Displays a list of all products in the system.
        /// </summary>
        /// <returns>View containing the list of all products</returns>
        public ActionResult Index()
        {            
            var products = ProductBusiness.GetProducts(id: 0);
            return View(products.ToList());
        }

        /// <summary>
        /// Displays the details of a specific product.
        /// </summary>
        /// <param name="id">The unique identifier of the product to display</param>
        /// <returns>View containing the product details, or BadRequest/NotFound if invalid</returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var product = ProductBusiness.GetProducts((int)id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        /// <summary>
        /// Displays the form for creating a new product.
        /// </summary>
        /// <returns>View containing the create product form</returns>
        public ActionResult Create()
        {
            SetFilters();
            return View();
        }

        /// <summary>
        /// Processes the creation of a new product.
        /// </summary>
        /// <param name="product">The product object containing the data to be saved</param>
        /// <returns>Redirects to Index on success, or returns the create view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProductID,ProductName,InventoryID,SupplierID,Description,Rating,CategoryID,LastModified,ModifiedBy")] Product product)
        {
            if (ModelState.IsValid)
            {
                ProductBusiness.SaveOrUpdate(product);                
                return RedirectToAction("Index");
            }

            SetFilters();
            return View(product);
        }

        /// <summary>
        /// Displays the form for editing an existing product.
        /// </summary>
        /// <param name="id">The unique identifier of the product to edit</param>
        /// <returns>View containing the edit form, or BadRequest/NotFound if invalid</returns>
        public ActionResult Edit(int? id)
        {
            try
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                var product = ProductBusiness.GetProducts((int)id);
                if (product == null)
                {
                    return HttpNotFound();
                }

                SetFilters();

                if (product is Product)
                    return View(product);
                return View(product.FirstOrDefault());
            }
            catch (InvalidOperationException ioex)
            {
                return View("~/Views/Shared/Error.cshtml");
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Views/Shared/Error");
            }
            return View(default(Product));
        }

        /// <summary>
        /// Processes the update of an existing product.
        /// </summary>
        /// <param name="product">The product object containing the updated data</param>
        /// <returns>Redirects to Index on success, or returns the edit view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductID,ProductName,InventoryID,SupplierID,Description,Rating,CategoryID,LastModified,ModifiedBy")] Product product)
        {
            if (ModelState.IsValid)
            {
                ProductBusiness.SaveOrUpdate(product);
                return RedirectToAction("Index");
            }

            SetFilters();
            return View(product);
        }

        /// <summary>
        /// Displays the confirmation page for deleting a product.
        /// </summary>
        /// <param name="id">The unique identifier of the product to delete</param>
        /// <returns>View containing the delete confirmation, or BadRequest/NotFound if invalid</returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var product = ProductBusiness.GetProducts((int)id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        /// <summary>
        /// Confirms and processes the deletion of a product.
        /// </summary>
        /// <param name="id">The unique identifier of the product to delete</param>
        /// <returns>Redirects to Index after successful deletion</returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ProductBusiness.Delete(id);
            return RedirectToAction("Index");
        }
    }
}
