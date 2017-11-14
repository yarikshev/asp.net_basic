using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        StreamReader sr;
        protected void Page_Load(object sender, EventArgs e)
        {

            sr = new StreamReader(@"E:\gitprojects\[ITVDN] ASP.NET Базовый\002_Page\WebApplication1\WebApplication1\App_Data\TextFile1.txt");          
                Label1.Text = sr.ReadToEnd();
              
           
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            sr.Close();
        }

    }
}