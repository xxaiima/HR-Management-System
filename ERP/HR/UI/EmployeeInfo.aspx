<%@ Page Title="Employee Information" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EmployeeInfo.aspx.cs" Inherits="HR.UI.EmployeeInfo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="card" style="padding: 20px; border-radius: 12px; box-shadow: 0 4px 8px rgba(0,0,0,0.05);">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <div class="form-inline">
                <asp:TextBox ID="txtNameFilter" runat="server" CssClass="form-control mr-sm-2" placeholder="Filter by Name..."></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-outline-secondary" OnClick="btnSearch_Click" />
                <asp:Button ID="btnAddEmployee" runat="server" Text="Add Employee" CssClass="btn btn-primary" OnClick="btnAddEmployee_Click" />
            </div>
            <div></div>
        </div>

        <asp:GridView ID="gvEmployees" runat="server"
            CssClass="table table-hover"
            AutoGenerateColumns="False"
            DataKeyNames="EmployeeID"
            GridLines="None"
            OnRowCommand="gvEmployees_RowCommand">
            <HeaderStyle CssClass="thead-light" />
            <Columns>
                <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" />
                <asp:BoundField DataField="FullName" HeaderText="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Department" HeaderText="Department" />
                <asp:TemplateField HeaderText="Actions" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" CssClass="btn btn-sm btn-outline-info" CommandName="ViewEmployee" CommandArgument='<%# Eval("EmployeeID") %>'>View</asp:LinkButton>
                        <asp:LinkButton ID="lnkEdit" runat="server" CssClass="btn btn-sm btn-outline-secondary ml-1" CommandName="EditEmployee" CommandArgument='<%# Eval("EmployeeID") %>'>Edit</asp:LinkButton>
                        <asp:LinkButton ID="lnkDelete" runat="server" CssClass="btn btn-sm btn-outline-danger ml-1" CommandName="DeleteEmployee" CommandArgument='<%# Eval("EmployeeID") %>' OnClientClick="return confirm('Are you sure you want to delete this employee?');">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <div class="alert alert-warning">No employees found matching your criteria.</div>
            </EmptyDataTemplate>
        </asp:GridView>
    </div>

</asp:Content>
