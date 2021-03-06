﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FoodList.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Log In</h1>
    <form class="form-control">
        <div class="form-group">
            <asp:Label ID="lblMessage" runat="server" Text="Enter your Login info" />
        </div>
        <div class="form-group">
            <label for="txtUsername" class="control-label col-sm-5">Username:</label>
            <asp:TextBox ID="txtUsername"  runat="server" required />
        </div>
        <div class="form-group">
            <label for="txtPassword"  class="control-label col-sm-5">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" required />
        </div>
        <asp:Button ID="btbnLogin" runat="server" CssClass="btn btn-success col-sm-offset-3" Text="login" OnClick="btnLogin_Click" />
    </form>
</asp:Content>
