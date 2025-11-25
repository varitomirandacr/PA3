using AdvancedProgramming.Core;
using AdvancedProgramming.Data;
using System.Linq;
using System.Net;
using System.Web.Mvc;

namespace AdvancedProgramming.Web.Controllers
{
    /// <summary>
    /// Controller responsible for managing Task entities in the system.
    /// Provides full CRUD operations for tasks including listing, creating, editing, and deleting.
    /// </summary>
    [Authorize]
    public class TaskController : ControllerBase
    {
        /// <summary>
        /// Displays a list of all tasks in the system.
        /// </summary>
        /// <returns>View containing the list of all tasks</returns>
        public ActionResult Index()
        {
            var tasks = TaskBusiness.GetTasks(id: 0);
            return View(tasks.ToList());
        }

        /// <summary>
        /// Displays the details of a specific task.
        /// </summary>
        /// <param name="id">The unique identifier of the task to display</param>
        /// <returns>View containing the task details, or BadRequest/NotFound if invalid</returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var task = TaskBusiness.GetTasks((int)id);
            if (task == null)
            {
                return HttpNotFound();
            }
            return View(task);
        }

        /// <summary>
        /// Displays the form for creating a new task.
        /// </summary>
        /// <returns>View containing the create task form</returns>
        public ActionResult Create()
        {
            return View();
        }

        /// <summary>
        /// Processes the creation of a new task.
        /// </summary>
        /// <param name="task">The task object containing the data to be saved</param>
        /// <returns>Redirects to Index on success, or returns the create view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name,Description,Status,DueDate,CreatedAt,LastModified,ModifiedBy")] Task task)
        {
            if (ModelState.IsValid)
            {
                TaskBusiness.SaveOrUpdate(task);
                return RedirectToAction("Index");
            }
            return View(task);
        }

        /// <summary>
        /// Displays the form for editing an existing task.
        /// </summary>
        /// <param name="id">The unique identifier of the task to edit</param>
        /// <returns>View containing the edit form, or BadRequest/NotFound if invalid</returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var task = TaskBusiness.GetTasks((int)id);
            if (task == null)
            {
                return HttpNotFound();
            }
            return View(task);
        }

        /// <summary>
        /// Processes the update of an existing task.
        /// </summary>
        /// <param name="task">The task object containing the updated data</param>
        /// <returns>Redirects to Index on success, or returns the edit view with validation errors</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,Description,Status,DueDate,CreatedAt,LastModified,ModifiedBy")] Task task)
        {
            if (ModelState.IsValid)
            {
                TaskBusiness.SaveOrUpdate(task);
                return RedirectToAction("Index");
            }
            return View(task);
        }

        /// <summary>
        /// Displays the confirmation page for deleting a task.
        /// </summary>
        /// <param name="id">The unique identifier of the task to delete</param>
        /// <returns>View containing the delete confirmation, or BadRequest/NotFound if invalid</returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var task = TaskBusiness.GetTasks((int)id);
            if (task == null)
            {
                return HttpNotFound();
            }
            return View(task);
        }

        /// <summary>
        /// Confirms and processes the deletion of a task.
        /// </summary>
        /// <param name="id">The unique identifier of the task to delete</param>
        /// <returns>Redirects to Index after successful deletion</returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TaskBusiness.Delete(id);
            return RedirectToAction("Index");
        }
    }
}
