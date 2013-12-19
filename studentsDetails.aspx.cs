using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ptc_code_lib;
namespace PratheekshaSite
{
    public partial class studentsDetails : System.Web.UI.Page
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
            DataSet ds = DataLayer.getDataSet("studentDetails_sp", admid_txt.Text);
            if (ds != null)
            {
                if (ds.Tables.Count != 0 && ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count == 0 && ds.Tables[1].Rows.Count == 0 && ds.Tables[2].Rows.Count == 0 && ds.Tables[3].Rows.Count == 0)
                    {
                        msg_lbl.Text = "Invalid Admission ID";
                        msg_lbl.Visible = true;
                        DataList1.Visible = false;
                        DetailsView2.Visible = false;
                        DetailsView3.Visible = false;
                        DetailsView4.Visible = false;
                    }
                    else
                    {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        DataList1.DataSource = ds.Tables[0];
                        DataList1.DataBind();
                    }
                    
                     if (ds.Tables[1].Rows.Count > 0)
                    {
                        DetailsView2.DataSource = ds.Tables[1];
                        DetailsView2.DataBind();
                    }
                    if (ds.Tables[2].Rows.Count > 0)
                    {
                        DetailsView3.DataSource = ds.Tables[2];
                        DetailsView3.DataBind();
                    }
                    if (ds.Tables[3].Rows.Count > 0)
                    {
                        DetailsView4.DataSource = ds.Tables[3];
                        DetailsView4.DataBind();
                    }
                    DataList1.Visible = true;
                    DetailsView2.Visible = true;
                    DetailsView3.Visible = true;
                    DetailsView4.Visible = true;
                    
                    }
                    

                }
                else
                {


                    msg_lbl.Text = "Invalid Admission ID";
                    msg_lbl.Visible = true;
              
                }
            }
            else
            {
                msg_lbl.Text = "Invalid Admission ID";
                msg_lbl.Visible = true;
            }
        }
    }
}