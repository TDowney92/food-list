<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="FoodList.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Register </h1>
    <div class="form-group">
        <asp:lable id="lblMessage" runat="server" cssclass="alert alert-info col-sm-offset-5" text="Please create an account " />
    </div>
    <div class="form-group">
        <lable for="txtUsername" class="control-label col-sm-4">Username:</lable>
        <asp:TextBox ID="textUsername" runat="server" required />
    </div>
    <div class="form-group">
        <lable for="txtPassword" class="control-label col-sm-4">Password:</lable>
        <asp:TextBox ID="txtPassword" runat="server" required TextMode="Password" />
    </div>
    <div class="form-group">
        <label for="txtConfirmation" class="control-label col-sm-4">Confirm Password:</label>
        <asp:TextBox ID="txtconfirm" runat="server" required TextMode="Password" />
        <asp:CompareValidator runat="server" ControlToValidate="txtPassword" ControlToCompare="txtConfirm" Operator="Equal" CssClass="alert alert-danger" ErrorMessage="Passwords do not match at all..." />
    </div>
    <asp:Button runat="server" ID="btnRegister" CssClass="btn btn-success col-sm-offset-4" OnClick="btnRegister_Click" Text="Register" /> 
</asp:Content>
