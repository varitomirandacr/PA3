using AdvancedProgramming.Data;
using AdvancedProgramming.Data.Repositories;
using System.Collections.Generic;

namespace AdvancedProgramming.Core
{
    /// <summary>
    /// Business logic class responsible for managing Inventory entities.
    /// Provides operations for creating, reading, updating, and deleting inventory items.
    /// </summary>
    public class InventoryBusiness
    {
        private readonly IRepositoryInventory _repositoryInventory;

        /// <summary>
        /// Gets or sets the count of inventory items.
        /// </summary>
        public int Count { get; set; }

        /// <summary>
        /// Gets or sets the total number of inventory items (protected for inheritance).
        /// </summary>
        protected int Total { get; set; }

        /// <summary>
        /// Initializes a new instance of the InventoryBusiness class.
        /// </summary>
        public InventoryBusiness()
        {
            _repositoryInventory = new RepositoryInventory();
        }

        /// <summary>
        /// Saves a new inventory item or updates an existing one (Upsert operation).
        /// </summary>
        /// <param name="inventory">The inventory object to save or update</param>
        /// <returns>True if the operation was successful, false otherwise</returns>
        /// <remarks>
        /// If the inventory ID is less than or equal to 0, it will be treated as a new inventory item (insert).
        /// If the inventory ID is greater than 0, it will be treated as an existing inventory item (update).
        /// </remarks>
        public bool SaveOrUpdate(Inventory inventory)
        {
            if (inventory.InventoryID <= 0)
                _repositoryInventory.Add(inventory);
            else
                _repositoryInventory.Update(inventory);

            return true;
        }

        /// <summary>
        /// Deletes an inventory item by its unique identifier.
        /// </summary>
        /// <param name="id">The unique identifier of the inventory item to delete</param>
        /// <returns>True if the deletion was successful, false otherwise</returns>
        public bool Delete(int id)
        {
            _repositoryInventory.Delete(id);
            return true;
        }

        /// <summary>
        /// Retrieves inventory items from the repository.
        /// </summary>
        /// <param name="id">The unique identifier of the inventory item to retrieve. If 0 or less, returns all inventory items.</param>
        /// <returns>A collection of inventory items. If id is 0 or less, returns all inventory items; otherwise returns a single inventory item.</returns>
        public IEnumerable<Inventory> GetInventories(int id)
        {
            return id <= 0
                ? _repositoryInventory.GetAll()
                : new List<Inventory>() { _repositoryInventory.GetById(id) };
        }
    }
}
