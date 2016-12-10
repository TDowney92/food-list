<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="FoodList.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Register </h1>
    <div class="form-group">
        <asp:Label id="lblMessage" runat="server" text="Please create an account " />
    </div>
    <form class="form-control">
        <div class="form-group">
            <label for="txtUsername" class="col-sm-2 control-label">Username:</label>
            <asp:TextBox ID="textUsername" class="form-control col-sm-10" runat="server" required />
        </div>
        <div class="form-group">
            <label for="txtPassword" class="col-sm-2 control-label">Password:</label>
            <asp:TextBox ID="txtPassword" class="form-control col-sm-10" runat="server" required TextMode="Password" />
        </div>
        <div class="form-group">
            <label for="txtConfirmation" class="col-sm-2 control-label">Confirm Password:</label>
            <asp:TextBox ID="txtconfirm" class="form-control col-sm-10" runat="server" required TextMode="Password" />
            <asp:CompareValidator runat="server" ControlToValidate="txtPassword" ControlToCompare="txtConfirm" Operator="Equal" CssClass="alert alert-danger" ErrorMessage="Passwords do not match at all..." />
            </div>
        <div class="form-group">
            <asp:Button runat="server" ID="btnRegister" CssClass="btn btn-success col-sm-offset-2 col-sm-5" OnClick="btnRegister_Click" Text="Register" /> 
        </div>
    </form>
</asp:Content>
