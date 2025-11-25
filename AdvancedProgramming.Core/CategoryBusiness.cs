using AdvancedProgramming.Data;
using AdvancedProgramming.Data.Repositories;
using System.Collections.Generic;
using System.Linq;

namespace AdvancedProgramming.Core
{
    /// <summary>
    /// Business logic class responsible for managing Category entities.
    /// Provides operations for creating, reading, updating, and deleting categories.
    /// </summary>
    public class CategoryBusiness
    {
        private readonly IRepositoryCategory _repositoryCategory;

        /// <summary>
        /// Gets or sets the count of categories.
        /// </summary>
        public int Count { get; set; }

        /// <summary>
        /// Gets or sets the total number of categories (protected for inheritance).
        /// </summary>
        protected int Total { get; set; }

        /// <summary>
        /// Initializes a new instance of the CategoryBusiness class.
        /// </summary>
        public CategoryBusiness()
        {
            _repositoryCategory = new RepositoryCategory();
        }

        /// <summary>
        /// Saves a new category or updates an existing one (Upsert operation).
        /// </summary>
        /// <param name="category">The category object to save or update</param>
        /// <returns>True if the operation was successful, false otherwise</returns>
        /// <remarks>
        /// If the category ID is less than or equal to 0, it will be treated as a new category (insert).
        /// If the category ID is greater than 0, it will be treated as an existing category (update).
        /// </remarks>
        public bool SaveOrUpdate(Category category)
        {
            if (category.CategoryID <= 0)
                _repositoryCategory.Add(category);
            else
                _repositoryCategory.Update(category);

            return true;
        }

        /// <summary>
        /// Deletes a category by its unique identifier.
        /// </summary>
        /// <param name="id">The unique identifier of the category to delete</param>
        /// <returns>True if the deletion was successful, false otherwise</returns>
        public bool Delete(int id)
        {
            _repositoryCategory.Delete(id);
            return true;
        }

        /// <summary>
        /// Retrieves categories from the repository.
        /// </summary>
        /// <param name="id">The unique identifier of the category to retrieve. If 0 or less, returns all categories.</param>
        /// <returns>A collection of categories. If id is 0 or less, returns all categories; otherwise returns a single category.</returns>
        public IEnumerable<Category> GetCategories(int id)
        {
            return id <= 0
                ? _repositoryCategory.GetAll()
                : new List<Category>() { _repositoryCategory.GetById(id) };
        }
    }
}
