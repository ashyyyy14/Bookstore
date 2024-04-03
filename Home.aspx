<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project.Order" %>

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
        .jumbotron {
    background-image: onlinebookstore.jpeg;
    background-size: cover;
    color: #000000;
    text-align: center;
    padding: 100px 0;
    margin-bottom: 0;
}

.category-card {
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 20px;
    margin-bottom: 20px;
}

.book-card img {
    max-width: 100%;
    height: auto;
}

    </style>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container-fluid">
    <a class="navbar-brand" href="Home.aspx">
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
                    <a class="nav-link" href="Login.aspx">Login</a>
                </li>
                <li class="nav-item">
                     <a class="nav-link" href="Profile.aspx">Profile</a>
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
        <div class="jumbotron">
        <h1>Welcome to Ashy's Haven</h1>
        <p>Discover a world of books at your fingertips</p>
            <asp:Button ID="Button3" runat="server" Text="Explore" OnClick="Button3_Click" />
    </div>
            <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="category-card">
                    <h2>New Arrivals</h2>
                    <p>Check out our New Arrivals</p>
                    <asp:Button ID="Button2" runat="server" Text="Explore" OnClick="Button2_Click" />
                </div>
            </div>
            <div class="col-md-6">
                <div class="category-card">
                    <h2>Best Sellers</h2>
                    <p>Explore our best-selling books</p>
                    <asp:Button ID="Button1" runat="server" Text="Explore" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </div>
      

    <footer class="footer mt-auto py-3 bg-dark">
        <div class="container">
            <span class="text-muted">© 2024 Ashy's Haven. All rights reserved.</span>
        </div>
    </footer>
    </form>
</body>
</html>
