using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BCC_DOTNET_HMS_EntityLayer;
using BCC_DOTNET_HMS_BusinessLayer;
using System.Data;
using System.Text;
using System.Globalization;

namespace HMS
{
    public partial class EnrollPatients : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        BusinessLayer objBusiness = new BusinessLayer();
        string datetime;
        protected void Page_Load(object sender, EventArgs e)
        {
            SetFocus(txtFName);
            if (!IsPostBack)
            {
                fill_plan();
                fill_state();
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            int result = 0;
            DateOfBirth();
            if (datetime != null)
            {
                EntityLayer objEntity = new EntityLayer();
                objEntity.firstName = txtFName.Text;
                objEntity.lastName = txtLName.Text;
                objEntity.email = txtEmail.Text;
                objEntity.dateOfBirth = datetime;
                objEntity.phone = txtPhone.Text;
                objEntity.plan = ddlPlan.Text;
                objEntity.state = ddlState.Text;

                result = objBusiness.addPatients(objEntity);

                if (result > 0)
                {
                    Response.Write("<script>alert('You have Registered successfully....!!');</script>");
                    Session["Plan"] = ddlPlan.Text;
                    Session["State"] = ddlState.Text;
                    Response.Redirect("PatientDiagnosis.aspx");
                }
                else
                {
                    Response.Write("<script>alert('You have Not Registered successfully.....!!');</script>");
                    SetFocus(txtFName);
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Date.....!!');</script>");
            }
        }
        public void fill_plan()
        {
            ddlPlan.DataBind();
            ddlPlan.DataTextField = objBusiness.BFillPlan().Columns[1].ToString();
            ddlPlan.DataValueField = objBusiness.BFillPlan().Columns[0].ToString();
            dt = objBusiness.BFillPlan();
            ddlPlan.DataSource = dt;
            ddlPlan.DataBind();
        }
        public void fill_state()
        {
            ddlState.DataBind();
            ddlState.DataTextField = objBusiness.BFillState().Columns[1].ToString();
            ddlState.DataValueField = objBusiness.BFillState().Columns[0].ToString();
            dt1 = objBusiness.BFillState();
            ddlState.DataSource = dt1;
            ddlState.DataBind();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ClearControl(this);
        }
        private void ClearControl(Control control)
        {
            var textbox = control as TextBox;
            if (textbox != null)
                textbox.Text = string.Empty;

            var dropDownList = control as DropDownList;
            if (dropDownList != null)
                dropDownList.SelectedIndex = 0;

    foreach (Control childControl in control.Controls)
            {
                ClearControl(childControl);
            }
        }
        private void DateOfBirth()
        {
            StringBuilder dob = new StringBuilder();
            dob.Append(ddlDay.Text);
            dob.Append('-');
            dob.Append(ddlMonth.Text);
            dob.Append('-');
            dob.Append(ddlYear.Text);
            if (int.Parse(ddlYear.Text) <= DateTime.Now.Year)
            {
                if (int.Parse(ddlMonth.Text) <= DateTime.Now.Month)
                {
                    if (int.Parse(ddlDay.Text) <= DateTime.Now.Day)
                    {
                        datetime= dob.ToString();
                    }
                    else
                    {
                        Page.Response.Write("<script>alert('Invalid Date.....!!');</script>");
                    }
                }
                else
                {
                    Page.Response.Write("<script>alert('Invalid Date.....!!');</script>");
                }
            }
            else
            {
                Page.Response.Write("<script>alert('Invalid Date.....!!');</script>");
            }
        }
    }
}