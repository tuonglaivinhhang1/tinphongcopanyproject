﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace TinPhongCompany
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
               name: "Liên Hệ",
               url: "lien-he",
               defaults: new { controller = "LienHe", action = "Index", id = UrlParameter.Optional },
               namespaces: new[] { "TinPhongCompany.Controllers" }
           );
            routes.MapRoute(
               name: "San Pham Tu Menu Doc",
               url: "{metatitle}--{id}",
               defaults: new { controller = "Product", action = "ProductDetail", id = UrlParameter.Optional },
               namespaces: new[] { "TinPhongCompany.Controllers" }
           );
            routes.MapRoute(
                   name: "Tin Cong Ty",
                   url: "tin-tuc-cong-ty",
                   defaults: new { controller = "Content", action = "TinCongTy", id = UrlParameter.Optional },
                   namespaces: new[] { "TinPhongCompany.Controllers" }
               );
            routes.MapRoute(
                  name: "Tin Du An Dang Thi Cong",
                  url: "tin-du-an-dang-thi-cong",
                  defaults: new { controller = "Content", action = "TinDuAnDangThiCong", id = UrlParameter.Optional },
                  namespaces: new[] { "TinPhongCompany.Controllers" }
              );
            routes.MapRoute(
                  name: "Triet Ly Kinh Doanh",
                  url: "triet-ly-kinh-doanh",
                  defaults: new { controller = "Content", action = "TrietLyKinhDoanh", id = UrlParameter.Optional },
                  namespaces: new[] { "TinPhongCompany.Controllers" }
              );
            routes.MapRoute(
                  name: "Cac Du An Da Thi Cong",
                  url: "cac-du-an-da-thi-cong",
                  defaults: new { controller = "Content", action = "TinDuAnDaThiCong", id = UrlParameter.Optional },
                  namespaces: new[] { "TinPhongCompany.Controllers" }
              );
            routes.MapRoute(
                  name: "Cua Nhua Loi Thep",
                  url: "cua-nhua-loi-thep",
                  defaults: new { controller = "ProductCategory", action = "CuaNhuaLoiThep", id = UrlParameter.Optional },
                  namespaces: new[] { "TinPhongCompany.Controllers" }
              );
            routes.MapRoute(
                  name: "Cua Nhom XingFa",
                  url: "cua-nhom-xingfa",
                  defaults: new { controller = "ProductCategory", action = "CuaNhomXingFa", id = UrlParameter.Optional },
                  namespaces: new[] { "TinPhongCompany.Controllers" }
              );
            routes.MapRoute(
                 name: "Cua Kinh Cuong Luc",
                 url: "cua-kinh-cuong-luc",
                 defaults: new { controller = "ProductCategory", action = "CuaKinhCuongLuc", id = UrlParameter.Optional },
                 namespaces: new[] { "TinPhongCompany.Controllers" }
             );
            routes.MapRoute(
                 name: "Cua Cuon Auto",
                 url: "cua-cuon-tu-dong-auto",
                 defaults: new { controller = "ProductCategory", action = "CuaCuonAuto", id = UrlParameter.Optional },
                 namespaces: new[] { "TinPhongCompany.Controllers" }
             );
            routes.MapRoute(
               name: "Search",
               url: "tim-kiem",
               defaults: new { controller = "Product", action = "Search", id = UrlParameter.Optional },
               namespaces: new[] { "TinPhongCompany.Controllers" }
           );
            routes.MapRoute(
              name: "du an da thi cong detail",
              url: "cac-du-an-da-thi-cong/{metatitle}--{id}",
              defaults: new { controller = "Content", action = "TinDuAnDaThiCongDetail", id = UrlParameter.Optional },
              namespaces: new[] { "TinPhongCompany.Controllers" }
          );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "TinPhongCompany.Controllers" }
            );
        }
    }
}
