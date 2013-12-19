using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ptc_code_lib;

namespace PratheekshaSite
{
    public partial class StudentRegistration : System.Web.UI.Page
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
            Random r=new Random();
            Random rr = new Random();
            string admid = name_txt.Text.Substring(0, 2) + gname_txt.Text.Substring(0, 2) + r.Next(1000, 10000) + rr.Next(10000, 20000); ;
            string s = DataLayer.stringScalar("hse_studreg", admid, name_txt.Text, gender_rdio.SelectedItem.Text, datepicker.Text, cls.SelectedItem.Text, medium_rdio.SelectedItem.Text, school_txt.Text,branchList1.SelectedItem.Text, gname_txt.Text, cname_txt.Text);
            if (s == "success")
            {
                msg_lbl.Text = "Admission ID=" + admid;
            }
            else
            {
                msg_lbl.Text = "Duplication in Admission ID...Try Again";
            }
            msg_lbl.Visible = true;
        }

        protected void name_txt_TextChanged(object sender, EventArgs e)
        {
            name_txt.Text = name_txt.Text.ToUpper();
        }

        protected void gname_txt_TextChanged(object sender, EventArgs e)
        {
            gname_txt.Text = gname_txt.Text.ToUpper();
        }
    }
}