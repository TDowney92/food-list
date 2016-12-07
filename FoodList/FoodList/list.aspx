<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="FoodList.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>The Fridge List</h1>
    <a href="foodlist-details.aspx">Add a food item</a>
    <asp:GridView ID="grdFoodItem" runat="server" CssClass="table table-striped" AutoGenerateColumns="false" DataKeyNames="FoodItemID" OnRowDeleting="grdFoodItem_RowDeleting">
        <Columns>
            <asp:BoundField DataField="FoodItemID" HeaderText="ID" />
            <asp:BoundField DataField="Name" HeaderText="Food Name" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" DataFormatString="{0:c}" />
            <asp:HyperLinkField HeaderText="Edit" Text="Edit" NavigateUrl="~/foodlist-details.aspx" DataNavigateUrlFields="FoodItemID" DataNavigateUrlFormatString="/foodlist-details.aspx?FoodItemID={0}" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ControlStyle-CssClass="confirmation" />
        </Columns>
    </asp:GridView>
</asp:Content>
