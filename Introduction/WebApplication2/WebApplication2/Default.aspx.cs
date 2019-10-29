using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int count = 0;
            count++;
        }

        protected void getResult_Click(object sender, EventArgs e)
        {
            string arr = name.Text;
            result.Text = "Hello "+arr;
        }

        protected void name_TextChanged(object sender, EventArgs e)
        {
            result.Text =name.Text+"ddddddd";
        }
    }
}