<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Front1.aspx.cs" Inherits="Project.Front1" %>

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
                            <a class="nav-link" href="Login.aspx" >Login</a>
                        </li>
                    </ul>
             </div>
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
        </nav>
       <div class="container mt-4">
        <div class="row">
            <div class="col-md-4">
                <div class="book-card">
                    <asp:Image ID="Image2" runat="server" Image src="skinofsinner.jpeg" />
                    <h5>Skin of sinner</h5>
                    <p>Author: Avina St Graves</p>
                    <p>Price: $19.99</p>
                    <asp:Button ID="Button3" runat="server" Text="Add to cart" OnClick="Button3_Click1" />
                </div>
            </div>
            <div class="col-md-4">
                <div class="book-card">
                    <asp:Image ID="Image3" runat="server" Image src="Amillionkisses.jpeg"/>
                    <h5>A million kisses in your lifetime</h5>
                    <p>Author: Monica Murphy</p>
                    <p>Price: $24.9</p>
                    <asp:Button ID="Button2" runat="server" Text="Add to cart" OnClick="Button2_Click" />
                </div>
            </div>
            <div class="col-md-4">
                <div class="book-card">
                    <asp:Image ID="Image1" runat="server" Image src="Download.jpeg" />
                    <h5>The Spanish Love Deception</h5>
                    <p>Author:Elena Amaras</p>
                    <p>Price: $29.99</p>
                    <asp:Button ID="Button1" runat="server" Text="Add to cart" OnClick="Button1_Click1" />
                </div>
            </div>
        </div>
    </div>
        <div class="container mt-4">
 <div class="row">
     <div class="col-md-4">
         <div class="book-card">
             <asp:Image ID="Image4" runat="server" Image src="Red_queen.jpg" />
             <h5>Red queen</h5>
             <p>Author: Victoria Aveyard</p>
             <p>Price: $19.99</p>
             <asp:Button ID="Button4" runat="server" Text="Add to cart" OnClick="Button4_Click" />
         </div>
     </div>
     <div class="col-md-4">
         <div class="book-card">
             <asp:Image ID="Image5" runat="server" Image src="punk57.jpeg" />
             <h5>Punk 57</h5>
             <p>Author: Penelope Douglas</p>
             <p>Price: $24.9</p>
             <asp:Button ID="Button5" runat="server" Text="Add to cart" OnClick="Button5_Click"  />
         </div>
     </div>
     <div class="col-md-4">
    <div class="book-card">
        <asp:Image ID="Image6" runat="server" Image src="T&C.jpeg" />
        <h5>Terms and Condition</h5>
        <p>Author: Lauren Asher</p>
        <p>Price: $24.9</p>
        <asp:Button ID="Button6" runat="server" Text="Add to cart" OnClick="Button6_Click"  />
    </div>
</div>
 </div>
     </form> 
</body>
</html>