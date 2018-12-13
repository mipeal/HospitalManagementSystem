using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace BCC_DOTNET_HMS_DataLayer
{
    public class DataLayer
    {
        static string conString = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;

        SqlConnection objCon = new SqlConnection(conString);
        SqlCommand objCmd = null;
        SqlDataAdapter objSda = null;
        DataSet objDs = new DataSet();

        public int DataAddPatients(SqlParameter[] objparams)
        {
            int result = 0;
            objCmd = new SqlCommand("SPENROLLPATIENTS", objCon);
            objCmd.CommandType = CommandType.StoredProcedure;

            objCmd.Parameters.AddRange(objparams);
            if (objCon.State == ConnectionState.Closed)
            {
                objCon.Open();
            }
            try
            {
                result = objCmd.ExecuteNonQuery();
                return result;
            }
            catch(SqlException e)
            {
                throw;
            }
            finally
            {
                objCon.Close();
            }

        }
        public int DataAddReports(SqlParameter[] objparams)
        {
            int result = 0;
            objCmd = new SqlCommand("SPPATIENTSDIAGNOSIS", objCon);
            objCmd.CommandType = CommandType.StoredProcedure;

            objCmd.Parameters.AddRange(objparams);
            if (objCon.State == ConnectionState.Closed)
            {
                objCon.Open();
            }
            try
            {
                result = objCmd.ExecuteNonQuery();
                return result;
            }
            catch (SqlException e)
            {
                throw;
            }
            finally
            {
                objCon.Close();
            }

        }
        public int DataBillID()
        {
            int result = 0;
            objCmd = new SqlCommand("SPBILLNUMBER", objCon);
            objCmd.CommandType = CommandType.StoredProcedure;


            if (objCon.State == ConnectionState.Closed)
            {
                objCon.Open();
            }
            try
            {
                result =(int) objCmd.ExecuteScalar();
                return result;
            }
            catch (SqlException e)
            {
                throw;
            }
            finally
            {
                objCon.Close();
            }
        }

        public int DataBilling(SqlParameter[] objparams)
        {
            int result = 0;
            objCmd = new SqlCommand("SPBILLING", objCon);
            objCmd.CommandType = CommandType.StoredProcedure;

            objCmd.Parameters.AddRange(objparams);
            if (objCon.State == ConnectionState.Closed)
            {
                objCon.Open();
            }
            try
            {
                result = objCmd.ExecuteNonQuery();
                return result;
            }
            catch (SqlException e)
            {
                throw;
            }
            finally
            {
                objCon.Close();
            }

        }


        public DataSet DataFillPlan()
        {
            objCmd = new SqlCommand("SPLISTPLAN", objCon);
            objCmd.CommandType = CommandType.StoredProcedure;

            try
            {
                if (objCon.State == ConnectionState.Closed)
                {
                    objCon.Open();
                }
                objSda = new SqlDataAdapter(objCmd);
                objSda.Fill(objDs,"Plan");
                return objDs;
            }
            catch(SqlException e)
            {
                throw;
            }
            finally
            {
                objCon.Close();
            }
        }
        public DataSet DataFillPhysician(string plan, string state)
        {
            objCmd = new SqlCommand("SPLISTPHYSICIAN", objCon);
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.Parameters.AddWithValue("@plan", plan);
            objCmd.Parameters.AddWithValue("@state", state);

            try
            {
                if (objCon.State == ConnectionState.Closed)
                {
                    objCon.Open();
                }
                objSda = new SqlDataAdapter(objCmd);
                objSda.Fill(objDs, "Physician");
                return objDs;
            }
            catch (SqlException e)
            {
                throw;
            }
            finally
            {
                objCon.Close();
            }
        }


        public DataSet DataFillState()
        {
            objCmd = new SqlCommand("SPLISTSTATE", objCon);
            objCmd.CommandType = CommandType.StoredProcedure;

            try
            {
                if (objCon.State == ConnectionState.Closed)
                {
                    objCon.Open();
                }
                objSda = new SqlDataAdapter(objCmd);
                objSda.Fill(objDs, "State");
                return objDs;
            }
            catch (SqlException e)
            {
                throw;
            }
            finally
            {
                objCon.Close();
            }
        }
    }
}
