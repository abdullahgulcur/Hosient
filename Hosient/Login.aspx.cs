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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-G8QV8KV;Initial Catalog=HOSIENT;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();

            string userNameAndPassworkds = "select s.userName, s.password from STAFF s inner join DEPARTMENT d " +
                "on d.departmentID = s.departmentID where d.departmentName in ('ADMINISTRATION', 'ACCOUNTING', 'RECEPTION')";

            SqlCommand cmd = new SqlCommand(userNameAndPassworkds, sqlCon);
            SqlDataReader myReader = cmd.ExecuteReader();

            while (myReader.Read())
            {
                string userName = myReader[0].ToString();
                string password = myReader[1].ToString();

                Console.WriteLine(String.Format("{0}, {1}",
                    myReader[0], myReader[1]));

                if(txtUserName.Text == userName && txtPassword.Text == password)
                {
                    Response.Redirect("Default.aspx");
                    break;
                }
            }
            myReader.Close();
            sqlCon.Close();
        }
    }
}