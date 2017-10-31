﻿using Model.EF;
using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Remote;
using OpenQA.Selenium.Support.Extensions;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;

namespace TinPhongCompany
{
    [Binding]
    public class CreateANewDoorItemSteps
    {
        public IWebDriver driver;
        [Given(@"I am logged into the site as an administrator")]
        public void GivenIAmLoggedIntoTheSiteAsAnAdministrator()
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

        [When(@"I go to page add product")]
        public void WhenIGoToPageAddProduct()
        {
            driver.Navigate().GoToUrl("http://www.tinphong.com/admin/product/addproduct/");

        }

        [When(@"I enter the following information")]
        public void WhenIEnterTheFollowingInformation(Table table)
        {
            var product = table.CreateInstance<Product>();
            driver.FindElement(By.Id("Name")).SendKeys(product.Name);
            driver.FindElement(By.Id("MetaTitle")).SendKeys(product.MetaTitle);
            driver.FindElement(By.Id("SeoTitle")).SendKeys(product.SeoTitle);
            driver.FindElement(By.Id("Code")).SendKeys(product.Code);

            driver.FindElement(By.Id("Description")).SendKeys(product.Description);

            var iframe = driver.FindElement(By.TagName("iframe"));
            driver.SwitchTo().Frame(iframe);
            var tinymce = driver.FindElement(By.TagName("body"));
            tinymce.Clear();
            tinymce.SendKeys(product.ProductDetail);
            //var a = driver.FindElement(By.Name("ProductDetail"));
            //driver.ExecuteJavaScript<string>("return arguments[0].SendKeys(product.ProductDetail);", a);

            driver.SwitchTo().DefaultContent();
            var tbimage = driver.FindElement(By.Id("tbImage"));

            ((IJavaScriptExecutor)driver).ExecuteScript(
                "arguments[0].removeAttribute('readonly','readonly')", tbimage);

            tbimage.SendKeys(product.Image);
            driver.FindElement(By.Id("Price")).SendKeys(product.Price.ToString());
            driver.FindElement(By.Id("PromotionPrice")).SendKeys(product.PromotionPrice.ToString());
            driver.FindElement(By.Id("CategoryID")).SendKeys(product.CategoryID.ToString());
            driver.FindElement(By.Id("Waranty")).SendKeys(product.Waranty.ToString());
            driver.FindElement(By.Id("MetaKeywords")).SendKeys(product.MetaKeywords);
            driver.FindElement(By.Id("MetaDescriptions")).SendKeys(product.MetaDescriptions);
            driver.FindElement(By.Id("Waranty")).SendKeys(product.Waranty.ToString());


            List<IWebElement> content_data = new List<IWebElement>();
            content_data = driver.FindElements(By.Name("Status")).ToList();

            if (product.Status == true)
            {
                content_data[0].Click();
            }
            else
            {
                content_data[1].Click();
            }

            driver.FindElement(By.Id("ViewCount")).SendKeys(product.ViewCount.ToString());


        }

        [When(@"I enter the following information with empty name door")]
        public void WhenIEnterTheFollowingInformationWithEmptyNameDoor(Table table)
        {
            var product = table.CreateInstance<Product>();
            driver.FindElement(By.Id("MetaTitle")).SendKeys(product.MetaTitle);
            driver.FindElement(By.Id("SeoTitle")).SendKeys(product.SeoTitle);
            driver.FindElement(By.Id("Code")).SendKeys(product.Code);

            driver.FindElement(By.Id("Description")).SendKeys(product.Description);

            var iframe = driver.FindElement(By.TagName("iframe"));
            driver.SwitchTo().Frame(iframe);
            var tinymce = driver.FindElement(By.TagName("body"));
            tinymce.Clear();
            tinymce.SendKeys(product.ProductDetail);
            //var a = driver.FindElement(By.Name("ProductDetail"));
            //driver.ExecuteJavaScript<string>("return arguments[0].SendKeys(product.ProductDetail);", a);

            driver.SwitchTo().DefaultContent();
            var tbimage = driver.FindElement(By.Id("tbImage"));

            ((IJavaScriptExecutor)driver).ExecuteScript(
                "arguments[0].removeAttribute('readonly','readonly')", tbimage);

            tbimage.SendKeys(product.Image);
            driver.FindElement(By.Id("Price")).SendKeys(product.Price.ToString());
            driver.FindElement(By.Id("PromotionPrice")).SendKeys(product.PromotionPrice.ToString());
            driver.FindElement(By.Id("CategoryID")).SendKeys(product.CategoryID.ToString());
            driver.FindElement(By.Id("Waranty")).SendKeys(product.Waranty.ToString());
            driver.FindElement(By.Id("MetaKeywords")).SendKeys(product.MetaKeywords);
            driver.FindElement(By.Id("MetaDescriptions")).SendKeys(product.MetaDescriptions);
            driver.FindElement(By.Id("Waranty")).SendKeys(product.Waranty.ToString());


            List<IWebElement> content_data = new List<IWebElement>();
            content_data = driver.FindElements(By.Name("Status")).ToList();

            if (product.Status == true)
            {
                content_data[0].Click();
            }
            else
            {
                content_data[1].Click();
            }

            driver.FindElement(By.Id("ViewCount")).SendKeys(product.ViewCount.ToString());

        }

