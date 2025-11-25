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
    /// Controller responsible for managing Component entities in the system.
    /// Provides full CRUD operations for components including listing, creating, editing, and deleting.
    /// </summary>
    [Authorize]
    public class ComponentController : ControllerBase
    {
        /// <summary>
        /// Displays a list of all components in the system.
        /// </summary>
        /// <returns>View containing the list of all components</returns>
        public ActionResult Index()
        {
            var components = ComponentBusiness.GetComponents(id: 0);
            return View(components.ToList());
        }

        /// <summary>
        /// Displays the details of a specific component.
        /// </summary>
        /// <param name="id">The unique identifier of the component to display</param>
        /// <returns>View containing the component details, or BadRequest/NotFound if invalid</returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var component = ComponentBusiness.GetComponents((int)id);
            if (component == null)
            {
                return HttpNotFound();
            }
            return View(component);
        }

        /// <summary>
        /// Displays the form for creating a new component.
        /// </summary>
        /// <returns>View containing the create component form</returns>
        public ActionResult Create()
        {
            return View();
        }

        /// <summary>
        /// Processes the creation of a new component.
        /// </summary>
        /// <param name="component">The component object containing the data to be saved</param>
        /// <returns>Redirects to Index on success, or returns the create view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,name,content")] Component component)
        {
            if (ModelState.IsValid)
            {
                ComponentBusiness.SaveOrUpdate(component);
                return RedirectToAction("Index");
            }
            return View(component);
        }

        /// <summary>
        /// Displays the form for editing an existing component.
        /// </summary>
        /// <param name="id">The unique identifier of the component to edit</param>
        /// <returns>View containing the edit form, or BadRequest/NotFound if invalid</returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var component = ComponentBusiness.GetComponents((int)id);
            if (component == null)
            {
                return HttpNotFound();
            }
            return View(component);
        }

        /// <summary>
        /// Processes the update of an existing component.
        /// </summary>
        /// <param name="component">The component object containing the updated data</param>
        /// <returns>Redirects to Index on success, or returns the edit view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,name,content")] Component component)
        {
            if (ModelState.IsValid)
            {
                ComponentBusiness.SaveOrUpdate(component);
                return RedirectToAction("Index");
            }
            return View(component);
        }

        /// <summary>
        /// Displays the confirmation page for deleting a component.
        /// </summary>
        /// <param name="id">The unique identifier of the component to delete</param>
        /// <returns>View containing the delete confirmation, or BadRequest/NotFound if invalid</returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var component = ComponentBusiness.GetComponents((int)id);
            if (component == null)
            {
                return HttpNotFound();
            }
            return View(component);
        }

        /// <summary>
        /// Confirms and processes the deletion of a component.
        /// </summary>
        /// <param name="id">The unique identifier of the component to delete</param>
        /// <returns>Redirects to Index after successful deletion</returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ComponentBusiness.Delete(id);
            return RedirectToAction("Index");
        }
    }
}
