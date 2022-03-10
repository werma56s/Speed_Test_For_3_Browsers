using OpenQA.Selenium;
using SeleniumExtras.PageObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test_Project_Selenium_Helion.POM
{
    class ObjectFormWebsite
    {
        [FindsBy(How = How.Id, Using = "inputSearch")]
        public IWebElement inputSearch;

        [FindsBy(How = How.XPath, Using = "(//*[contains(@class,'button')])[1]")]
        public IWebElement btnSearch;

        [FindsBy(How = How.XPath, Using = "//*[contains(@id,'addToBasket_')]")]
        public IWebElement btnAddToShoppingCard;

        [FindsBy(How = How.XPath, Using = "//*[contains(@id,'przechowalnia')]")]
        public IWebElement btnAddProcuctToClipboard;

        public ObjectFormWebsite(IWebDriver driver)
        {
            PageFactory.InitElements(driver, this);
        }

        public void AddTextToInputSearch(string testToSearch) => inputSearch.SendKeys(testToSearch);
        public void ClickSearchButton() => btnSearch.Click();
        public void ClickShoppingCardButton() => btnAddToShoppingCard.Click();
        public void ClickAddProcuctToClipboardButton() => btnAddProcuctToClipboard.Click();

    }
}
