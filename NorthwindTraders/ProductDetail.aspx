<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeBehind="ProductDetail.aspx.cs" Inherits="NorthwindTraders.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="productdiv" style="padding: 10px">
        <p>
        <asp:Label ID="titleLable" runat="server" Text="Label" style="color: maroon"></asp:Label>
        </p>
        <p>
            Product Description: 
            <asp:Label Width="400px" ID="descLabel" runat="server"  Text="Label"></asp:Label>
        </p>
        <p>
            Price:
            <asp:Label ID="priceLabel" runat="server"  Text="Label"></asp:Label>
        </p>

         <p>
             Target Level:
            <asp:Label ID="reorderLevelLabel" runat="server"  Text="Label"></asp:Label>

              Reorder Level:
             <asp:Label ID="targetLevelLabel" runat="server"  Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Button id="AddToCart_Button" runat="server" Text="Add to Cart" OnClick="AddToCart_Button_Click"/>
        </p>
        </div>
</asp:Content>

