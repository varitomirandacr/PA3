namespace AdvancedProgramming.Data.Repositories
{
    /// <summary>
    /// Repository interface for Notification entities.
    /// Defines the contract for Notification-specific data access operations.
    /// </summary>
    public interface IRepositoryNotification : IRepositoryBase<Notification>
    {
    }

    /// <summary>
    /// Repository implementation for Notification entities.
    /// Provides data access operations for Notification entities using Entity Framework.
    /// </summary>
    public class RepositoryNotification : RepositoryBase<Notification>, IRepositoryNotification
    {
        /// <summary>
        /// Initializes a new instance of the RepositoryNotification class.
        /// </summary>
        public RepositoryNotification() : base()
        {
        }
    }
}
