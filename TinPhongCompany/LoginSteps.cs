using System;
using TechTalk.SpecFlow;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using NUnit.Framework;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;

namespace Specflow
{
    [Binding]
    public class LoginSteps
    {
      
        IWebDriver driver;
        [Given(@"navigate to login page")]
        public void GivenNavigateToLoginPage()
        {
          
            ChromeOptions options = new ChromeOptions();
            options.AddArguments("--disable-extensions");
            options.AddArgument("test-type");
            options.AddArgument("--ignore-certificate-errors");
            options.AddArgument("no-sandbox");
            options.AddArgument("--start-maximized");

            driver = new ChromeDriver(@"C:\Users\ThanhPhi\Desktop\ASPNET MVC5\tinphongproject\chromedriver_win32", options);
           
            driver.Navigate().GoToUrl("http://www.tinphong.com/Admin/login/");
        }
     

        [Given(@"i have entered user name and password")]
        public void GivenIHaveEnteredUserNameAndPassword(Table table)
        {

            var credentials = table.CreateInstance<Account>();
            driver.FindElement(By.Id("Username")).SendKeys(credentials.Username);
            driver.FindElement(By.Id("Password")).SendKeys(credentials.Password);
         
        }
        [Given(@"i have entered user name and no password")]
        public void GivenIHaveEnteredUserNameAndNoPassword(Table table)
        {
            var credentials = table.CreateInstance<Account>();
            driver.FindElement(By.Id("Username")).SendKeys(credentials.Username);
            driver.FindElement(By.Id("Password")).SendKeys(credentials.Password);
        }

        [Given(@"i have entered no user name and password")]
        public void GivenIHaveEnteredNoUserNameAndPassword(Table table)
        {
            var credentials = table.CreateInstance<Account>();
            driver.FindElement(By.Id("Username")).SendKeys(credentials.Username);
            driver.FindElement(By.Id("Password")).SendKeys(credentials.Password);
        }
        [Given(@"i have entered empty")]
        public void GivenIHaveEnteredEmpty(Table table)
        {
            var credentials = table.CreateInstance<Account>();
            driver.FindElement(By.Id("Username")).SendKeys(credentials.Username);
            driver.FindElement(By.Id("Password")).SendKeys(credentials.Password);
        }

        [Given(@"i have entered wrong username")]
        public void GivenIHaveEnteredWrongUsername(Table table)
        {
            var credentials = table.CreateInstance<Account>();
            driver.FindElement(By.Id("Username")).SendKeys(credentials.Username);
            driver.FindElement(By.Id("Password")).SendKeys(credentials.Password);
        }

        [Given(@"i have entered wrong password")]
        public void GivenIHaveEnteredWrongPassword(Table table)
        {
            var credentials = table.CreateInstance<Account>();
            driver.FindElement(By.Id("Username")).SendKeys(credentials.Username);
            driver.FindElement(By.Id("Password")).SendKeys(credentials.Password);
        }

        [Given(@"i have entered wrong username and password")]
        public void GivenIHaveEnteredWrongUsernameAndPassword(Table table)
        {
            var credentials = table.CreateInstance<Account>();
            driver.FindElement(By.Id("Username")).SendKeys(credentials.Username);
            driver.FindElement(By.Id("Password")).SendKeys(credentials.Password);
        }
        [When(@"i click log in")]
        public void WhenIClickLogIn()
        {
            driver.FindElement(By.ClassName("submit")).Click();
        }
        [When(@"i click logout")]
        public void WhenIClickLogOut()
        {
            driver.FindElement(By.ClassName("user-profile")).Click();
            
            driver.FindElement(By.LinkText("Logout")).Click();
        }
        [Then(@"the result should navige to homepage with logged in")]
        public void ThenTheResultShouldNavigeToHomepageWithLoggedIn()
        {
            try
            {
                Assert.AreEqual("Trang Chủ Admin Page", driver.Title);
            }
            catch (Exception e) { throw e; }
            finally
            {
                driver.Close();
            }
        }

        [Then(@"the result should navige to login page")]
        public void ThenTheResultShouldNavigeToLogInPage()
        {
           
            try
            {
                Assert.AreEqual("Trang Đăng Nhập", driver.Title);
            }
            catch (Exception e) { throw e; }
            finally
            {
                driver.Close();
            }
        }

        [Then(@"stay in login site")]
        public void ThenTheResultShouldalerterror()
        {
            try
            {
                Assert.AreEqual("Trang Đăng Nhập", driver.Title);
            }
            catch (Exception e) { throw e; }
            finally
            {
                driver.Close();
            }
        }
        
    }
}
