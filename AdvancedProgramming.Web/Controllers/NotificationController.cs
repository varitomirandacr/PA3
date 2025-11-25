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
    /// Controller responsible for managing Notification entities in the system.
    /// Provides full CRUD operations for notifications including listing, creating, editing, and deleting.
    /// </summary>
    [Authorize]
    public class NotificationController : ControllerBase
    {
        /// <summary>
        /// Displays a list of all notifications in the system.
        /// </summary>
        /// <returns>View containing the list of all notifications</returns>
        public ActionResult Index()
        {
            var notifications = NotificationBusiness.GetNotifications(id: 0);
            return View(notifications.ToList());
        }

        /// <summary>
        /// Displays the details of a specific notification.
        /// </summary>
        /// <param name="id">The unique identifier of the notification to display</param>
        /// <returns>View containing the notification details, or BadRequest/NotFound if invalid</returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var notification = NotificationBusiness.GetNotifications((int)id);
            if (notification == null)
            {
                return HttpNotFound();
            }
            return View(notification);
        }

        /// <summary>
        /// Displays the form for creating a new notification.
        /// </summary>
        /// <returns>View containing the create notification form</returns>
        public ActionResult Create()
        {
            SetFilters();
            return View();
        }

        /// <summary>
        /// Processes the creation of a new notification.
        /// </summary>
        /// <param name="notification">The notification object containing the data to be saved</param>
        /// <returns>Redirects to Index on success, or returns the create view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,user_id,message,is_read,created_at")] Notification notification)
        {
            if (ModelState.IsValid)
            {
                NotificationBusiness.SaveOrUpdate(notification);
                return RedirectToAction("Index");
            }
            SetFilters();
            return View(notification);
        }

        /// <summary>
        /// Displays the form for editing an existing notification.
        /// </summary>
        /// <param name="id">The unique identifier of the notification to edit</param>
        /// <returns>View containing the edit form, or BadRequest/NotFound if invalid</returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var notification = NotificationBusiness.GetNotifications((int)id);
            if (notification == null)
            {
                return HttpNotFound();
            }
            SetFilters();
            return View(notification);
        }

        /// <summary>
        /// Processes the update of an existing notification.
        /// </summary>
        /// <param name="notification">The notification object containing the updated data</param>
        /// <returns>Redirects to Index on success, or returns the edit view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,user_id,message,is_read,created_at")] Notification notification)
        {
            if (ModelState.IsValid)
            {
                NotificationBusiness.SaveOrUpdate(notification);
                return RedirectToAction("Index");
            }
            SetFilters();
            return View(notification);
        }

        /// <summary>
        /// Displays the confirmation page for deleting a notification.
        /// </summary>
        /// <param name="id">The unique identifier of the notification to delete</param>
        /// <returns>View containing the delete confirmation, or BadRequest/NotFound if invalid</returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var notification = NotificationBusiness.GetNotifications((int)id);
            if (notification == null)
            {
                return HttpNotFound();
            }
            return View(notification);
        }

        /// <summary>
        /// Confirms and processes the deletion of a notification.
        /// </summary>
        /// <param name="id">The unique identifier of the notification to delete</param>
        /// <returns>Redirects to Index after successful deletion</returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            NotificationBusiness.Delete(id);
            return RedirectToAction("Index");
        }
    }
}
