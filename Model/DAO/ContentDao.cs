using Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
    public class ContentDao
    {
        TinPhongDbContext tinphong;
        public ContentDao()
        {
            tinphong = new TinPhongDbContext();
        }
        public Content getByID(long ID)
        {
            return tinphong.Contents.FirstOrDefault(x => x.ID == ID);
        }
        public IEnumerable<Content> getAllContent(int page, int pageSize)
        {

            var content = (
                    from a in tinphong.Contents
                    orderby a.ID
                    select a

                ).ToPagedList(page, pageSize);
            return content;


        }
        public IEnumerable<Content> getAllContent_BaoGia(int page, int pageSize)
        {

            var content = (
                    from a in tinphong.Contents
                    where a.CategoryID==1
                    orderby a.ModifiedDate descending
                    select a

                ).ToPagedList(page, pageSize);
            return content;


        }
        public IEnumerable<Content> getAllContent_News(int page, int pageSize)
        {

            var content = (
                    from a in tinphong.Contents
                    where a.CategoryID == 2
                    orderby a.ModifiedDate descending
                    select a

                ).ToPagedList(page, pageSize);
            return content;


        }


        public bool Insert(Content item)
        {
            try
            {
                tinphong.Contents.Add(item);
                tinphong.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Update(Content item)
        {

            try
            {
                var current = tinphong.Contents.FirstOrDefault(x => x.ID == item.ID);
                current.Name = item.Name;
                current.MetaTitle = item.MetaTitle;
                current.SeoTitle = item.SeoTitle;
                current.Description = item.Description;
                current.Detail = item.Detail;
                current.ModifiedDate = item.ModifiedDate;
                current.Image = item.Image;
                current.CategoryID = item.CategoryID;
                current.MetaDescriptions = item.MetaDescriptions;
                current.MetaKeywords = item.MetaKeywords;
                current.Status = item.Status;
                current.ViewCount = item.ViewCount;
                current.TopHot = item.TopHot;
                tinphong.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public Content getHotProject()
        {
            return tinphong.Contents.Where(x => x.Status == true && (x.CategoryID == 1)).OrderByDescending(x => x.ModifiedDate).Take(1).FirstOrDefault();

        }
        public List<Content> getTopRelativeProject()
        {
            return tinphong.Contents.Where(x => x.Status == true && (x.CategoryID == 1)).OrderByDescending(x => x.ModifiedDate).Take(4).ToList();//trừ thằng đầu tiên

        }

        public Content getHotNews()
        {
            return tinphong.Contents.Where(x => x.Status == true && (x.CategoryID == 2)).OrderByDescending(x => x.ModifiedDate).Take(1).FirstOrDefault();

        }
        public List<Content> getTopRelativeNews()
        {
            return tinphong.Contents.Where(x => x.Status == true && (x.CategoryID == 2)).OrderByDescending(x => x.ModifiedDate).Take(4).ToList();//trừ thằng đầu tiên

        }


        public List<Content> gettop5()
        {
            return tinphong.Contents.Where(x => x.Status == true).OrderBy(x => Guid.NewGuid()).Take(5).ToList();

        }



    }
}
