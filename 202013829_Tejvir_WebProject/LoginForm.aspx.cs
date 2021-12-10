using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//DATABASE
using System.Data.OleDb;

namespace _202013829_Tejvir_WebProject
{
    public partial class LoginForm : System.Web.UI.Page
    {
        static OleDbConnection myCon;
        OleDbCommand myCmd;
        OleDbDataReader rdEmployees;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {


                // REMOVE THE ADDRESS TO REMOVE THE ERROR OF TRANSFERRING TO OTHER COMPUTERS AND ADD MAPPATH AS A SOLUTION.
                myCon = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0; Data Source =" + Server.MapPath("~/App_Data/db_project.accdb"));
                myCon.Open();

                

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            myCmd = new OleDbCommand("SELECT [Username], Password from Users WHERE Username=@user AND Password=@pas", myCon);
            myCmd.Parameters.AddWithValue("user", txtUsername.Text);
            myCmd.Parameters.AddWithValue("pas", txtPassword.Text);

            rdEmployees = myCmd.ExecuteReader();

           

            if (rdEmployees.HasRows)
            {
                Response.Redirect("DataForm.aspx");

            }
            else
            {
                Response.Write("<script>alert(\"Incorrect UserName or Password\");</script>");
            }
            rdEmployees.Close();
        }
    }
}