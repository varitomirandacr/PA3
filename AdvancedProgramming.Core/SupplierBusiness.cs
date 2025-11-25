using AdvancedProgramming.Data;
using AdvancedProgramming.Data.Repositories;
using System.Collections.Generic;

namespace AdvancedProgramming.Core
{
    /// <summary>
    /// Business logic class responsible for managing Supplier entities.
    /// Provides operations for creating, reading, updating, and deleting suppliers.
    /// </summary>
    public class SupplierBusiness
    {
        private readonly IRepositorySupplier _repositorySupplier;

        /// <summary>
        /// Gets or sets the count of suppliers.
        /// </summary>
        public int Count { get; set; }

        /// <summary>
        /// Gets or sets the total number of suppliers (protected for inheritance).
        /// </summary>
        protected int Total { get; set; }

        /// <summary>
        /// Initializes a new instance of the SupplierBusiness class.
        /// </summary>
        public SupplierBusiness()
        {
            _repositorySupplier = new RepositorySupplier();
        }

        /// <summary>
        /// Saves a new supplier or updates an existing one (Upsert operation).
        /// </summary>
        /// <param name="supplier">The supplier object to save or update</param>
        /// <returns>True if the operation was successful, false otherwise</returns>
        /// <remarks>
        /// If the supplier ID is less than or equal to 0, it will be treated as a new supplier (insert).
        /// If the supplier ID is greater than 0, it will be treated as an existing supplier (update).
        /// </remarks>
        public bool SaveOrUpdate(Supplier supplier)
        {
            if (supplier.SupplierID <= 0)
                _repositorySupplier.Add(supplier);
            else
                _repositorySupplier.Update(supplier);

            return true;
        }

        /// <summary>
        /// Deletes a supplier by its unique identifier.
        /// </summary>
        /// <param name="id">The unique identifier of the supplier to delete</param>
        /// <returns>True if the deletion was successful, false otherwise</returns>
        public bool Delete(int id)
        {
            _repositorySupplier.Delete(id);
            return true;
        }

        /// <summary>
        /// Retrieves suppliers from the repository.
        /// </summary>
        /// <param name="id">The unique identifier of the supplier to retrieve. If 0 or less, returns all suppliers.</param>
        /// <returns>A collection of suppliers. If id is 0 or less, returns all suppliers; otherwise returns a single supplier.</returns>
        public IEnumerable<Supplier> GetSuppliers(int id)
        {
            return id <= 0
                ? _repositorySupplier.GetAll()
                : new List<Supplier>() { _repositorySupplier.GetById(id) };
        }
    }
}