        [When(@"I enter the following information with price<(.*)")]
        public void WhenIEnterTheFollowingInformationWithPrice(int p0, Table table)
        {
            var product = table.CreateInstance<Product>();
            driver.FindElement(By.Id("Name")).SendKeys(product.Name);
            driver.FindElement(By.Id("MetaTitle")).SendKeys(product.MetaTitle);
            driver.FindElement(By.Id("SeoTitle")).SendKeys(product.SeoTitle);
            driver.FindElement(By.Id("Code")).SendKeys(product.Code);

            driver.FindElement(By.Id("Description")).SendKeys(product.Description);

            var iframe = driver.FindElement(By.TagName("iframe"));
            driver.SwitchTo().Frame(iframe);
            var tinymce = driver.FindElement(By.TagName("body"));
            tinymce.Clear();
            tinymce.SendKeys(product.ProductDetail);
            //var a = driver.FindElement(By.Name("ProductDetail"));
            //driver.ExecuteJavaScript<string>("return arguments[0].SendKeys(product.ProductDetail);", a);

            driver.SwitchTo().DefaultContent();
            var tbimage = driver.FindElement(By.Id("tbImage"));

            ((IJavaScriptExecutor)driver).ExecuteScript(
                "arguments[0].removeAttribute('readonly','readonly')", tbimage);

            tbimage.SendKeys(product.Image);
            driver.FindElement(By.Id("Price")).SendKeys(product.Price.ToString());
            driver.FindElement(By.Id("PromotionPrice")).SendKeys(product.PromotionPrice.ToString());
            driver.FindElement(By.Id("CategoryID")).SendKeys(product.CategoryID.ToString());
            driver.FindElement(By.Id("Waranty")).SendKeys(product.Waranty.ToString());
            driver.FindElement(By.Id("MetaKeywords")).SendKeys(product.MetaKeywords);
            driver.FindElement(By.Id("MetaDescriptions")).SendKeys(product.MetaDescriptions);
            driver.FindElement(By.Id("Waranty")).SendKeys(product.Waranty.ToString());


            List<IWebElement> content_data = new List<IWebElement>();
            content_data = driver.FindElements(By.Name("Status")).ToList();

            if (product.Status == true)
            {
                content_data[0].Click();
            }
            else
            {
                content_data[1].Click();
            }

            driver.FindElement(By.Id("ViewCount")).SendKeys(product.ViewCount.ToString());
        }
        [When(@"I enter the following information with viewcount<(.*)")]
        public void WhenIEnterTheFollowingInformationWithViewcount(int p0, Table table)
        {
            var product = table.CreateInstance<Product>();
            driver.FindElement(By.Id("Name")).SendKeys(product.Name);
            driver.FindElement(By.Id("MetaTitle")).SendKeys(product.MetaTitle);
            driver.FindElement(By.Id("SeoTitle")).SendKeys(product.SeoTitle);
            driver.FindElement(By.Id("Code")).SendKeys(product.Code);

            driver.FindElement(By.Id("Description")).SendKeys(product.Description);

            var iframe = driver.FindElement(By.TagName("iframe"));
            driver.SwitchTo().Frame(iframe);
            var tinymce = driver.FindElement(By.TagName("body"));
            tinymce.Clear();
            tinymce.SendKeys(product.ProductDetail);
            //var a = driver.FindElement(By.Name("ProductDetail"));
            //driver.ExecuteJavaScript<string>("return arguments[0].SendKeys(product.ProductDetail);", a);

            driver.SwitchTo().DefaultContent();
            var tbimage = driver.FindElement(By.Id("tbImage"));

            ((IJavaScriptExecutor)driver).ExecuteScript(
                "arguments[0].removeAttribute('readonly','readonly')", tbimage);

            tbimage.SendKeys(product.Image);
            driver.FindElement(By.Id("Price")).SendKeys(product.Price.ToString());
            driver.FindElement(By.Id("PromotionPrice")).SendKeys(product.PromotionPrice.ToString());
            driver.FindElement(By.Id("CategoryID")).SendKeys(product.CategoryID.ToString());
            driver.FindElement(By.Id("Waranty")).SendKeys(product.Waranty.ToString());
            driver.FindElement(By.Id("MetaKeywords")).SendKeys(product.MetaKeywords);
            driver.FindElement(By.Id("MetaDescriptions")).SendKeys(product.MetaDescriptions);
            driver.FindElement(By.Id("Waranty")).SendKeys(product.Waranty.ToString());


            List<IWebElement> content_data = new List<IWebElement>();
            content_data = driver.FindElements(By.Name("Status")).ToList();

            if (product.Status == true)
            {
                content_data[0].Click();
            }
            else
            {
                content_data[1].Click();
            }

            driver.FindElement(By.Id("ViewCount")).SendKeys(product.ViewCount.ToString());
        }

