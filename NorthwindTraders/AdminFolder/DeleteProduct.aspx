<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteProduct.aspx.cs" Inherits="NorthwindTraders.AdminFolder.DeleteProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Delete Product</h1>
    <div class="form-horizontal">
    <div class="form-group">
    
        <asp:DropDownList ID="ProductDropdown" runat="server" CssClass="form-control" style="width:200px" DataSourceID="SqlDataSource1" DataTextField="ProductID" DataValueField="ProductID"></asp:DropDownList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [ProductID], [ProductName] FROM [Products]"></asp:SqlDataSource>
    

    
   <br />
    <asp:Button runat="server" ID="DeleteProductBtn" OnClick="DeleteProductBtn_Click"  Text="Delete" CssClass="btn btn-danger"/>
        </div>
        </div>
    
</asp:Content>
