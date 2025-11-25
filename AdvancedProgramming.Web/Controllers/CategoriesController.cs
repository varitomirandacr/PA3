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
    /// Controller responsible for managing Category entities in the system.
    /// Provides full CRUD operations for categories including listing, creating, editing, and deleting.
    /// </summary>
    [Authorize]
    public class CategoriesController : ControllerBase
    {
        /// <summary>
        /// Displays a list of all categories in the system.
        /// </summary>
        /// <returns>View containing the list of all categories</returns>
        public ActionResult Index()
        {
            var categories = CategoryBusiness.GetCategories(id: 0);
            return View(categories.ToList());
        }

        /// <summary>
        /// Displays the details of a specific category.
        /// </summary>
        /// <param name="id">The unique identifier of the category to display</param>
        /// <returns>View containing the category details, or BadRequest/NotFound if invalid</returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var category = CategoryBusiness.GetCategories((int)id);
            if (category == null)
            {
                return HttpNotFound();
            }
            return View(category);
        }

        /// <summary>
        /// Displays the form for creating a new category.
        /// </summary>
        /// <returns>View containing the create category form</returns>
        public ActionResult Create()
        {
            return View();
        }

        /// <summary>
        /// Processes the creation of a new category.
        /// </summary>
        /// <param name="category">The category object containing the data to be saved</param>
        /// <returns>Redirects to Index on success, or returns the create view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CategoryID,CategoryName,Description,LastModified,ModifiedBy")] Category category)
        {
            if (ModelState.IsValid)
            {
                CategoryBusiness.SaveOrUpdate(category);
                return RedirectToAction("Index");
            }
            return View(category);
        }

        /// <summary>
        /// Displays the form for editing an existing category.
        /// </summary>
        /// <param name="id">The unique identifier of the category to edit</param>
        /// <returns>View containing the edit form, or BadRequest/NotFound if invalid</returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var category = CategoryBusiness.GetCategories((int)id);
            if (category == null)
            {
                return HttpNotFound();
            }
            return View(category);
        }

        /// <summary>
        /// Processes the update of an existing category.
        /// </summary>
        /// <param name="category">The category object containing the updated data</param>
        /// <returns>Redirects to Index on success, or returns the edit view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CategoryID,CategoryName,Description,LastModified,ModifiedBy")] Category category)
        {
            if (ModelState.IsValid)
            {
                CategoryBusiness.SaveOrUpdate(category);
                return RedirectToAction("Index");
            }
            return View(category);
        }

        /// <summary>
        /// Displays the confirmation page for deleting a category.
        /// </summary>
        /// <param name="id">The unique identifier of the category to delete</param>
        /// <returns>View containing the delete confirmation, or BadRequest/NotFound if invalid</returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var category = CategoryBusiness.GetCategories((int)id);
            if (category == null)
            {
                return HttpNotFound();
            }
            return View(category);
        }

        /// <summary>
        /// Confirms and processes the deletion of a category.
        /// </summary>
        /// <param name="id">The unique identifier of the category to delete</param>
        /// <returns>Redirects to Index after successful deletion</returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CategoryBusiness.Delete(id);
            return RedirectToAction("Index");
        }
    }
}