        [When(@"I enter the following information with empty image field")]
        public void WhenIEnterTheFollowingInformationWithEmptyImageField(Table table)
        {
            var product = table.CreateInstance<Product>();
            driver.FindElement(By.Id("Name")).SendKeys(product.Name);
            driver.FindElement(By.Id("MetaTitle")).SendKeys(product.MetaTitle);
            driver.FindElement(By.Id("SeoTitle")).SendKeys(product.SeoTitle);
            driver.FindElement(By.Id("Code")).SendKeys(product.Code);

            driver.FindElement(By.Id("Description")).SendKeys(product.Description);

            var iframe = driver.FindElement(By.TagName("iframe"));
            driver.SwitchTo().Frame(iframe);
            var tinymce = driver.FindElement(By.TagName("body"));
            tinymce.Clear();
            tinymce.SendKeys(product.ProductDetail);

            driver.SwitchTo().DefaultContent();

            driver.FindElement(By.Id("Price")).SendKeys(product.Price.ToString());
            driver.FindElement(By.Id("PromotionPrice")).SendKeys(product.PromotionPrice.ToString());
            driver.FindElement(By.Id("CategoryID")).SendKeys(product.CategoryID.ToString());
            driver.FindElement(By.Id("Waranty")).SendKeys(product.Waranty.ToString());
            driver.FindElement(By.Id("MetaKeywords")).SendKeys(product.MetaKeywords);
            driver.FindElement(By.Id("MetaDescriptions")).SendKeys(product.MetaDescriptions);
            driver.FindElement(By.Id("Waranty")).SendKeys(product.Waranty.ToString());


            List<IWebElement> content_data = new List<IWebElement>();
            content_data = driver.FindElements(By.Name("Status")).ToList();

            if (product.Status == true)
            {
                content_data[0].Click();
            }
            else
            {
                content_data[1].Click();
            }

            driver.FindElement(By.Id("ViewCount")).SendKeys(product.ViewCount.ToString());
        }


        [When(@"I click the ""(.*)"" button")]
        public void WhenIClickTheButton(string p0)
        {
            driver.FindElement(By.XPath("//*[@type='submit']")).Click();

        }

        [Then(@"I should see view ""(.*)""")]
        public void ThenIShouldSeeView(string p0)
        {
            Assert.AreEqual(p0.ToLower(), driver.Title.ToLower());
            driver.Close();

        }

        [Then(@"I should see view ""(.*)"" again")]
        public void ThenIShouldSeeViewAgain(string p0)
        {
            Assert.AreEqual(p0.ToLower(), driver.Title.ToLower());
            driver.Close();
        }


        [Then(@"I should see view ""(.*)"" again because error")]
        public void ThenIShouldSeeViewAgainBecauseError(string p0)
        {
            Assert.AreEqual(p0.ToLower(), driver.Title.ToLower());
            driver.Close();
        }
    }
}
