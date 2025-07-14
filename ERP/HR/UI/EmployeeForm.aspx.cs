using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR.UI
{
    public partial class EmployeeForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Employee: " + txtName.Text + " | Email: " + txtEmail.Text + " | Date of Birth: " + txtDoB.Text + 
                " | Gender: " + txtGender.Text + " | Department: " + txtDepartment.Text;
        }
    }
}