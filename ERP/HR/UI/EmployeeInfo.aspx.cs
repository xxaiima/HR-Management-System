using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR.UI
{
    public partial class EmployeeInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

  
        /// <param name="nameFilter">
        private void BindGrid(string nameFilter = null)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbERPConnection"].ToString();
            DataTable dt = new DataTable();


            string query = "SELECT EID as EmployeeID, Name as FullName, Email, Department FROM Employees";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {

                    if (!string.IsNullOrEmpty(nameFilter))
                    {
                        query += " WHERE Name LIKE @Name";

                        cmd.Parameters.AddWithValue("@Name", "%" + nameFilter + "%");
                    }

                    cmd.CommandText = query;
                    cmd.Connection = con;

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        try
                        {
                            sda.Fill(dt);
                            gvEmployees.DataSource = dt;
                            gvEmployees.DataBind();
                        }
                        catch (Exception ex)
                        {
                            
                        }
                    }
                }
            }
        }

        // Handles the Search button click
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            // Re-bind the grid using the text from the search box as a filter
            BindGrid(txtNameFilter.Text.Trim());
        }

        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEmployee.aspx");
        }

        // Handles the View, Edit, and Delete button clicks inside the grid
        protected void gvEmployees_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string employeeId = e.CommandArgument.ToString();

            if (e.CommandName == "ViewEmployee")
            {
                Response.Redirect($"EmployeeProfile.aspx?id={employeeId}");
            }
            else if (e.CommandName == "EditEmployee")
            {
                Response.Redirect($"EditEmployee.aspx?id={employeeId}");
            }
            else if (e.CommandName == "DeleteEmployee")
            {
                
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Delete clicked for Employee ID: {employeeId}');", true);

              
                BindGrid();
            }
        }
    }
}