<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="FoodList.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>The Fridge List</h1>
    <a href="foodlist-details.aspx">Add a food item</a>
        <asp:GridView ID="grdFoodList" runat="server" CssClass="table table-striped" AutoGenerateColumns="false" DataKeyNames="FoodListID" OnRowDeleting="grdItem_RowDeleting">
        <Columns>
            <asp:BoundField DataField="FoodListID" HeaderText="ID" />
            <asp:BoundField DataField="Name" HeaderText="Food Name" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" />
            <asp:HyperLinkField HeaderText="Edit" Text="Edit" NavigateUrl="~/foodlist-details.aspx" DataNavigateUrlFields="FoodListID" DataNavigateUrlFormatString="/foodlist-details.aspx?FoodListID={0}" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ControlStyle-CssClass="confirmation" />
        </Columns>
    </asp:GridView>
</asp:Content>
