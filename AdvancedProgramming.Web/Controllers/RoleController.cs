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
    /// Controller responsible for managing Role entities in the system.
    /// Provides full CRUD operations for roles including listing, creating, editing, and deleting.
    /// </summary>
    [Authorize]
    public class RoleController : ControllerBase
    {
        /// <summary>
        /// Displays a list of all roles in the system.
        /// </summary>
        /// <returns>View containing the list of all roles</returns>
        public ActionResult Index()
        {
            var roles = RoleBusiness.GetRoles(id: 0);
            return View(roles.ToList());
        }

        /// <summary>
        /// Displays the details of a specific role.
        /// </summary>
        /// <param name="id">The unique identifier of the role to display</param>
        /// <returns>View containing the role details, or BadRequest/NotFound if invalid</returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var role = RoleBusiness.GetRoles((int)id);
            if (role == null)
            {
                return HttpNotFound();
            }
            return View(role);
        }

        /// <summary>
        /// Displays the form for creating a new role.
        /// </summary>
        /// <returns>View containing the create role form</returns>
        public ActionResult Create()
        {
            return View();
        }

        /// <summary>
        /// Processes the creation of a new role.
        /// </summary>
        /// <param name="role">The role object containing the data to be saved</param>
        /// <returns>Redirects to Index on success, or returns the create view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "RoleID,RoleName")] Role role)
        {
            if (ModelState.IsValid)
            {
                RoleBusiness.SaveOrUpdate(role);
                return RedirectToAction("Index");
            }
            return View(role);
        }

        /// <summary>
        /// Displays the form for editing an existing role.
        /// </summary>
        /// <param name="id">The unique identifier of the role to edit</param>
        /// <returns>View containing the edit form, or BadRequest/NotFound if invalid</returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var role = RoleBusiness.GetRoles((int)id);
            if (role == null)
            {
                return HttpNotFound();
            }
            return View(role);
        }

        /// <summary>
        /// Processes the update of an existing role.
        /// </summary>
        /// <param name="role">The role object containing the updated data</param>
        /// <returns>Redirects to Index on success, or returns the edit view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "RoleID,RoleName")] Role role)
        {
            if (ModelState.IsValid)
            {
                RoleBusiness.SaveOrUpdate(role);
                return RedirectToAction("Index");
            }
            return View(role);
        }

        /// <summary>
        /// Displays the confirmation page for deleting a role.
        /// </summary>
        /// <param name="id">The unique identifier of the role to delete</param>
        /// <returns>View containing the delete confirmation, or BadRequest/NotFound if invalid</returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var role = RoleBusiness.GetRoles((int)id);
            if (role == null)
            {
                return HttpNotFound();
            }
            return View(role);
        }

        /// <summary>
        /// Confirms and processes the deletion of a role.
        /// </summary>
        /// <param name="id">The unique identifier of the role to delete</param>
        /// <returns>Redirects to Index after successful deletion</returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            RoleBusiness.Delete(id);
            return RedirectToAction("Index");
        }
    }
}
