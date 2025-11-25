using AdvancedProgramming.Data;
using AdvancedProgramming.Data.Repositories;
using System.Collections.Generic;

namespace AdvancedProgramming.Core
{
    /// <summary>
    /// Business logic class responsible for managing User entities.
    /// Provides operations for creating, reading, updating, and deleting users.
    /// </summary>
    public class UserBusiness
    {
        private readonly IRepositoryUser _repositoryUser;

        /// <summary>
        /// Gets or sets the count of users.
        /// </summary>
        public int Count { get; set; }

        /// <summary>
        /// Gets or sets the total number of users (protected for inheritance).
        /// </summary>
        protected int Total { get; set; }

        /// <summary>
        /// Initializes a new instance of the UserBusiness class.
        /// </summary>
        public UserBusiness()
        {
            _repositoryUser = new RepositoryUser();
        }

        /// <summary>
        /// Saves a new user or updates an existing one (Upsert operation).
        /// </summary>
        /// <param name="user">The user object to save or update</param>
        /// <returns>True if the operation was successful, false otherwise</returns>
        /// <remarks>
        /// If the user ID is less than or equal to 0, it will be treated as a new user (insert).
        /// If the user ID is greater than 0, it will be treated as an existing user (update).
        /// </remarks>
        public bool SaveOrUpdate(User user)
        {
            if (user.UserID <= 0)
                _repositoryUser.Add(user);
            else
                _repositoryUser.Update(user);

            return true;
        }

        /// <summary>
        /// Deletes a user by its unique identifier.
        /// </summary>
        /// <param name="id">The unique identifier of the user to delete</param>
        /// <returns>True if the deletion was successful, false otherwise</returns>
        public bool Delete(int id)
        {
            _repositoryUser.Delete(id);
            return true;
        }

        /// <summary>
        /// Retrieves users from the repository.
        /// </summary>
        /// <param name="id">The unique identifier of the user to retrieve. If 0 or less, returns all users.</param>
        /// <returns>A collection of users. If id is 0 or less, returns all users; otherwise returns a single user.</returns>
        public IEnumerable<User> GetUsers(int id)
        {
            return id <= 0
                ? _repositoryUser.GetAll()
                : new List<User>() { _repositoryUser.GetById(id) };
        }
    }
}
