using Model.DAO;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TinPhongCompany.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        public ActionResult Index()
        {
            return View();
        }
        [OutputCache(Duration =int.MaxValue,VaryByParam ="id",Location =System.Web.UI.OutputCacheLocation.Server)]
        public ActionResult ProductDetail(long id)
        {
            var product = new ProductDao().getByID(id);
            var relativeproduct = new ProductDao().getOneRelative(id);
            ViewBag.Relative = relativeproduct;
            ViewBag.Url = ConvertKhongDau(relativeproduct.SeoTitle);
            ViewBag.UrlMainProduct = ConvertKhongDau(product.MetaTitle);
            return View(product);
        }
        public ActionResult Search(string keyword)
        {
            ViewBag.ListProduct = new ProductDao().getListbyKeyword(keyword);

            return View();

        }
        public JsonResult ListName(string q)
        {
            var data = new ProductDao().getlistname(q);
            return Json(new
            {
                data = data,
                status = true,
            }, JsonRequestBehavior.AllowGet);

        }

        public string ConvertKhongDau(string inputText)
        {
            string stFormD = inputText.Normalize(System.Text.NormalizationForm.FormD);
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            string str = "";
            for (int i = 0; i <= stFormD.Length - 1; i++)
            {
                UnicodeCategory uc = CharUnicodeInfo.GetUnicodeCategory(stFormD[i]);
                if (uc == UnicodeCategory.NonSpacingMark == false)
                {
                    if (stFormD[i] == 'đ')
                        str = "d";
                    else if (stFormD[i] == 'Đ')
                        str = "D";
                    else if (stFormD[i] == '\r' | stFormD[i] == '\n')
                        str = "";
                    else if (stFormD[i] == ' ' || stFormD[i] == ':')
                        str = "-";
                    else
                        str = stFormD[i].ToString();

                    sb.Append(str);
                }

            }
            return sb.ToString();
        }
    }
}