namespace AdvancedProgramming.Data.Repositories
{
    /// <summary>
    /// Repository interface for Role entities.
    /// Defines the contract for Role-specific data access operations.
    /// </summary>
    public interface IRepositoryRole : IRepositoryBase<Role>
    {
    }

    /// <summary>
    /// Repository implementation for Role entities.
    /// Provides data access operations for Role entities using Entity Framework.
    /// </summary>
    public class RepositoryRole : RepositoryBase<Role>, IRepositoryRole
    {
        /// <summary>
        /// Initializes a new instance of the RepositoryRole class.
        /// </summary>
        public RepositoryRole() : base()
        {
        }
    }
}
