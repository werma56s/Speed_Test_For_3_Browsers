using NUnit.Framework;
using OpenQA.Selenium;
using System;
using System.Linq;
using TechTalk.SpecFlow;
using Test_Project_Selenium_Helion.POM;

namespace Test_Project_Selenium_Helion.StepDefinitions
{
    [Binding]
    public class MainFuncionalTests_EnglishLanguageVersionStepDefinitions
    {
        private IWebDriver driver;
        ObjectFormWebsite websiteObjects; 
        public MainFuncionalTests_EnglishLanguageVersionStepDefinitions(IWebDriver driver)
        {
            this.driver = driver;
            this.websiteObjects = new ObjectFormWebsite(driver);
        }

        [Given(@"Go to page ""([^""]*)""")]
        public void GivenGoToPage(string p0)
        {
            driver.Navigate().GoToUrl($"{p0}");
            driver.Manage().Timeouts().ImplicitWait = System.TimeSpan.FromSeconds(60);
            driver.Manage().Window.Maximize();
        }

        [When(@"Enter a keyword in the search box ""([^""]*)""")]
        public void WhenEnterAKeywordInTheSearchBox(string p0)
        {
            websiteObjects.AddTextToInputSearch(p0);
        }

        [When(@"Click the search button")]
        public void WhenClickTheSearchButton()
        {
            websiteObjects.ClickSearchButton();
        }

        [Then(@"User can see the book ""([^""]*)""")]
        public void ThenUserCanSeeTheBook(string p0)
        {
            var element = driver.FindElement(By.XPath("//*[contains(@class,'-link short-title')]")).Text;
            Assert.AreEqual(p0, element);
        }

        [When(@"Click the button - Add to shopping cart")]
        public void WhenClickTheButton_AddToShoppingCart()
        {
            websiteObjects.ClickShoppingCardButton();
        }

        [Then(@"User sees a book in the shopping cart ""([^""]*)""")]
        public void ThenUserSeesABookInTheShoppingCart(string p0)
        {
            var element = driver.FindElement(By.XPath("//*[contains(@class,'successbox oneline')]")).Text;
            p0 = "Dodano: \"" + p0 + "\"";

            Assert.AreEqual(p0, element);
        }

        [When(@"Click - To clipboard")]
        public void WhenClick_ToClipboard()
        {
            websiteObjects.ClickAddProcuctToClipboardButton();
        }

        [Then(@"User can see the book in the clipboard ""([^""]*)""")]
        public void ThenUserCanSeeTheBookInTheClipboard(string p0)
        {
            var element = driver.FindElement(By.XPath("//*[contains(@class,'desc')]/h2")).Text;
            Assert.AreEqual(p0, element);
        }

        [Then(@"The user can see (.*) author's books ""([^""]*)""")]
        public void ThenTheUserCanSeeAuthorsBooks(int p0, string p1)
        {
            var elements = driver.FindElements(By.XPath($"//p[contains(@class,'author')]/a")).Select(x => x.Text.Contains(p1)).ToList();
            var result = elements.Count == p0 ? true : false;

            Assert.True(result);
        }

        [When(@"Click on the categories ""([^""]*)""")]
        public void WhenClickOnTheCategories(string p0)
        {
            driver.FindElement(By.XPath($"//a[contains(text(),'{p0}')]")).Click();
        }

        [Then(@"The user can see the categories ""([^""]*)""")]
        public void ThenTheUserCanSeeTheCategories(string p0)
        {
            var element = driver.FindElement(By.XPath($"//div[contains(@id,'categoryDescription')]/p/b")).Text;
            Assert.AreEqual(p0, element);
        }
    }
}
