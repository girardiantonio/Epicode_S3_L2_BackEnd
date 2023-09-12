using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epicode_S3_L2_BackEnd
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["user"] == null)
            {

            }
            else
            {
                Response.Redirect("Gestione.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (inputEmail.Text == WebConfigurationManager.AppSettings["username"] && inputPassword.Text == WebConfigurationManager.AppSettings["password"])
            {
                HttpCookie login = new HttpCookie("user");
                login.Values["email"] = inputEmail.Text;
                login.Values["password"] = inputPassword.Text;
                login.Expires = DateTime.Now.AddMinutes(0.1);
                Response.Cookies.Add(login);

                Response.Redirect("Gestione.aspx");
            }
            else
            {
                errore.Text = "Email o password errati. Per favore riprova.";
            }
        }
    }
}