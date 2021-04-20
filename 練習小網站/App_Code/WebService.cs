using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Xml;
using System.Collections.Specialized;
using AjaxControlToolkit;


/// <summary>
/// WebService 的摘要描述
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.ComponentModel.ToolboxItem(false)]
// 若要允許使用 ASP.NET AJAX 從指令碼呼叫此 Web 服務，請取消註解下列一行。
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{
    private static XmlDocument _document;
    private static object _lock = new object();

    public static XmlDocument Document
    {
        get
        {
            lock (_lock)
            {
                if (_document == null)
                {
                    _document = new XmlDocument();
                    _document.Load(
                        HttpContext.Current.Server.MapPath("XMLFile.xml"));
                }
            }
            return _document;
        }
    }

    public static string[] Hierarchy
    {
        get { return new string[] { "county", "town" }; }
    }

    [WebMethod]
    public CascadingDropDownNameValue[] GetDropDownContents(string knownCategoryValues,
        string category)
    {
        StringDictionary knownCategoryValuesDictionary =
            CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);
        return CascadingDropDown.QuerySimpleCascadingDropDownDocument(
            Document, Hierarchy, knownCategoryValuesDictionary, category);
    }

    public WebService()
    {

        //如果使用設計的元件，請取消註解下列一行
        //InitializeComponent(); 
    }

    //[WebMethod]
    //public string HelloWorld()
    //{
    //    return "Hello World";
    //}

}
