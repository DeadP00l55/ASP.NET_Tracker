using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3343_StevensL_Lab05
{
    public partial class NorthwindWebApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GSButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://www.google.com/search?q=food+products");
        }
    }
}