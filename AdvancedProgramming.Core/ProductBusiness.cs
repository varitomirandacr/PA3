using AdvancedProgramming.Data;
using AdvancedProgramming.Data.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;

namespace AdvancedProgramming.Core
{
    /// <summary>
    /// Business logic class responsible for managing Product entities.
    /// Provides operations for creating, reading, updating, deleting, and filtering products.
    /// </summary>
    public class ProductBusiness
    {
        private readonly IRepositoryProduct _repositoryProduct;

        /// <summary>
        /// Gets or sets the count of products.
        /// </summary>
        public int Count { get; set; }

        /// <summary>
        /// Gets or sets the total number of products (protected for inheritance).
        /// </summary>
        protected int Total { get; set; }

        /// <summary>
        /// Initializes a new instance of the ProductBusiness class.
        /// </summary>
        public ProductBusiness()
        {
            _repositoryProduct = new RepositoryProduct();
        }

        /// <summary>
        /// Saves a new product or updates an existing one (Upsert operation).
        /// </summary>
        /// <param name="product">The product object to save or update</param>
        /// <returns>True if the operation was successful, false otherwise</returns>
        /// <remarks>
        /// If the product ID is less than or equal to 0, it will be treated as a new product (insert).
        /// If the product ID is greater than 0, it will be treated as an existing product (update).
        /// </remarks>
        public bool SaveOrUpdate(Product product)
        {
            if (product.ProductID <= 0)
                _repositoryProduct.Add(product);
            else
                _repositoryProduct.Update(product);

            return true;
        }

        /// <summary>
        /// Deletes a product by its unique identifier.
        /// </summary>
        /// <param name="id">The unique identifier of the product to delete</param>
        /// <returns>True if the deletion was successful, false otherwise</returns>
        public bool Delete(int id)
        {
            _repositoryProduct.Delete(id);
            return true;
        }

        /// <summary>
        /// Retrieves products from the repository.
        /// </summary>
        /// <param name="id">The unique identifier of the product to retrieve. If 0 or less, returns all products.</param>
        /// <returns>A collection of products. If id is 0 or less, returns all products; otherwise returns a single product.</returns>
        public IEnumerable<Product> GetProducts(int id)
        {
            return id <= 0 
                ? _repositoryProduct.GetAll()
                : new List<Product>() { _repositoryProduct.GetById(id) };
        }

        /// <summary>
        /// Filters products based on the specified field name and value.
        /// </summary>
        /// <param name="name">The name of the field to filter by (case-insensitive)</param>
        /// <param name="value">The value to search for</param>
        /// <returns>A filtered collection of products matching the criteria</returns>
        /// <remarks>
        /// Supported filter fields: productid, productname, inventoryid, supplierid, description, 
        /// rating, categoryid, lastmodified, modifiedby. If no specific field matches, searches 
        /// across all text fields (ProductName, Description, ModifiedBy).
        /// </remarks>
        public IEnumerable<Product> Filter(string name, string value)
        {
            var products = GetProducts(0);

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(value))
                return products;

            Func<Product, bool> filterExpression;

            switch (name.ToLower())
            {
                case "productid":
                    int productId;
                    if (int.TryParse(value, out productId))
                        filterExpression = x => x.ProductID == productId;
                    else
                        filterExpression = x => false;
                    break;

                case "productname":
                    filterExpression = x => x.ProductName != null && 
                                          x.ProductName.Contains(value);
                    break;

                case "inventoryid":
                    int inventoryId;
                    if (int.TryParse(value, out inventoryId))
                        filterExpression = x => x.InventoryID == inventoryId;
                    else
                        filterExpression = x => false;
                    break;

                case "supplierid":
                    int supplierId;
                    if (int.TryParse(value, out supplierId))
                        filterExpression = x => x.SupplierID == supplierId;
                    else
                        filterExpression = x => false;
                    break;

                case "description":
                    filterExpression = x => x.Description != null && 
                                          x.Description.Contains(value);
                    break;

                case "rating":
                    decimal rating;
                    if (decimal.TryParse(value, out rating))
                        filterExpression = x => x.Rating == rating;
                    else
                        filterExpression = x => false;
                    break;

                case "categoryid":
                    int categoryId;
                    if (int.TryParse(value, out categoryId))
                        filterExpression = x => x.CategoryID == categoryId;
                    else
                        filterExpression = x => false;
                    break;

                case "lastmodified":
                    DateTime lastModified;
                    if (DateTime.TryParse(value, out lastModified))
                        filterExpression = x => x.LastModified.HasValue && x.LastModified.Value.Date == lastModified.Date;
                    else
                        filterExpression = x => false;
                    break;

                case "modifiedby":
                    filterExpression = x => x.ModifiedBy != null && 
                                          x.ModifiedBy.Contains(value);
                    break;

                default:
                    filterExpression = x => (x.ProductName != null && x.ProductName.Contains(value)) ||
                                           (x.Description != null && x.Description.Contains(value)) ||
                                           (x.ModifiedBy != null && x.ModifiedBy.Contains(value));
                    break;
            }

            return products.Where(filterExpression);
        }
    }
}
