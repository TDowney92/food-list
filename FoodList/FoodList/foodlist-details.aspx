<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="foodlist-details.aspx.cs" Inherits="FoodList.foodlist_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>The Fridge List</h1>
    <div class="form-group">
        <label for="txtName" class="col-sm-3 control-label">Item Name:</label>
        <asp:TextBox ID="txtName" runat="server" required />
    </div>
    <div class="form-group">
        <label for="txtAmount" class="col-sm-3 control-label">Amount:</label>
        <asp:TextBox ID="txtAmount" runat="server" required type="number" min="0" max="9999999999" step="1" />
    </div>
    <asp:button class="btn btn-success col-sm-offset-4" ID="btnSave" runat="server" Text="save" OnClick="btnSave-Click" />
</asp:Content>
