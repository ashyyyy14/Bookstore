<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Project.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <style>
            .container {
    width: 300px;  /* Adjust the width of the container as per your design */
    margin: 0 auto;  /* Centers the container horizontally on the page */
    padding: 20px;  /* Adds padding inside the container */
    border: 1px solid #ccc;  /* Adds a border around the container */
    border-radius: 5px;  /* Adds rounded corners to the container */
    background-color: #f9f9f9;  /* Sets the background color of the container */
}

.container h2 {
    text-align: center;  /* Centers the heading text */
}

.container div {
    margin-bottom: 10px;  /* Adds spacing between each div element */
}

.container div label {
    display: inline-block;  /* Allows labels to be displayed inline */
    width: 80px;  /* Adjusts the width of the labels */
}

.container div input[type=text],
.container div textarea {
    width: 200px;  /* Adjusts the width of the input fields */
}

.container div button {
    width: 100%;  /* Makes the button fill the entire width of its container */
    padding: 10px;  /* Adds padding to the button */
    background-color: #007bff;  /* Sets the background color of the button */
    color: #fff;  /* Sets the text color of the button */
    border: none;  /* Removes the border around the button */
    border-radius: 5px;  /* Adds rounded corners to the button */
    cursor: pointer;  /* Changes the cursor to a pointer on hover */
}

.container div button:hover {
    background-color: #0056b3;  /* Changes the background color of the button on hover */
}
        </style>
        <div class="container">
            <h2>User Profile</h2>
            <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblusername" runat="server" Text="Username:"></asp:Label>
                <asp:Label ID="lblusernameValue" runat="server" Text=""></asp:Label>
            </div>
            <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="ans" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
