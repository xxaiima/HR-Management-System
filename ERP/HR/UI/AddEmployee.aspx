<%@ Page Title="Add Employee" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="HR.UI.AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .form-container { max-width: 900px; margin: 2rem auto; background-color: #ffffff; padding: 2.5rem; border-radius: 12px; box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08); }
        .form-section-header { font-size: 1.25rem; color: #007bff; border-bottom: 2px solid #e9ecef; padding-bottom: 0.5rem; margin-bottom: 1.5rem; margin-top: 1rem; }
    </style>

    <div class="form-container">
        <div class="mb-4">
            <asp:HyperLink ID="hlBack" runat="server" NavigateUrl="~/UI/EmployeeInfo.aspx" CssClass="btn btn-link pl-0">
                &larr; Back to Employee List
            </asp:HyperLink>
        </div>
        <div class="text-center mb-4">
            <h2>New Employee Information</h2>
            <p class="text-muted">Please fill out all the required fields to add a new employee.</p>
        </div>

        <asp:Label ID="lblStatus" runat="server" EnableViewState="false"></asp:Label>

        <h4 class="form-section-header">Personal Information</h4>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Full Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter full name" required="true"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <label>Date of Birth</label>
                <asp:TextBox ID="txtDoB" runat="server" CssClass="form-control" TextMode="Date" required="true"></asp:TextBox>
            </div>
        </div>

        <h4 class="form-section-header">Contact Information</h4>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label>Phone Number</label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone" required="true"></asp:TextBox>
            </div>
            <div class="form-group col-md-4">
                <label>Work Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" required="true"></asp:TextBox>
            </div>
            <div class="form-group col-md-4">
                <label>Present Address</label>
                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" placeholder="House, Road, Area..."></asp:TextBox>
            </div>
        </div>

        <h4 class="form-section-header">Job Information</h4>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Department</label>
                <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-control" required="true">
                    <asp:ListItem Selected="True" Disabled="True" Value="">Choose...</asp:ListItem>
                    <asp:ListItem>Technology</asp:ListItem>
                    <asp:ListItem>Human Resources</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group col-md-6">
                <label>Position / Job Title</label>
                <asp:TextBox ID="txtPosition" runat="server" CssClass="form-control" required="true"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Date of Joining</label>
                <asp:TextBox ID="txtDoJ" runat="server" CssClass="form-control" TextMode="Date" required="true"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <label>Employment Type</label>
                <asp:DropDownList ID="ddlEmpType" runat="server" CssClass="form-control">
                    <asp:ListItem Selected="True" Disabled="True" Value="">Choose...</asp:ListItem>
                    <asp:ListItem>Full-Time</asp:ListItem>
                    <asp:ListItem>Part-Time</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="d-flex justify-content-between mt-5">
            <asp:Button ID="btnReset" runat="server" Text="Reset Form" CssClass="btn btn-outline-secondary btn-lg" OnClientClick="this.form.reset(); return false;" />
            <asp:Button ID="btnSave" runat="server" Text="Save Employee" CssClass="btn btn-primary btn-lg px-5" OnClick="btnSave_Click" />
        </div>
    </div>
</asp:Content>