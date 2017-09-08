using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
    public class MenuDao
    {
        TinPhongDbContext tinphong;
        public MenuDao()
        {
            tinphong = new TinPhongDbContext();
        }
        public List<Menu> getAllMenuNgang()
        {
            return tinphong.Menus.Where(x => x.Status == true && x.TypeID == 1 && x.ParentID == null).OrderBy(x => x.DisplayOrder).ToList();
        }
        public List<Menu> getAllMenuDoc()
        {
            return tinphong.Menus.Where(x => x.Status == true && x.TypeID == 2 && x.ParentID == null).OrderBy(x => x.DisplayOrder).ToList();
        }
    }
}
