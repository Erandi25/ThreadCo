<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ThreadCo.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="banner-container">
        <div class="banner" style="position: relative; overflow: hidden; width: 100%;">
            <div class="slides" style="display: flex; transition: transform 4.5s ease;">
                <img src="images/banner-1.jpg" alt="Banner 1" style="width: 100%; height: 850px;" />
                <img src="images/banner-2.jpg" alt="Banner 2" style="width: 100%; height: 850px;" />
                <img src="images/banner-3.jpg" alt="Banner 3" style="width: 100%; height: 850px;" />
                <img src="images/banner-4.jpg" alt="Banner 4" style="width: 100%; height: 850px;" />
            </div>
        </div>
    </div>
    
    <script>
        let currentSlide = 0;
        const slides = document.querySelector('.slides');
        const totalSlides = slides.children.length;

        function showSlide(index) {
            currentSlide = (index + totalSlides) % totalSlides;
            const offset = -currentSlide * 100;
            slides.style.transform = translateX(${ offset } %);
        }

        function nextSlide() {
            showSlide(currentSlide + 1);
        }

        function prevSlide() {
            showSlide(currentSlide - 1);
        }

        setInterval(nextSlide, 3000);
    </script>
    
    <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">
        <div style="display: flex; align-items: center; background-color: white; border-radius: 25px; padding: 5px 10px; box-shadow: 0 0 10px rgba(0,0,0,0.2);">
            <asp:TextBox ID="txtSearch" runat="server" 
                placeholder="Search for any collection"
                style="width: 400px; padding: 12px 20px; border: none; outline: none; border-radius: 25px; font-size: 16px;"></asp:TextBox>
            <asp:LinkButton ID="btnSearch" runat="server" OnClick="btnSearch_Click" 
                style="background: none; border: none; cursor: pointer; text-decoration: none;">
                <img src="images/searchImage.JPG" alt="Search" style="width: 30px; vertical-align: middle;" />
            </asp:LinkButton>
        </div>
    </div>

    <h2 style="text-align: center; margin: 50px 0 30px; font-family: 'Georgia', serif;">Latest Collections</h2>
    
    <div style="display: flex; justify-content: center; gap: 30px; flex-wrap: wrap; margin-bottom: 50px;">
       <a href="New_Arrivals.aspx">
        <img src="images/image1.jpg" alt="Collection 1" style="height: 200px;" />
        <img src="images/image2.jpg" alt="Collection 2" style="height: 200px;" />
        <img src="images/image3.jpg" alt="Collection 3" style="height: 200px;" />
        <img src="images/image4.jpg" alt="Collection 4" style="height: 200px;" />
        <img src="images/image5.jpg" alt="Collection 5" style="height: 200px;" />
        </a>
    </div>
</asp:Content>