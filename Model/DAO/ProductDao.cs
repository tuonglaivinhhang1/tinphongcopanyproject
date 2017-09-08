using Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
    public class ProductDao
    {
        TinPhongDbContext tinphong;



        private static readonly string[] VietnameseSigns = new string[]
            {

                "aAeEoOuUiIdDyY",

                "áàạảãâấầậẩẫăắằặẳẵ",

                "ÁÀẠẢÃÂẤẦẬẨẪĂẮẰẶẲẴ",

                "éèẹẻẽêếềệểễ",

                "ÉÈẸẺẼÊẾỀỆỂỄ",

                "óòọỏõôốồộổỗơớờợởỡ",

                "ÓÒỌỎÕÔỐỒỘỔỖƠỚỜỢỞỠ",

                "úùụủũưứừựửữ",

                "ÚÙỤỦŨƯỨỪỰỬỮ",

                "íìịỉĩ",

                "ÍÌỊỈĨ",

                "đ",

                "Đ",

                "ýỳỵỷỹ",

                "ÝỲỴỶỸ"

            };


        //CHUYỂN CÓ DẤU SANG KHÔNG DẤU
        public static string RemoveSign4VietnameseString(string str)

        {

            //Tiến hành thay thế , lọc bỏ dấu cho chuỗi

            for (int i = 1; i < VietnameseSigns.Length; i++)

            {

                for (int j = 0; j < VietnameseSigns[i].Length; j++)

                    str = str.Replace(VietnameseSigns[i][j], VietnameseSigns[0][i - 1]);

            }

            return str;

        }


        public ProductDao()
        {
            tinphong = new TinPhongDbContext();
        }
        public Product getByID(long ID)
        {
            return tinphong.Products.FirstOrDefault(x => x.ID == ID);
        }
        public IEnumerable<Product> getAllProduct(int page, int pageSize)
        {

            var product = (
                    from a in tinphong.Products
                    orderby a.ID
                    select a

                ).ToPagedList(page, pageSize);
            return product;


        }
        public bool Insert(Product item)
        {
            try
            {
                tinphong.Products.Add(item);
                tinphong.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Update(Product item)
        {

            try
            {
                var current = tinphong.Products.FirstOrDefault(x => x.ID == item.ID);
                current.Name = item.Name;
                current.MetaTitle = item.MetaTitle;
                current.SeoTitle = item.SeoTitle;
                current.Code = item.Code;
                current.Description = item.Description;
                current.ProductDetail = item.ProductDetail;
                current.ModifiedDate = item.ModifiedDate;
                current.Image = item.Image;
                current.Price = item.Price;
                current.PromotionPrice = item.PromotionPrice;
                current.CategoryID = item.CategoryID;
                current.Waranty = item.Waranty;
                current.MetaDescriptions = item.MetaDescriptions;
                current.MetaKeywords = item.MetaKeywords;
                current.Status = item.Status;
                current.ViewCount = item.ViewCount;
                tinphong.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public Product getOneRelative(long ID)//ID của sản phẩm đang hiện
        {
            //get category
            var idct =
                (
                    from a in tinphong.Products
                    where a.ID == ID
                    select a.CategoryID
                ).FirstOrDefault();

            var product = tinphong.Products.Where(x => x.CategoryID == idct && x.ID == ID + 1).FirstOrDefault();
            if (product == null)
            {
                var product2 = tinphong.Products.Where(x => x.CategoryID == idct && x.ID == ID - 1).FirstOrDefault();
                if (product2 == null)
                {
                    var product3 = tinphong.Products.Where(x => x.ID == 1).FirstOrDefault();
                    return product3;
                }
                return product2;
            }

            return product;

        }
        public List<Product> getByCategory(long productCt)
        {
            return tinphong.Products.Where(x => x.CategoryID == productCt && x.Status == true).OrderByDescending(x => x.CreatedDate).Take(3).ToList();

        }
        public List<Product> getAllByCategory(long categoryID)
        {
            return tinphong.Products.Where(x => x.CategoryID == categoryID).ToList();
        }
        public List<string> getlistname(string key)
        {
            //return tinphong.Products.Where(x => RemoveSign4VietnameseString(x.Name).Contains(key)).Select(x => x.Name).ToList();
            var list = tinphong.Products.Where(

                   delegate (Product p)
                   {

                       if (RemoveSign4VietnameseString(p.Name.ToLower()).Contains(RemoveSign4VietnameseString(key.ToLower())))

                           return true;

                       else

                           return false;

                   }).Select(x => x.Name).ToList();
            return list;
        }
        public List<Product> getListbyKeyword(string key)
        {
            var list = tinphong.Products.Where(

                     delegate (Product p)
                     {

                         if (RemoveSign4VietnameseString(p.Name.ToLower()).Contains(RemoveSign4VietnameseString(key.ToLower())))

                             return true;

                         else

                             return false;

                     }).ToList();
            return list;
        }

    }
}
