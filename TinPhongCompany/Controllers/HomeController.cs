using Model.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TinPhongCompany.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.CNLT = new ProductDao().getByCategory(1);
            ViewBag.CNXF = new ProductDao().getByCategory(2);
            ViewBag.CKCL = new ProductDao().getByCategory(3);
            ViewBag.CCTD = new ProductDao().getByCategory(4);
            ViewBag.ProjectHot = new ContentDao().getHotProject();
            ViewBag.ListRelativeProject = new ContentDao().getTopRelativeProject();

            return View();
        }

        [ChildActionOnly]
        [OutputCache(Duration = 3600 * 24)]
        public ActionResult Slider()
        {
            SlideDao slide = new SlideDao();

            var listslide = slide.getAll();
            return PartialView(listslide);

        }
        [ChildActionOnly]
        [OutputCache(Duration =3600*24)]
        public ActionResult MenuNgang()
        {
            MenuDao menu = new MenuDao();

            return PartialView(menu.getAllMenuNgang());
        }
        [ChildActionOnly]
        [OutputCache(Duration = 3600 * 24)]
        public ActionResult MenuDoc()
        {
            MenuDao menu = new MenuDao();

            return PartialView(menu.getAllMenuDoc());
        }
        [ChildActionOnly]

        public ActionResult Footer()
        {
            return PartialView();
        }


    }
}