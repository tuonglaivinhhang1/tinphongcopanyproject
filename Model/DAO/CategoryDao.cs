using Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
    public class CategoryDao
    {
        TinPhongDbContext tinphong;
        public CategoryDao()
        {
            tinphong = new TinPhongDbContext();
        }
        public IEnumerable<ProductCategory> getAllProductCategory(int page, int pageSize)
        {

            var productct = (
                    from a in tinphong.ProductCategories
                    orderby a.ID
                    select a

                ).ToPagedList(page, pageSize);
            return productct;

        }

        public bool Insert(ProductCategory category)
        {
            try
            {
                tinphong.ProductCategories.Add(category);
                tinphong.SaveChanges();
                return true;

            }
            catch
            {
                return false;
            }

        }
        public ProductCategory getbyID(long ID)
        {
            return tinphong.ProductCategories.FirstOrDefault(x => x.ID == ID);


        }
        public bool Update(ProductCategory item)
        {
            try
            {
                var category = tinphong.ProductCategories.FirstOrDefault(x => x.ID == item.ID);
                category.Name = item.Name;
                category.MetaTitle = item.MetaTitle;
                category.Description = item.Description;
                category.DisplayOrder = item.DisplayOrder;
                category.SeoTitle = item.SeoTitle;
                
                category.ModifiedDate = item.ModifiedDate;
                category.MetaDescriptions = item.MetaDescriptions;
                category.MetaKeywords = item.MetaKeywords;
                category.Status = item.Status;
                tinphong.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public List<ProductCategory> GetAllCategory()
        {
            return tinphong.ProductCategories.ToList();

        }

     
    }
}
