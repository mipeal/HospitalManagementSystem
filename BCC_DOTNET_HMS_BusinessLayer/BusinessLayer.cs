using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using BCC_DOTNET_HMS_EntityLayer;
using BCC_DOTNET_HMS_DataLayer;

namespace BCC_DOTNET_HMS_BusinessLayer
{
    public class BusinessLayer
    {
        DataTable objDT = new DataTable();
        DataTable objDT1 = new DataTable();
        DataTable objDT2 = new DataTable();
        DataLayer objData = new DataLayer();

        public int addPatients(EntityLayer objEntity)
        {
            int result = 0;
            objDT.Clear();
            objDT1.Clear();

            SqlParameter[] objDataParams = new SqlParameter[7];
            objDataParams[0] = new SqlParameter("@FName", SqlDbType.VarChar);
            objDataParams[0].Value = objEntity.firstName;

            objDataParams[1] = new SqlParameter("@LName", SqlDbType.VarChar);
            objDataParams[1].Value = objEntity.lastName;

            objDataParams[2] = new SqlParameter("@date_of_birth", SqlDbType.VarChar);
            objDataParams[2].Value = objEntity.dateOfBirth;

            objDataParams[3] = new SqlParameter("@phone", SqlDbType.VarChar);
            objDataParams[3].Value = objEntity.phone;

            objDataParams[4] = new SqlParameter("@email", SqlDbType.VarChar);
            objDataParams[4].Value = objEntity.email;

            objDataParams[5] = new SqlParameter("@state", SqlDbType.VarChar);
            objDataParams[5].Value = objEntity.state;

            objDataParams[6] = new SqlParameter("@plan", SqlDbType.VarChar);
            objDataParams[6].Value = objEntity.plan;

            result = objData.DataAddPatients(objDataParams);
            return result;
        }

        public int addReport(EntityLayer objEntity)
        {
            int result = 0;
            objDT2.Clear();

            SqlParameter[] objDataParams = new SqlParameter[7];
            objDataParams[0] = new SqlParameter("@symptoms", SqlDbType.VarChar);
            objDataParams[0].Value = objEntity.symptoms;

            objDataParams[1] = new SqlParameter("@diagnosis_provided", SqlDbType.VarChar);
            objDataParams[1].Value = objEntity.diagnosisArea;

            objDataParams[2] = new SqlParameter("@administered_by", SqlDbType.VarChar);
            objDataParams[2].Value = objEntity.physician;

            objDataParams[3] = new SqlParameter("@date_of_diagnosis", SqlDbType.Date);
            objDataParams[3].Value = objEntity.dateOfDiagnosis;

            objDataParams[4] = new SqlParameter("@followup", SqlDbType.VarChar);
            objDataParams[4].Value = objEntity.followUpRequired;

            objDataParams[5] = new SqlParameter("@date_of_followup", SqlDbType.Date);
            objDataParams[5].Value = objEntity.followUpDate;

            objDataParams[6] = new SqlParameter("@bill_id", SqlDbType.Int);
            objDataParams[6].Value = bill_id()+1;

            result = objData.DataAddReports(objDataParams);
            return result;
        }
        public int billing(EntityLayer objEntity1)
        {
            int result = 0;
            objDT2.Clear();

            SqlParameter[] objDataParams = new SqlParameter[3];
            objDataParams[0] = new SqlParameter("@bill_amount", SqlDbType.Int);
            objDataParams[0].Value = objEntity1.billAmount;

            objDataParams[1] = new SqlParameter("@card_number", SqlDbType.VarChar);
            objDataParams[1].Value = objEntity1.cardNo;

            objDataParams[2] = new SqlParameter("@mode_of_payment", SqlDbType.VarChar);
            objDataParams[2].Value = objEntity1.modeOfPayment;

            result = objData.DataBilling(objDataParams);
            return result;
        }

        public DataTable BFillPlan()
        {
            objDT.Clear();
            objDT = objData.DataFillPlan().Tables["Plan"];
            return objDT;
        }

        public DataTable BFillState()
        {
            objDT1.Clear();
            objDT1 = objData.DataFillState().Tables["State"];
            return objDT1;
        }

        public DataTable BFillPhysician(string plan,string state)
        {
            objDT2.Clear();
            objDT2 = objData.DataFillPhysician(plan,state).Tables["Physician"];
            return objDT2;
        }
        public int bill_id()
        {
            int bill;
            bill=objData.DataBillID();
            return bill;
        }
    }
}
