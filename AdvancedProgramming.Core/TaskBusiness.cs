using AdvancedProgramming.Data;
using AdvancedProgramming.Data.Repositories;
using System.Collections.Generic;

namespace AdvancedProgramming.Core
{
    /// <summary>
    /// Business logic class responsible for managing Task entities.
    /// Provides operations for creating, reading, updating, and deleting tasks.
    /// </summary>
    public class TaskBusiness
    {
        private readonly IRepositoryTask _repositoryTask;

        /// <summary>
        /// Gets or sets the count of tasks.
        /// </summary>
        public int Count { get; set; }

        /// <summary>
        /// Gets or sets the total number of tasks (protected for inheritance).
        /// </summary>
        protected int Total { get; set; }

        /// <summary>
        /// Initializes a new instance of the TaskBusiness class.
        /// </summary>
        public TaskBusiness()
        {
            _repositoryTask = new RepositoryTask();
        }

        /// <summary>
        /// Saves a new task or updates an existing one (Upsert operation).
        /// </summary>
        /// <param name="task">The task object to save or update</param>
        /// <returns>True if the operation was successful, false otherwise</returns>
        /// <remarks>
        /// If the task ID is less than or equal to 0, it will be treated as a new task (insert).
        /// If the task ID is greater than 0, it will be treated as an existing task (update).
        /// </remarks>
        public bool SaveOrUpdate(Task task)
        {
            if (task.Id <= 0)
                _repositoryTask.Add(task);
            else
                _repositoryTask.Update(task);

            return true;
        }

        /// <summary>
        /// Deletes a task by its unique identifier.
        /// </summary>
        /// <param name="id">The unique identifier of the task to delete</param>
        /// <returns>True if the deletion was successful, false otherwise</returns>
        public bool Delete(int id)
        {
            _repositoryTask.Delete(id);
            return true;
        }

        /// <summary>
        /// Retrieves tasks from the repository.
        /// </summary>
        /// <param name="id">The unique identifier of the task to retrieve. If 0 or less, returns all tasks.</param>
        /// <returns>A collection of tasks. If id is 0 or less, returns all tasks; otherwise returns a single task.</returns>
        public IEnumerable<Task> GetTasks(int id)
        {
            return id <= 0
                ? _repositoryTask.GetAll()
                : new List<Task>() { _repositoryTask.GetById(id) };
        }
    }
}
