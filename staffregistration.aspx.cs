using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ptc_code_lib;
using System.Drawing;
namespace PratheekshaSite
{
    public partial class staffregistration : System.Web.UI.Page
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
            string response = DataLayer.stringScalar("staffreg_sp", name_txt.Text, Convert.ToInt16(age_txt.Text), address_txt.Text, mobile_txt.Text,email_txt.Text, username_txt.Text, password_txt.Text);
            if (response == "success")
            {
                msg_lbl.Text = "---Registration Completed---";
                msg_lbl.ForeColor = Color.Blue;
                msg_lbl.Visible = true;
            }
            else
            {
                msg_lbl.Text = "Username already exist";
                msg_lbl.ForeColor = Color.Red;
                msg_lbl.Visible = true;
            }
        }
    }
}