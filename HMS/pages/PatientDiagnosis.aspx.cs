using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BCC_DOTNET_HMS_EntityLayer;
using BCC_DOTNET_HMS_BusinessLayer;
using System.Data;

namespace HMS
{
    public partial class PatientDiagnosis : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        BusinessLayer objBusiness = new BusinessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fill_physician(Session["plan"].ToString(), Session["state"].ToString());
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int result = 0;
            EntityLayer objEntity = new EntityLayer();
            objEntity.symptoms = txtSymptoms.Text;
            objEntity.diagnosisArea = txtDiagnosis.Text;
            objEntity.physician = ddlPhysician.Text;
            objEntity.dateOfDiagnosis = dateOfDiagnosis().ToString();
            objEntity.followUpRequired = checkbox();
            objEntity.followUpDate = dateOfFollowUp().ToString();

            result= objBusiness.addReport(objEntity);
            if (result>0)
            {
                Response.Write("<script>alert('Report saved successfully....!!');</script>");
                billing.Visible = true;
            }
            else
            {
                Response.Write("<script>alert('Error occured while saving report.....!!');</script>");
                SetFocus(txtSymptoms);
            }
        }

        public void fill_physician(string plan, string state)
        {
            ddlPhysician.DataBind();
            ddlPhysician.DataTextField = objBusiness.BFillPhysician(plan, state).Columns[1].ToString();
            ddlPhysician.DataValueField = objBusiness.BFillPhysician(plan, state).Columns[0].ToString();
            dt = objBusiness.BFillPhysician(plan, state);
            ddlPhysician.DataSource = dt;
            ddlPhysician.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int result = 0;
            EntityLayer objEntity1 = new EntityLayer();
            objEntity1.billAmount = txtBillAmount.Text;
            objEntity1.modeOfPayment = ddlModeofPayment.Text;
            objEntity1.cardNo = txtCardNo.Text;

            result = objBusiness.billing(objEntity1);

            if (result >0)
            {
                Response.Write("<script>alert('Billing was successfull....!!');</script>");               
                Session.Abandon();
                Response.Redirect("EnrollPatients.aspx");
            }
            else
            {
                Response.Write("<script>alert('Error occured while billing.....!!');</script>");
                SetFocus(txtBillAmount);
            }
        }

        protected void cbFollowUp_CheckedChanged(object sender, EventArgs e)
        {
            panelDOF.Visible = (cbFollowUp.Checked == true);
        }

        protected void ddlModeofPayment_SelectedIndexChanged(object sender, EventArgs e)
        {
            panelCardNo.Visible = ddlModeofPayment.SelectedValue == "Card";
        }
        private string checkbox()
        {
            if (cbFollowUp.Checked == true)
            {
                return "Y";
            }
            else
            {
                return "N";
            }
        }
        private StringBuilder dateOfDiagnosis()
        {
            StringBuilder dob = new StringBuilder();
            dob.Append(ddlDayDOD.Text);
            dob.Append('-');
            dob.Append(ddlMonthDOD.Text);
            dob.Append('-');
            dob.Append(ddlYearDOD.Text);
            return dob;
        }
        private StringBuilder dateOfFollowUp()
        {
            StringBuilder dob = new StringBuilder();
            dob.Append(ddlDayDOF.Text);
            dob.Append('-');
            dob.Append(ddlMonthDOF.Text);
            dob.Append('-');
            dob.Append(ddlYearDOF.Text);
            return dob;
        }
    }
}