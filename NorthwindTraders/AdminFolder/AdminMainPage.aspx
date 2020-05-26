<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminMainPage.aspx.cs" Inherits="NorthwindTraders.AdminFolder.AdminMainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>

        <asp:Button ID="AddProducts" runat="server" Text="Add Product" OnClick="AddProducts_Click" CssClas="Btn btn-success" />
        <asp:Button ID="DeleteProducts" runat="server" Text="Delete Product" OnClick="DeleteProducts_Click" CssClas="Btn btn-danger" />

    </p>
</asp:Content>
