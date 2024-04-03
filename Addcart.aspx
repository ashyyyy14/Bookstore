<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addcart.aspx.cs" Inherits="Project.Addcart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Ashy's Haven</title>
    <meta name ="viewport" content="width=device-width,initial-scale=1" />
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<script src="Scripts/jquery-3.7.1.min.js" ></script>
<script src="Scripts/bootstrap.min.js" ></script>
</head>
 <body>
    <style>
  .container {
            width: 80%; /* Adjust as needed */
            margin: auto; /* Center align horizontally */
            background-color: #f0f0f0; /* Background color */
            padding: 20px; /* Padding for content inside container */
            border: 1px solid #ccc; /* Border for visual clarity */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Box shadow for a subtle effect */
        }
     </style>


    <form id="form1" runat="server">
        <div class="container">
            <h2>Add to Cart</h2>
            <div>
                <asp:Label ID="lblProduct" runat="server" Text="Title:"></asp:Label>
                <asp:DropDownList ID="ddl1" runat="server" OnSelectedIndexChanged="ddl1_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="Title"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString2 %>" ProviderName="<%$ ConnectionStrings:projectConnectionString2.ProviderName %>" SelectCommand="SELECT [Title] FROM [Books]"></asp:SqlDataSource>
            </div>
            <div>
                 <asp:Label ID="Label1" runat="server" Text="Description:"></asp:Label>
                 <asp:Label ID="lbl_desc_res" runat="server"></asp:Label>
            </div>
            <div>
                 <asp:Label ID="Label2" runat="server" Text="Price:"></asp:Label>
                 <asp:Label ID="lbl_price_res" runat="server"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblPrice" runat="server" Text="Quantity:"></asp:Label>
                <asp:DropDownList ID="ddl2" runat="server" >
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" OnClick="btnAddToCart_Click" />
            </div>
            <div>
                    <asp:Label ID="Ans" runat="server" ForeColor="Red" Text=""></asp:Label>
            </div>
        </div>
        
    </form>
</body>
</html>