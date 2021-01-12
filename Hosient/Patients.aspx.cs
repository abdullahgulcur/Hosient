using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hosient
{
    public partial class Patients : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-G8QV8KV;Initial Catalog=HOSIENT;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            FillInmateWithDoctors();
            FillPatientWithKins();
        }

        void FillInmateWithDoctors()
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from INMATES_WITH_THEIR_DOCTORS", sqlCon);
            DataTable table = new DataTable();
            sqlDataAdapter.Fill(table);
            sqlCon.Close();
            hospitalizedPatients.DataSource = table;
            hospitalizedPatients.DataBind();
        }

        void FillPatientWithKins()
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from PATIENT_KIN_PHONE_NUMBER", sqlCon);
            DataTable table = new DataTable();
            sqlDataAdapter.Fill(table);
            sqlCon.Close();
            patientWithKins.DataSource = table;
            patientWithKins.DataBind();
        }



        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("INSERT_PATIENT", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@fName", SqlDbType.NVarChar).Value = txtFirstName.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@lName", SqlDbType.NVarChar).Value = txtLastName.Text.Trim();

            bool gender = RadioButtonListGender.SelectedIndex == 0 ? false : true;
            sqlCmd.Parameters.AddWithValue("@gender", SqlDbType.Bit).Value = gender;

            sqlCmd.Parameters.AddWithValue("@dateOfBirth", SqlDbType.Date).Value = txtDateOfBirth.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@height", SqlDbType.SmallInt).Value = txtHeight.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@weight", SqlDbType.SmallInt).Value = txtWeight.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@bloodType", SqlDbType.NVarChar).Value = txtBloodType.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@address", SqlDbType.NVarChar).Value = txtAddress.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@addrDesc", SqlDbType.NVarChar).Value = txtAddressDescription.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@phone", SqlDbType.NVarChar).Value = txtPhone.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@phnDesc", SqlDbType.NVarChar).Value = txtPhoneDescription.Text.Trim();

            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();

            FillInmateWithDoctors();
        }

        protected void ButtonHospitalizePatient_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("HOSPITALIZE_PATIENT", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@patientID", SqlDbType.BigInt).Value = txtPatientID.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@roomNumber", SqlDbType.SmallInt).Value = txtRoomNumber.Text.Trim();

            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();

            FillInmateWithDoctors();
        }
    }
}