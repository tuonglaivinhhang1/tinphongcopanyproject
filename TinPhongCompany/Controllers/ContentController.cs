using Model.DAO;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TinPhongCompany.Controllers
{
    public class ContentController : Controller
    {
        // GET: Content
        public ActionResult TinCongTy()
        {
            return View();
        }
        public ActionResult TinDuAnDangThiCong()
        {
            return View();
        }
        public ActionResult TrietLyKinhDoanh()
        {
            return View();
        }
        public ActionResult TinDuAnDaThiCong()
        {
            var listcontent = new ContentDao().getAllContent_DaThiCong(1, 10);

            return View(listcontent);
        }
        public ActionResult TinDuAnDaThiCongDetail(long id)
        {
            var content = new ContentDao().getByID(id);
            ViewBag.UrlMainContent = ConvertKhongDau(content.Name);
            ViewBag.Top5 = new ContentDao().gettop5();

            return View(content);
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