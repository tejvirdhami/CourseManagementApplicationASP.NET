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
    public partial class DataForm : System.Web.UI.Page
    {
        static OleDbConnection myCon;
        OleDbCommand myCmd;
        OleDbDataReader rdEmployees;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                btnSave.Enabled = false;
                btnCancel.Enabled = false;


                // REMOVE THE ADDRESS TO REMOVE THE ERROR OF TRANSFERRING TO OTHER COMPUTERS AND ADD MAPPATH AS A SOLUTION.
                myCon = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0; Data Source =" + Server.MapPath("~/App_Data/db_project.accdb"));
                myCon.Open();

                myCmd = new OleDbCommand("SELECT [EmployeeId], FirstName, LastName, Email, JobTitle FROM Employees WHERE JobTitle='Teacher'", myCon);
                rdEmployees = myCmd.ExecuteReader();

                lstTeacher.DataTextField = "FirstName";
                lstTeacher.DataValueField = "EmployeeId";
                lstTeacher.DataSource = rdEmployees;
                lstTeacher.DataBind();

            }
        }

        protected void lstTeacher_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            myCmd = new OleDbCommand("Select * FROM Employees where FirstName =@ref", myCon);
            myCmd.Parameters.AddWithValue("ref", lstTeacher.SelectedItem.Value);

            rdEmployees = myCmd.ExecuteReader();

            rdEmployees.Close();

            myCmd.CommandText = "Select CourseCode as [Course Code], GroupNumber as [Group Number], AssignedDate as [Assigned Date] from CourseAssignments where EmployeeId =@ref";

            rdEmployees = myCmd.ExecuteReader();
            gridresults.DataSource = rdEmployees;
            gridresults.DataBind();
            txtEmployeeId.Text = lstTeacher.SelectedItem.Value;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            txtCourseCode.ReadOnly = false;
            txtGroupNumber.ReadOnly = false;
            txtAssignedDate.ReadOnly = false;

            btnAdd.Enabled = false; 

            btnSave.Enabled = true;
            btnCancel.Enabled = true;

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (gridresults.Rows.Count >= 3)
            {
                Response.Write("<script>alert(\"Cannot Assign More than 3 Courses\");</script>");

                txtEmployeeId.Text = "";
                txtCourseCode.Text = "";
                txtGroupNumber.Text = "";
                txtAssignedDate.Text = "";

                btnSave.Enabled = false;
                btnCancel.Enabled = false;
                btnAdd.Enabled = true;
            }
            else
            {
                int eId = Convert.ToInt32(lstTeacher.SelectedItem.Value);
                txtCourseCode.ReadOnly = true;
                txtGroupNumber.ReadOnly = true;
                txtAssignedDate.ReadOnly = true;

                string sql = "INSERT INTO CourseAssignments VALUES(" + eId + ", @cCode, @gNum, @aDate)";
                OleDbCommand myCmd = new OleDbCommand(sql, myCon);
                myCmd.Parameters.AddWithValue("cCode", txtCourseCode.Text);
                myCmd.Parameters.AddWithValue("gNum", Convert.ToInt32(txtGroupNumber.Text));
                myCmd.Parameters.AddWithValue("aDate", txtAssignedDate.Text);

                int result = myCmd.ExecuteNonQuery();

                Response.Write("<script>alert(\"Added\");</script>");

                txtEmployeeId.Text = "";
                txtCourseCode.Text = "";
                txtGroupNumber.Text = "";
                txtAssignedDate.Text = "";

                btnSave.Enabled = false;
                btnCancel.Enabled = false;
                btnAdd.Enabled = true;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            btnAdd.Enabled = true;
            btnSave.Enabled = false;
            btnCancel.Enabled = false;

            txtCourseCode.ReadOnly = true;
            txtGroupNumber.ReadOnly = true;
            txtAssignedDate.ReadOnly = true;

            txtEmployeeId.Text = "";
            txtCourseCode.Text = "";
            txtGroupNumber.Text = "";
            txtAssignedDate.Text = "";

        }
    }
}