using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.DAO;
using Model.EF;

namespace TinPhongCompany.Areas.Admin.Controllers
{
    public class ProductController : BaseController
    {
        // GET: Admin/Product
        public ActionResult Index(int page = 1, int pageSize = 3)
        {

            var ProductDao = new ProductDao();
            var model = ProductDao.getAllProduct(page, pageSize);
            return View(model);
        }
        [HttpGet]
        public ActionResult AddProduct()
        {
            setViewBag();
            return View();

        }

        [HttpPost]
        public ActionResult AddProduct(Product item)
        {
            if (ModelState.IsValid)
            {
                item.CreatedDate = DateTime.Now;
                item.ModifiedDate = DateTime.Now;
                var status = new ProductDao().Insert(item);
                if (status)
                {
                    SetAlert("Thêm sản phẩm thành công", "success");
                    return RedirectToAction("Index", "Product");
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
        public ActionResult EditProduct(long ID)
        {
            Product current = new ProductDao().getByID(ID);
            setViewBag();
            return View(current);
                   

        }
        [HttpPost]
        public ActionResult EditProduct(Product item)
        {
            if (ModelState.IsValid)
            {
                item.ModifiedDate = DateTime.Now;
                var status = new ProductDao().Update(item);

                if (status)
                {
                    SetAlert("Cập nhật sản phẩm thành công", "success");
                    return RedirectToAction("Index", "Product");
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
            var categorydao = new CategoryDao();
            //Viewbag để bingding dữ liệu từ model sang views
            //Chọn thằng nào có CategoryID
            ViewBag.CategoryID = new SelectList(categorydao.GetAllCategory(), "ID", "Name", selectedID);

        }



    }
}