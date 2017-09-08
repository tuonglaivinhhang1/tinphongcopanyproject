using Model.DAO;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TinPhongCompany.Areas.Admin.Controllers
{
    public class ContentController : BaseController
    {
        // GET: Admin/Content
        public ActionResult Index(int page = 1, int pageSize = 3)
        {

            var content = new ContentDao();
            var model = content.getAllContent(page, pageSize);
            return View(model);
        }

        [HttpGet]
        public ActionResult AddContent()
        {
            setViewBag();
            return View();

        }
        [HttpPost]
        public ActionResult AddContent(Content item)
        {
            if (ModelState.IsValid)
            {
                item.CreatedDate = DateTime.Now;
                item.ModifiedDate = DateTime.Now;
                var status = new ContentDao().Insert(item);
                if (status)
                {
                    SetAlert("Thêm tin tức thành công", "success");
                    return RedirectToAction("Index", "Content");
                }
                else
                {
                    ModelState.AddModelError("", "Thêm thất bại. Vui lòng thử lại!");
                    setViewBag();
                    return View();
                }
            }
            setViewBag();
            return View();

        }
        [HttpGet]
        public ActionResult EditContent(long ID)
        {
            Content current = new ContentDao().getByID(ID);
            setViewBag();
            return View(current);


        }
        [HttpPost]
        public ActionResult EditContent(Content item)
        {
            if (ModelState.IsValid)
            {
                item.ModifiedDate = DateTime.Now;
                var status = new ContentDao().Update(item);

                if (status)
                {
                    SetAlert("Cập nhật tin tức thành công", "success");
                    return RedirectToAction("Index", "Content");
                }
                else
                {
                    ModelState.AddModelError("", "Có lỗi xảy ra. Cập nhật thất bại");
                }
            }
            setViewBag();
            return View();

        }

        public void setViewBag(long? selectedID = null)
        {
            var categorycontentdao = new CategoryContentDao();
            //Viewbag để bingding dữ liệu từ model sang views
            //Chọn thằng nào có CategoryID
            ViewBag.CategoryID = new SelectList(categorycontentdao.GetAllCategory(), "ID", "Name", selectedID);

        }
    }
}