using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace _06Ajax
{
    /// <summary>
    /// Summary description for WebServiceDefault
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    [System.Web.Script.Services.ScriptService] // Разрешает вызовы JSON из клиентов.
    public class WebServiceDefault : System.Web.Services.WebService
    {

        [WebMethod]
        //public string MethodSum()
        //{
        //    return "Hello World!!!";
        //}
        public static int MethodSum(int parA, int parB)
        {
            return parA + parB;
        }

    }
}
