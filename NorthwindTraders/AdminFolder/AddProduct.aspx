<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="NorthwindTraders.AdminFolder.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-horizontal">
    <div class="form-group">
        <asp:Label ID="LabelAddCategory" runat="server" Text="Category: " CssClass="col-md-2"></asp:Label>
        <asp:DropDownList ID="DropDownAddCategory" runat="server" CssClass="Form-control" style="width:200px" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
    </div>
  

    <div class ="form-group">
        <asp:Label ID="LabelAddName"  runat="server" CssClass="col-md-2">Name:</asp:Label>
        <asp:TextBox ID="AddProductName" runat="server" CssClass="Form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Product Name is a required field." ControlToValidate="AddProductName" SetFocusOnError="true" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
     <div class="form-group">
        <asp:Label ID="LabelAddDescription"  runat="server" CssClass="col-md-2">Product Description:</asp:Label>
        <asp:TextBox ID="AddDescription" runat="server" CssClass="Form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Product description is a required field." ControlToValidate="AddDescription" SetFocusOnError="true" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>

        <div class="form-group">
        <asp:Label ID="LabelAddProductCode"  runat="server" CssClass="col-md-2">Product Code:</asp:Label>
        <asp:TextBox ID="AddProductCode" runat="server" CssClass="Form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Product code is a required field." ControlToValidate="AddProductCode" SetFocusOnError="true" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <asp:Label ID="LabelAddStandardCost"  runat="server" CssClass="col-md-2">Standard Cost:</asp:Label>
        <asp:TextBox ID="AddStandardCost" runat="server" CssClass="Form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Standard cost is a required field." ControlToValidate="AddStandardCost" SetFocusOnError="true" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <asp:Label ID="LabelAddListPrice"  runat="server" CssClass="col-md-2">List Price:</asp:Label>
        <asp:TextBox ID="AddListPrice" runat="server" CssClass="Form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="List price is a required field." ControlToValidate="AddStandardCost" SetFocusOnError="true" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <asp:Label ID="LabelAddReorderLevel"  runat="server" CssClass="col-md-2">Reorder Level:</asp:Label>
        <asp:TextBox ID="AddReorderLevel" runat="server" CssClass="Form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="ReorderLevel is a required field." ControlToValidate="AddReorderLevel" SetFocusOnError="true" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
     <div class="form-group">
        <asp:Label ID="LabelAddTargetLevel"  runat="server" CssClass="col-md-2">Target Level:</asp:Label>
        <asp:TextBox ID="AddTargetLevel" runat="server" CssClass="Form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Target Level is a required field." ControlToValidate="AddTargetLevel" SetFocusOnError="true" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>

     <div class="form-group">
        <asp:Label ID="LabelAddAvailableQty"  runat="server" CssClass="col-md-2">Available Quantity: </asp:Label>
        <asp:TextBox ID="AddAvailableQty" runat="server" CssClass="Form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Available Quantity is a required field." ControlToValidate="AddAvailableQty" SetFocusOnError="true" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <asp:Label ID="SupplierLabel" runat="server" Text="Supplier: " CssClass="col-md-2"></asp:Label>
       <asp:DropDownList ID="AddSupplier" runat="server" CssClass="Form-control" style="width:200px" DataSourceID="SqlDataSource2" DataTextField="Company" DataValueField="SupplierID"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [SupplierID], [Company] FROM [Suppliers]"></asp:SqlDataSource>
    </div>

    <p></p>
    <p></p>
    <asp:Button ID="AddProductButton" runat="server" Text="AddProduct" onclick="AddProductButton_Click" CausesValidation="true" CssClass="btn btn-success"/>
         </div>

     <asp:Label ID="StatusLabel" runat="server" Text="statusLabel" Visible="false"></asp:Label>
</asp:Content>
