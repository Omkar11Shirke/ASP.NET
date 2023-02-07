using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration_Form
{
    public partial class Form1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlState.SelectedItem.Value == "Maharashtra")
            {
                ddlCity.Items.Clear();
                ddlCity.Items.Add("MUMBAI");
                ddlCity.Items.Add("PUNE");
            }
            else if (ddlState.SelectedItem.Value == "Madhya Pradesh")
            {
                ddlCity.Items.Clear();
                ddlCity.Items.Add("Bhopal");
            }
            else if (ddlState.SelectedItem.Value == "Gujarat")
            {
                ddlCity.Items.Clear();
                ddlCity.Items.Add("Surat");
            }
            else if (ddlState.SelectedItem.Value == "Rajasthan")
            {
                ddlCity.Items.Clear();
                ddlCity.Items.Add("Jaisalmier");
            }
            else if (ddlState.SelectedItem.Value == "Goa")
            {
                ddlCity.Items.Clear();
                ddlCity.Items.Add("Panjim");
            }
            else if (ddlState.SelectedItem.Value == "Kerala")
            {
                ddlCity.Items.Clear();
                ddlCity.Items.Add("Kochi");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Label10.Text = txtName1.Text;
            Label11.Text = txtMobile.Text;
            Label12.Text = txtEmail.Text;
            Label13.Text = txtAge.Text;
            Label14.Text = ddlState.SelectedValue.ToString();
            Label15.Text = ddlCity.SelectedValue.ToString();
        }
    }
}