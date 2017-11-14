using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _06Ajax
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       

        protected void Button5_Click(object sender, EventArgs e)
        {
            int a = WebServiceDefault.MethodSum(Convert.ToInt32(TextBox1.Text),Convert.ToInt32(TextBox2.Text));
            Label1.Text = a.ToString();
        }
    }
}