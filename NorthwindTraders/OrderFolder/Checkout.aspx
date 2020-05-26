<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="NorthwindTraders.OrderFolder.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID">
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="Product Name" ReadOnly="True" />
            <asp:BoundField DataField="ProductID" HeaderText="Product ID" ReadOnly="True" />
            <asp:BoundField DataField="StandardCost" DataFormatString="{0:C}" HeaderText="Price" ReadOnly="True" />
            <asp:BoundField DataField="QuantityToOrder" HeaderText="Quantity" ReadOnly="true" />
            <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" ReadOnly="True" />
        </Columns>
     
    </asp:GridView>
     <asp:Label ID="cartTotal" runat="server"></asp:Label>




    <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" DataKeyNames="CartID,ProductID" ForeColor="#333333" GridLines="None">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="CartID" HeaderText="CartID" SortExpression="CartID" ReadOnly="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" ReadOnly="True" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="StandardCost" HeaderText="StandardCost" SortExpression="StandardCost" />
            <asp:BoundField DataField="QuantityToOrder" HeaderText="QuantityToOrder" SortExpression="QuantityToOrder" />
            <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" ReadOnly="True" SortExpression="Subtotal" />
        </Columns>

         <EditRowStyle BackColor="#999999" />
         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#E9E7E2" />
         <SortedAscendingHeaderStyle BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ShoppingCart] WHERE ([CartID] = @CartID)">
        <SelectParameters>
            <asp:Parameter Name="CartID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
    <asp:Button runat="server" Text="Place Order" id="PlaceOrderBtn" OnClick="PlaceOrderBtn_Click" />
</asp:Content>
