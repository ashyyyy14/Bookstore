<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Login" %>

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
    <form runat ="server">
            <style>
        /* Center-align the form */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Adjust as needed */
        }

        /* Style the form elements */
        .login-form {
            width: 300px; /* Adjust as needed */
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .login-form input[type="text"],
        .login-form input[type="password"],
        .login-form button {
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        .login-form button {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }

        .login-form button:hover {
            background-color: #0056b3;
        }

        .error-message {
            color: red;
            margin-bottom: 10px;
        }
    </style>
    <style>
        /* Center-align the image */
        .center-align {
            text-align: center;
        }
        
        .center-align img {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
    <div class="center-align">
    <div class="container" >
        <div class="login-form">
            <h2>Login</h2>
            <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            &nbsp;<asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>
            <asp:Button ID="Signup" runat="server" Text="Sign up" OnClick="Signup_Click" />
        </div>
    </div>
        </div>
        </form>
</body>
</html>
