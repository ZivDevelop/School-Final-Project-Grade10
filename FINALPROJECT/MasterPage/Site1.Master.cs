using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINALPROJECT.MasterPage
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["userName"] == ""|| Request.Form["userName"]==null)
            {
                Session["userName"] = "Visitor";
            }
        }
        
    }
}