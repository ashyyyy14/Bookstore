<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="temp.aspx.cs" Inherits="Project.temp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Add New Book</h2>
            <div>
                <asp:Label ID="lblTitle" runat="server" Text="Title:"></asp:Label>
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblAuthor" runat="server" Text="Author:"></asp:Label>
                <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblPrice" runat="server" Text="Price:"></asp:Label>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnAddBook" runat="server" Text="Add Book" />
            </div>
        </div>
        
        <hr />
        
        <div>
            <h2>Books</h2>
            <asp:GridView ID="gvBooks" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField HeaderText="Title" DataField="Title" />
                    <asp:BoundField HeaderText="Author" DataField="Author" />
                    <asp:BoundField HeaderText="Price" DataField="Price" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
