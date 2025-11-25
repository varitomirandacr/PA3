namespace AdvancedProgramming.Data.Repositories
{
    /// <summary>
    /// Repository interface for Component entities.
    /// Defines the contract for Component-specific data access operations.
    /// </summary>
    public interface IRepositoryComponent : IRepositoryBase<Component>
    {
    }

    /// <summary>
    /// Repository implementation for Component entities.
    /// Provides data access operations for Component entities using Entity Framework.
    /// </summary>
    public class RepositoryComponent : RepositoryBase<Component>, IRepositoryComponent
    {
        /// <summary>
        /// Initializes a new instance of the RepositoryComponent class.
        /// </summary>
        public RepositoryComponent() : base()
        {
        }
    }
}
