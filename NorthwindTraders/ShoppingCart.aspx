<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="NorthwindTraders.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Label ID="statusLabel" runat="server"></asp:Label>
    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID">
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="Product Name" ReadOnly="True" />
            <asp:BoundField DataField="ProductID" HeaderText="Product ID" ReadOnly="True" />
            <asp:BoundField DataField="StandardCost" DataFormatString="{0:C}" HeaderText="Price" ReadOnly="True" />
            <asp:TemplateField HeaderText="QuantityToOrder">
               <ItemTemplate>
                   <asp:TextBox ID="EditQty" Text='<%#Eval("QuantityToOrder")%>' MaxSize="48px" runat="server"></asp:TextBox>
               </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" ReadOnly="True" />
        </Columns>
     
    </asp:GridView>
    </p>
    <p>
    <asp:Label ID="cartTotal" runat="server"></asp:Label>
    </p>
    <asp:Button ID="UpdateQuantityBtn" runat="server" Text="Update Quantities" OnClick="UpdateQuantityBtn_Click"/>
    <asp:Button ID="CheckoutBtn" runat="server" Text="Checkout" OnClick="CheckoutBtn_OnClickBtn_Click"/>
</asp:Content>
