using AdvancedProgramming.Data;
using AdvancedProgramming.Data.Repositories;
using System.Collections.Generic;

namespace AdvancedProgramming.Core
{
    /// <summary>
    /// Business logic class responsible for managing Role entities.
    /// Provides operations for creating, reading, updating, and deleting roles.
    /// </summary>
    public class RoleBusiness
    {
        private readonly IRepositoryRole _repositoryRole;

        /// <summary>
        /// Gets or sets the count of roles.
        /// </summary>
        public int Count { get; set; }

        /// <summary>
        /// Gets or sets the total number of roles (protected for inheritance).
        /// </summary>
        protected int Total { get; set; }

        /// <summary>
        /// Initializes a new instance of the RoleBusiness class.
        /// </summary>
        public RoleBusiness()
        {
            _repositoryRole = new RepositoryRole();
        }

        /// <summary>
        /// Saves a new role or updates an existing one (Upsert operation).
        /// </summary>
        /// <param name="role">The role object to save or update</param>
        /// <returns>True if the operation was successful, false otherwise</returns>
        /// <remarks>
        /// If the role ID is less than or equal to 0, it will be treated as a new role (insert).
        /// If the role ID is greater than 0, it will be treated as an existing role (update).
        /// </remarks>
        public bool SaveOrUpdate(Role role)
        {
            if (role.RoleID <= 0)
                _repositoryRole.Add(role);
            else
                _repositoryRole.Update(role);

            return true;
        }

        /// <summary>
        /// Deletes a role by its unique identifier.
        /// </summary>
        /// <param name="id">The unique identifier of the role to delete</param>
        /// <returns>True if the deletion was successful, false otherwise</returns>
        public bool Delete(int id)
        {
            _repositoryRole.Delete(id);
            return true;
        }

        /// <summary>
        /// Retrieves roles from the repository.
        /// </summary>
        /// <param name="id">The unique identifier of the role to retrieve. If 0 or less, returns all roles.</param>
        /// <returns>A collection of roles. If id is 0 or less, returns all roles; otherwise returns a single role.</returns>
        public IEnumerable<Role> GetRoles(int id)
        {
            return id <= 0
                ? _repositoryRole.GetAll()
                : new List<Role>() { _repositoryRole.GetById(id) };
        }
    }
}
