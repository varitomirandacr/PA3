namespace AdvancedProgramming.Data.Repositories
{
    /// <summary>
    /// Repository interface for Task entities.
    /// Defines the contract for Task-specific data access operations.
    /// </summary>
    public interface IRepositoryTask : IRepositoryBase<Task>
    {
    }

    /// <summary>
    /// Repository implementation for Task entities.
    /// Provides data access operations for Task entities using Entity Framework.
    /// </summary>
    public class RepositoryTask : RepositoryBase<Task>, IRepositoryTask
    {
        /// <summary>
        /// Initializes a new instance of the RepositoryTask class.
        /// </summary>
        public RepositoryTask() : base()
        {
        }
    }
}
