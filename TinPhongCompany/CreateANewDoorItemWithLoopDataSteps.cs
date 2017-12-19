using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using TechTalk.SpecFlow;
using NUnit.Framework;
using TechTalk.SpecFlow.Assist;
using System.Collections.Generic;
using System.Linq;

namespace TinPhongCompany
{
    [Binding]
    public class CreateANewDoorItemWithLoopDataSteps
    {
        public IWebDriver driver;
        [Given(@"I am logged into the site as an administrators")]
        public void GivenIAmLoggedIntoTheSiteAsAnAdministrators()
        {
            ChromeOptions options = new ChromeOptions();
            options.AddArguments("--disable-extensions");
            options.AddArgument("test-type");
            options.AddArgument("--ignore-certificate-errors");
            options.AddArgument("no-sandbox");
            options.AddArgument("--start-maximized");

            driver = new ChromeDriver(@"C:\Users\ThanhPhi\Desktop\ASPNET MVC5\tinphongproject\chromedriver_win32", options);
            driver.Navigate().GoToUrl("http://www.tinphong.com/Admin/login/");
            driver.FindElement(By.Id("Username")).SendKeys("tpwindow@tpwindow.vn");
            driver.FindElement(By.Id("Password")).SendKeys("tranlamphong0107"); //hidden
            driver.FindElement(By.ClassName("submit")).Click();
        }

        [When(@"I go to  add product page")]
        public void WhenIGoToAddProductPage()
        {
             driver.Navigate().GoToUrl("http://www.tinphong.com/admin/product/addproduct/");
        }

        [When(@"I enter the following information (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*)  (.*) (.*) (.*) (.*)")]
        public void WhenIEnterTheFollowingInformation(string p0, string p1,
            string p2, string p3, string p4, string p5, string p6, string p7,
            string p8, string p9, string p10, string p11, string p12, 
            string p13, string p14)
        {
          
            driver.FindElement(By.Id("Name")).SendKeys(p0);
            driver.FindElement(By.Id("MetaTitle")).SendKeys(p1);
            driver.FindElement(By.Id("SeoTitle")).SendKeys(p2);
            driver.FindElement(By.Id("Code")).SendKeys(p3);

            driver.FindElement(By.Id("Description")).SendKeys(p4);

            var iframe = driver.FindElement(By.TagName("iframe"));
            driver.SwitchTo().Frame(iframe);
            var tinymce = driver.FindElement(By.TagName("body"));
            tinymce.Clear();
            tinymce.SendKeys(p9);
            //var a = driver.FindElement(By.Name("ProductDetail"));
            //driver.ExecuteJavaScript<string>("return arguments[0].SendKeys(product.ProductDetail);", a);

            driver.SwitchTo().DefaultContent();
            var tbimage = driver.FindElement(By.Id("tbImage"));

            ((IJavaScriptExecutor)driver).ExecuteScript(
                "arguments[0].removeAttribute('readonly','readonly')", tbimage);

            tbimage.SendKeys(p5);
            driver.FindElement(By.Id("Price")).SendKeys(p6.ToString());
            driver.FindElement(By.Id("PromotionPrice")).SendKeys(p7.ToString());
            driver.FindElement(By.Id("CategoryID")).SendKeys(p8.ToString());
            driver.FindElement(By.Id("Waranty")).SendKeys(p10.ToString());
            driver.FindElement(By.Id("MetaKeywords")).SendKeys(p11);
            driver.FindElement(By.Id("MetaDescriptions")).SendKeys(p12);
         

            List<IWebElement> content_data = new List<IWebElement>();
            content_data = driver.FindElements(By.Name("Status")).ToList();

            if (p13 == "true")
            {
                content_data[0].Click();
            }
            else
            {
                content_data[1].Click();
            }

            driver.FindElement(By.Id("ViewCount")).SendKeys(p14.ToString());


        }

        [When(@"I will click the ""(.*)"" button")]
        public void WhenIWillClickTheButton(string p0)
        {
             driver.FindElement(By.XPath("//*[@type='submit']")).Click();
        }

        [Then(@"I should see view (.*)")]
        public void ThenIShouldSeeView(string p0)
        {
            Assert.AreEqual(p0.ToLower(), driver.Title.ToLower());
            driver.Close();
        }
    }
}
