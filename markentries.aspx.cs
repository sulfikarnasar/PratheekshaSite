using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ptc_code_lib;
using System.Data;
namespace PratheekshaSite
{
    public partial class markentries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tr1.Visible = false;
                bind();
                DetailsView1.Visible = false;
                Button1.Visible = false;

            }
        }
        public void bind()
        {
            DataTable subjects = new DataTable();
            subjects.Columns.Add("MAL1");
            subjects.Columns.Add("MAL2");
            subjects.Columns.Add("ENG");
            subjects.Columns.Add("HINDI");
            subjects.Columns.Add("SOCIAL");
            subjects.Columns.Add("PHY");
            subjects.Columns.Add("CHE");
            subjects.Columns.Add("BIO");
            subjects.Columns.Add("MATHS");
            subjects.Columns.Add("IT");
            DataRow dr = subjects.NewRow();
            dr["MAL1"] = "";
            dr["MAL2"] = "";
            dr["HINDI"] = "";
            dr["ENG"] = "";
            dr["SOCIAL"] = "";
            dr["PHY"] = "";
            dr["CHE"] = "";
            dr["BIO"] = "";
            dr["MATHS"] = "";
            dr["IT"] = "";
            subjects.Rows.Add(dr);
            DetailsView1.DataSource = subjects;
            DetailsView1.DataBind();
        }
        protected void classList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (branchList.SelectedItem.Text == "SELECT")
            {
                Response.Write("<script>alert('Select Branch first')</script>");
            }
            else
            {
              DataTable dt=DataLayer.getDataTable("studentList_branchwise",branchList.SelectedItem.Text,classList.SelectedItem.Text);
                if(dt!=null)
                {
                    nameList.DataSource = dt;
                    nameList.DataTextField= "name";
                    nameList.DataValueField = "admid";
                    nameList.DataBind();
                    nameList.Items.Insert(0, "SELECT");
                    tr1.Visible = true;
                }
            }

        }

        protected void termList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int cnt = DataLayer.IntScalar("maklist_validity", nameList.SelectedValue, termList.SelectedItem.Text);
            if (cnt <= 0)
            {
                DetailsView1.Visible = true;
                Button1.Visible = true;
            }
            else
            {
                DetailsView1.Visible = false;
                Response.Write("<script>alert('This student marks is already entered for this term')</script>");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox txt = new TextBox();
            txt = (TextBox)DetailsView1.Rows[0].Cells[1].FindControl("TextBox1");
            string mal1 = txt.Text;
            txt = (TextBox)DetailsView1.Rows[1].Cells[1].FindControl("TextBox2");
            string mal2= txt.Text;
            txt = (TextBox)DetailsView1.Rows[2].Cells[1].FindControl("TextBox3");
            string eng = txt.Text;
            txt = (TextBox)DetailsView1.Rows[3].Cells[1].FindControl("TextBox4");
            string hindi = txt.Text;
            txt = (TextBox)DetailsView1.Rows[4].Cells[1].FindControl("TextBox5");
            string soc = txt.Text;
            txt = (TextBox)DetailsView1.Rows[5].Cells[1].FindControl("TextBox6");
            string phy = txt.Text;
            txt = (TextBox)DetailsView1.Rows[6].Cells[1].FindControl("TextBox7");
            string che = txt.Text;
            txt = (TextBox)DetailsView1.Rows[7].Cells[1].FindControl("TextBox8");
            string bio = txt.Text;
            txt = (TextBox)DetailsView1.Rows[8].Cells[1].FindControl("TextBox9");
            string maths = txt.Text;
            txt = (TextBox)DetailsView1.Rows[9].Cells[1].FindControl("TextBox10");
            string it = txt.Text;
            DataLayer.executeNonQuery("add_hsmarklist", nameList.SelectedValue, mal1, mal2, eng, hindi, soc, phy, che, bio, maths, it, termList.SelectedItem.Text);
            bind();
        }
    }
}