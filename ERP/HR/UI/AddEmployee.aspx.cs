using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI.WebControls;

namespace HR.UI
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["dbERPConnection"].ToString();


            string sql = @"INSERT INTO Employees (Name, DoB, Phone, Email, Address, Department, Position, DoJ, EmpType)
                   VALUES (@Name, @DoB, @Phone, @Email, @Address, @Department, @Position, @DoJ, @EmpType)";


            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    // Add values from your form controls as parameters
                    command.Parameters.AddWithValue("@Name", txtName.Text);
                    command.Parameters.AddWithValue("@DoB", Convert.ToDateTime(txtDoB.Text));
                    command.Parameters.AddWithValue("@Phone", txtPhone.Text);
                    command.Parameters.AddWithValue("@Email", txtEmail.Text);
                    command.Parameters.AddWithValue("@Address", txtAddress.Text);
                    command.Parameters.AddWithValue("@Department", ddlDepartment.SelectedValue);
                    command.Parameters.AddWithValue("@Position", txtPosition.Text);
                    command.Parameters.AddWithValue("@DoJ", Convert.ToDateTime(txtDoJ.Text));
                    command.Parameters.AddWithValue("@EmpType", ddlEmpType.SelectedValue);

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery(); 

                        Response.Redirect("~/UI/EmployeeInfo.aspx");
                    }
                    catch (Exception ex)
                    {
                        lblStatus.Text = "Error saving data: " + ex.Message;
                        lblStatus.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }
    }
}