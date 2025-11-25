using AdvancedProgramming.Data;
using AdvancedProgramming.Data.Repositories;
using System.Collections.Generic;

namespace AdvancedProgramming.Core
{
    /// <summary>
    /// Business logic class responsible for managing Component entities.
    /// Provides operations for creating, reading, updating, and deleting components.
    /// </summary>
    public class ComponentBusiness
    {
        private readonly IRepositoryComponent _repositoryComponent;

        /// <summary>
        /// Gets or sets the count of components.
        /// </summary>
        public int Count { get; set; }

        /// <summary>
        /// Gets or sets the total number of components (protected for inheritance).
        /// </summary>
        protected int Total { get; set; }

        /// <summary>
        /// Initializes a new instance of the ComponentBusiness class.
        /// </summary>
        public ComponentBusiness()
        {
            _repositoryComponent = new RepositoryComponent();
        }

        /// <summary>
        /// Saves a new component or updates an existing one (Upsert operation).
        /// </summary>
        /// <param name="component">The component object to save or update</param>
        /// <returns>True if the operation was successful, false otherwise</returns>
        /// <remarks>
        /// If the component ID is less than or equal to 0, it will be treated as a new component (insert).
        /// If the component ID is greater than 0, it will be treated as an existing component (update).
        /// </remarks>
        public bool SaveOrUpdate(Component component)
        {
            if (component.ID <= 0)
                _repositoryComponent.Add(component);
            else
                _repositoryComponent.Update(component);

            return true;
        }

        /// <summary>
        /// Deletes a component by its unique identifier.
        /// </summary>
        /// <param name="id">The unique identifier of the component to delete</param>
        /// <returns>True if the deletion was successful, false otherwise</returns>
        public bool Delete(int id)
        {
            _repositoryComponent.Delete(id);
            return true;
        }

        /// <summary>
        /// Retrieves components from the repository.
        /// </summary>
        /// <param name="id">The unique identifier of the component to retrieve. If 0 or less, returns all components.</param>
        /// <returns>A collection of components. If id is 0 or less, returns all components; otherwise returns a single component.</returns>
        public IEnumerable<Component> GetComponents(int id)
        {
            return id <= 0
                ? _repositoryComponent.GetAll()
                : new List<Component>() { _repositoryComponent.GetById(id) };
        }
    }
}
