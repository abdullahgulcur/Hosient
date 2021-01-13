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
    public partial class Doctors : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-G8QV8KV;Initial Catalog=HOSIENT;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            FillGridView();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("INSERT_DOCTOR", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@fName", SqlDbType.NVarChar).Value = txtFirstName.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@lName", SqlDbType.NVarChar).Value = txtLastName.Text.Trim();

            bool gender = RadioButtonListGender.SelectedIndex == 0 ? false : true;
            sqlCmd.Parameters.AddWithValue("@gender", SqlDbType.Bit).Value = gender;

            sqlCmd.Parameters.AddWithValue("@dateOfBirth", SqlDbType.Date).Value = txtDateOfBirth.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@title", SqlDbType.NVarChar).Value = txtTitle.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@specialty", SqlDbType.NVarChar).Value = txtSpecialty.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@address", SqlDbType.NVarChar).Value = txtAddress.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@addrDesc", SqlDbType.NVarChar).Value = txtAddressDescription.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@phone", SqlDbType.NVarChar).Value = txtPhone.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@phnDesc", SqlDbType.NVarChar).Value = txtPhoneDescription.Text.Trim();
            
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();

            FillGridView();
        }

        void FillGridView()
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select p.personID, dt.title, d.specialty, p.fName + ' '"
                + "+ p.lName FullName from DOCTOR d inner join PERSON p on p.personID = d.doctorID inner join " +
                "DOCTOR_TITLE dt on dt.doctorTitleID = d.title where p.isDeleted = 0", sqlCon);
            DataTable table = new DataTable();
            sqlDataAdapter.Fill(table);
            sqlCon.Close();
            gvContact.DataSource = table;
            gvContact.DataBind();
        }

        protected void DeleteButtonClick(object sender, System.EventArgs e)
        {
            Button btn = (Button)sender;

            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            string personID = gvr.Cells[0].Text;

            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();

            SqlCommand sqlCmd = new SqlCommand("DELETE_PERSON", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@personID", SqlDbType.NVarChar).Value = personID;
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();

            FillGridView();
        }

    }
}