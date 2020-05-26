<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeBehind="ProductList.aspx.cs" Inherits="NorthwindTraders.ProductList" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <h3>List of Products</h3>
    <asp:DataList ID ="DataList1" runat="server">

       
        <ItemTemplate>
            
             <a href="ProductDetail.aspx?ProductID=<%#Eval("ProductID").ToString()%>">
                 <%# HttpUtility.HtmlEncode(Eval("ProductName").ToString())%></a>
            </h3>
       
        </a>
        <p>
            Description:
            <%# HttpUtility.HtmlEncode(Eval("Description").ToString())%>
        </p>
        <p>
            Price:
            <%# HttpUtility.HtmlEncode(Eval("ListPrice", "{0:c}")) %>
        </p>
             
            Available Quantity: 
            <%# HttpUtility.HtmlEncode(Eval("AvailableQty").ToString()) %>
        </p>
               
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
