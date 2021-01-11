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
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-G8QV8KV;Initial Catalog=HOSIENT;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("INSERT_PAYMENT_ITEM", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@patientBillID", SqlDbType.BigInt).Value = txtPatientBillID.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@itemFormCode", SqlDbType.NVarChar).Value = txtItemFormCode.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@itemDescription", SqlDbType.NVarChar).Value = txtItemDescription.Text.Trim();
            sqlCmd.Parameters.AddWithValue("@chargeAmount", SqlDbType.Decimal).Value = txtChargeAmount.Text.Trim();

            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
        }
    }
}