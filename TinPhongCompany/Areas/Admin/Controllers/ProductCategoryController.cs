using Model.DAO;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TinPhongCompany.Areas.Admin.Controllers
{
    public class ProductCategoryController : BaseController
    {
        // GET: Admin/ProductCategory
        public ActionResult Index(int page = 1, int pageSize = 2)
        {
            var ProductDao = new CategoryDao();
            var model = ProductDao.getAllProductCategory(page, pageSize);
            return View(model);
        }
        [HttpGet]
        public ActionResult AddProductCategory()
        {

            return View();

        }
        [HttpPost]
        public ActionResult AddProductCategory(ProductCategory category)
        {
            if (ModelState.IsValid)
            {
                CategoryDao prcategory = new CategoryDao();
                category.CreatedDate = DateTime.Now;
                category.ModifiedDate = DateTime.Now;
                if (prcategory.Insert(category))
                {
                    SetAlert("Thêm loại cửa thành công", "success");
                    return RedirectToAction("Index", "ProductCategory");
                }
                else
                {
                    ModelState.AddModelError("", "Có lỗi xảy ra. Vui lòng thử lại");

                }

            }
            return View();
        }
        [HttpGet]
        public ActionResult EditProductCategory(long id)
        {
            ProductCategory current = new CategoryDao().getbyID(id);
            return View(current);

        }

        [HttpPost]
        public ActionResult EditProductCategory(ProductCategory category)
        {
            if (ModelState.IsValid)
            {
                CategoryDao pro = new CategoryDao();
               
                category.ModifiedDate = DateTime.Now;

                bool statusUpdate = pro.Update(category);
                if (statusUpdate)
                {
                    SetAlert("Cập nhật loại cửa thành công", "success");
                    return RedirectToAction("Index", "ProductCategory");
                }
                else
                {
                    ModelState.AddModelError("", "Có lỗi xảy ra. Cập nhật thất bại");
                }
            }
           
            return View("Index");
        }

    }
}