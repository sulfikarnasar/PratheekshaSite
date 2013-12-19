using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ptc_code_lib;
using System.Web.Security;
namespace PratheekshaSite
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                msg_lbl.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string usertype = DataLayer.stringScalar("login_sp",uname_txt.Text,pass_txt.Text);
            if (usertype == "admin")
            {
                cookie(uname_txt.Text);
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                msg_lbl.Text = "Invalid username or password";
                msg_lbl.Visible = true;
            }
        }
        public void cookie(string username)
        {
            FormsAuthentication.SetAuthCookie(
                 username, false);

            FormsAuthenticationTicket ticket1 =
               new FormsAuthenticationTicket(
                    1,                                   // version
                    username,   // get username  from the form
                    DateTime.Now,                        // issue time is now
                    DateTime.Now.AddMinutes(10),         // expires in 10 minutes
                    false,      // cookie is not persistent
                    username                              // role assignment is stored
                // in userData
                    );
            HttpCookie cookie1 = new HttpCookie(
              FormsAuthentication.FormsCookieName,
              FormsAuthentication.Encrypt(ticket1));
            Response.Cookies.Add(cookie1);
        }
    }
}