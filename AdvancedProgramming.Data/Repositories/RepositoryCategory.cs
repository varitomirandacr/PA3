namespace AdvancedProgramming.Data.Repositories
{
    /// <summary>
    /// Repository interface for Category entities.
    /// Defines the contract for Category-specific data access operations.
    /// </summary>
    public interface IRepositoryCategory : IRepositoryBase<Category>
    {
    }

    /// <summary>
    /// Repository implementation for Category entities.
    /// Provides data access operations for Category entities using Entity Framework.
    /// </summary>
    public class RepositoryCategory : RepositoryBase<Category>, IRepositoryCategory
    {
        /// <summary>
        /// Initializes a new instance of the RepositoryCategory class.
        /// </summary>
        public RepositoryCategory() : base()
        {
        }
    }
}
