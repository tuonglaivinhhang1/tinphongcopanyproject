using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TechTalk.SpecFlow;
using WatiN.Core;

namespace TinPhongCompany
{
    public static class WebBrowser
    {
        public static FireFox Current
        {
            get
            {
                if (!ScenarioContext.Current.ContainsKey("browser"))
                    ScenarioContext.Current["browser"] = new FireFox();
                return ScenarioContext.Current["browser"] as FireFox;
            }
        }
    }
}