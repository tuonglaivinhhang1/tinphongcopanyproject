using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
    public class SlideDao
    {
        TinPhongDbContext tinphong;
        public SlideDao()
        {
            tinphong = new TinPhongDbContext();
        }
        public List<Slide> getAll()
        {
            return tinphong.Slides.OrderBy(x => x.DisplayOrder).Take(11).ToList();

        }
    }
}
