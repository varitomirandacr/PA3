using AdvancedProgramming.Data;
using AdvancedProgramming.Data.Repositories;
using System.Collections.Generic;

namespace AdvancedProgramming.Core
{
    /// <summary>
    /// Business logic class responsible for managing Notification entities.
    /// Provides operations for creating, reading, updating, and deleting notifications.
    /// </summary>
    public class NotificationBusiness
    {
        private readonly IRepositoryNotification _repositoryNotification;

        /// <summary>
        /// Gets or sets the count of notifications.
        /// </summary>
        public int Count { get; set; }

        /// <summary>
        /// Gets or sets the total number of notifications (protected for inheritance).
        /// </summary>
        protected int Total { get; set; }

        /// <summary>
        /// Initializes a new instance of the NotificationBusiness class.
        /// </summary>
        public NotificationBusiness()
        {
            _repositoryNotification = new RepositoryNotification();
        }

        /// <summary>
        /// Saves a new notification or updates an existing one (Upsert operation).
        /// </summary>
        /// <param name="notification">The notification object to save or update</param>
        /// <returns>True if the operation was successful, false otherwise</returns>
        /// <remarks>
        /// If the notification ID is less than or equal to 0, it will be treated as a new notification (insert).
        /// If the notification ID is greater than 0, it will be treated as an existing notification (update).
        /// </remarks>
        public bool SaveOrUpdate(Notification notification)
        {
            if (notification.id <= 0)
                _repositoryNotification.Add(notification);
            else
                _repositoryNotification.Update(notification);

            return true;
        }

        /// <summary>
        /// Deletes a notification by its unique identifier.
        /// </summary>
        /// <param name="id">The unique identifier of the notification to delete</param>
        /// <returns>True if the deletion was successful, false otherwise</returns>
        public bool Delete(int id)
        {
            _repositoryNotification.Delete(id);
            return true;
        }

        /// <summary>
        /// Retrieves notifications from the repository.
        /// </summary>
        /// <param name="id">The unique identifier of the notification to retrieve. If 0 or less, returns all notifications.</param>
        /// <returns>A collection of notifications. If id is 0 or less, returns all notifications; otherwise returns a single notification.</returns>
        public IEnumerable<Notification> GetNotifications(int id)
        {
            return id <= 0
                ? _repositoryNotification.GetAll()
                : new List<Notification>() { _repositoryNotification.GetById(id) };
        }
    }
}
