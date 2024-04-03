<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newarrivals.aspx.cs" Inherits="Project.Newarrivals" %>

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
    <form id="form1" runat="server">
        <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container-fluid">
    <a class="navbar-brand" href="Front.aspx">
        <div class="d-flex justify-content-start align-item-center" >
                <asp:Image ID="img_logo" runat="server" ImageUrl="LOGO.png" Style="max-width:50px"/>
                <h2> Ashy's Haven</h2>
            </div>
        </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
     <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="login.aspx">Login</a>
                </li>
            </ul>
     </div>
    </nav>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
             <span class="navbar-toggler-icon"></span>
        </button>

             <div class="collapse navbar-collapse " id="navbarNav">
                 <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                         <a class="nav-link" href="Home.aspx">Home</a>
                    </li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <li class="nav-item">
                         <a class="nav-link" href="Front1.aspx">Books</a>
                    </li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                     <li class="nav-item">
                         <a class="nav-link" href="Bestselling.aspx">Best Selling</a>
                    </li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                     
                    <li class="nav-item">
                        <a class="nav-link" href="Newarrivals.aspx">New Arrivals</a>
                    </li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                  </ul>
             </div>
    </div>
</nav>  
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    .book {
        display: flex;
        margin-bottom: 20px;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    .book img {
        width: 150px;
        height: auto;
        margin-right: 20px;
    }
    .book-info {
        flex: 1;
    }
    .book-info h3 {
        margin-top: 0;
    }
    .book-info p {
        margin: 5px 0;
    }
    .button {
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        display: inline-block;
    }
    .button:hover {
        background-color: #0056b3;
    }
</style>
     <div class="container">
    <h2>New Arrivals</h2>
    <div class="book">
        <img src="Red_queen.jpg" alt="Book 1">
        <div class="book-info">
            <h3>Red Queen</h3>
            <p>Author: Victoria Aveyard</p>
            <p>Price: $10.99</p>
            <asp:Button ID="Button1" runat="server" Text="Add to cart" OnClick="Button1_Click" />
        </div>
    </div>
    <div class="book">
        <img src="download.jpeg" alt="Book 2">
        <div class="book-info">
            <h3>The Spanish love deception </h3>
            <p>Author: Elena Amaras</p>
            <p>Price: $12.99</p>
            <asp:Button ID="Button2" runat="server" Text="Add to cart" OnClick="Button2_Click" />
        </div>
    </div>
     <div class="book">
     <img src="Amillionkisses.jpeg" alt="Book 2">
     <div class="book-info">
         <h3>A million kisses in your lifetime</h3>
         <p>Author: Monica Murphy</p>
         <p>Price: $12.99</p>
         <asp:Button ID="Button3" runat="server" Text="Add to cart" OnClick="Button3_Click" />>
     </div>
 </div>
      <div class="book">
     <img src="skinofsinner.jpeg" alt="Book 2">
     <div class="book-info">
         <h3>Skin of sinner</h3>
         <p>Author: Avina St Graves</p>
         <p>Price: $12.99</p>
         <asp:Button ID="Button4" runat="server" Text="Add to cart" OnClick="Button4_Click" />
     </div>
     
    </form>
</body>
</html>
