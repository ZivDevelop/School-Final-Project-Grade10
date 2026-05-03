using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINALPROJECT.Login
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["userName"] = "Visitor";
            Session["Login"] = false; 
            if (IsPostBack) 
            {
                if (Request.Form["userName"] == null|| Request.Form["userName"] == "")
                { 
                    Session["userName"] = "Visitor";
                    userNameTXT.InnerHtml = "Cant be empty";
                        }
                else { Session["userName"] = Request.Form["userName"]; }
                if (Request.Form["userName"] == "ziv" && Request.Form["password"] == "VVVVV")
                {
                    Session["Login"] = true;
                    Session["userName"] = "back ziv";
                }
                else { isAdmin.InnerHtml = "welcome "+ Request.Form["userName"]; }
            }
            
         

        }

    }
}