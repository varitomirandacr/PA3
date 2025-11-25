namespace AdvancedProgramming.Data.Repositories
{
    /// <summary>
    /// Repository interface for Inventory entities.
    /// Defines the contract for Inventory-specific data access operations.
    /// </summary>
    public interface IRepositoryInventory : IRepositoryBase<Inventory>
    {
    }

    /// <summary>
    /// Repository implementation for Inventory entities.
    /// Provides data access operations for Inventory entities using Entity Framework.
    /// </summary>
    public class RepositoryInventory : RepositoryBase<Inventory>, IRepositoryInventory
    {
        /// <summary>
        /// Initializes a new instance of the RepositoryInventory class.
        /// </summary>
        public RepositoryInventory() : base()
        {
        }
    }
}
