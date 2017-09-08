using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
    public class CategoryContentDao
    {
        TinPhongDbContext tinphong;
        public CategoryContentDao()
        {
            tinphong = new TinPhongDbContext();
        }
       
        public List<ContentCategory> GetAllCategory()
        {
            return tinphong.ContentCategories.ToList();

        }

    }
}
