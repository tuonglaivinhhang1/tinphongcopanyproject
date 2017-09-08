using Model.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TinPhongCompany.Controllers
{
    public class ProductCategoryController : Controller
    {
        // GET: ProductCategory
        public ActionResult CuaNhuaLoiThep()
        {
            var cuanhualoithep = new CategoryDao().getbyID(1);
            ViewBag.ListProduct = new ProductDao().getAllByCategory(1);

            return View(cuanhualoithep);
        }
        public ActionResult CuaNhomXingFa()
        {
            var cuanhomxingfa = new CategoryDao().getbyID(2);
            ViewBag.ListProduct = new ProductDao().getAllByCategory(2);

            return View(cuanhomxingfa);
        }
        public ActionResult CuaKinhCuongLuc()
        {
            var cuakinhcl = new CategoryDao().getbyID(3);
            ViewBag.ListProduct = new ProductDao().getAllByCategory(3);

            return View(cuakinhcl);
        }
        public ActionResult CuaCuonAuto()
        {
            var cuacuon = new CategoryDao().getbyID(4);
            ViewBag.ListProduct = new ProductDao().getAllByCategory(4);

            return View(cuacuon);
        }
    }
}