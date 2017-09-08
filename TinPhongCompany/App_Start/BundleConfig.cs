using System;
using System.Web;
using System.Web.Optimization;
using TinPhongCompany.Common;

namespace TinPhongCompany
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862

        public static void RegisterBundles(BundleCollection bundles)
        {

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/jscore").Include(
                        "~/Assets/JScripts/hoverIntent.js",
                        "~/Assets/Scripts/swfobject.js",
                        "~/Assets/Modules/PriceComparison/Scripts/jquery.cookie.js",
                        "~/Assets/Modules/PriceComparison/Scripts/libs98be.js?v=20131209",
                        "~/Assets/Modules/PriceComparison/Scripts/estore/jquery.formatCurrency.js",
                        "~/Assets/Modules/PriceComparison/Scripts/estore/wp.estoree5b7.js?v=20160825",
                        "~/Assets/Modules/PriceComparison/bundles/Estore/Statistic/statistic2370.js?v=20170309"
                       
                        ));
            bundles.Add(new ScriptBundle("~/bundles/jssearch").Include(
                  "~/Assets/ajax/search.js"
                        ));

            bundles.Add(new StyleBundle("~/bundles/core").IncludeWithCssRewriteTransform(
  
                     "~/Assets/App_Css/3207/edit.css",
                     "~/Assets/css/jquery.modaldialog.css",
                     "~/Assets/App_Themes/chromefix.css",
                     "~/Assets/App_Themes/Estore_11_shoes/00-reset.css",
                     "~/Assets/App_Themes/Estore_11_shoes/01-base.css",
                     "~/Assets/App_Themes/Estore_11_shoes/02-common.css",
                     "~/Assets/App_Themes/Estore_11_shoes/03-default.css",
                     "~/Assets/App_Themes/Estore_11_shoes/nivo-slideshow.css",
                     "~/Assets/App_Themes/Estore_11_shoes/04-module.css",
                     "~/Assets/css/jquery-ui.css"
                    
                     ));
            BundleTable.EnableOptimizations = true;


        }
        
    }
}
