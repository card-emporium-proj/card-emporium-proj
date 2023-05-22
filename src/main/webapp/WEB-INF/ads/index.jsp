<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="header-container">
    <header class="header-img">
        <h1 class="header-text">Card Collector Emporium</h1>
    </header>
</div>

<div class="container">
    <div class="search-bar-container">
        <input type="text" id="searchBar" placeholder="Search ads..." onkeyup="searchAds()">
    </div>
    <div class="filter-bar">
        <div class="filter-text">
            <h2>Filter ads by type:</h2>
        </div>
        <div class="filter-buttons">
            <button class="filter-button" onclick="filterAds('all')">All</button>
            <button class="filter-button" onclick="filterAds('sports')">Sports</button>
            <button class="filter-button" onclick="filterAds('pokemon')">Pokemon</button>
            <button class="filter-button" onclick="filterAds('magic')">Magic</button>
        </div>
    </div>
    <div class="ad-header-container">
        <h3 class="ad-header">Available for Purchase</h3>
    </div>
    <div class="ads-card-container">
        <c:forEach var="ad" items="${ads}">
            <div class="ad-card">
                <h2>${ad.title}</h2>
                <p>${ad.category}</p>
                <img src="${ad.image}" alt="Ad Image">
                <p class="description">${ad.description}</p>
                <div class="ad-footer">
                    <p class="cost">${ad.cost}</p>
                    <button class="buy-button">Buy</button>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
  
    <script>

function filterAds(type) {
    let cards = document.getElementsByClassName("ad-card");
    for (let i = 0; i < cards.length; i++) {
        let category = cards[i].querySelector("p").textContent.trim();
        if (type === 'all' || category.toLowerCase() === type.toLowerCase()) {
            cards[i].style.display = 'block';
        } else {
            cards[i].style.display = 'none';
        }
    }
}

        function searchAds() {
            let input = document.getElementById("searchBar");
            let filter = input.value.toUpperCase();
            let adCards = document.getElementsByClassName("ad-card");

            for (let i = 0; i < adCards.length; i++) {
                let title = adCards[i].querySelector("h2").textContent.trim().toUpperCase();
                let category = adCards[i].querySelector("p").textContent.trim().toLowerCase();

                if (category.includes(filter) || title.includes(filter)) {
                    adCards[i].style.display = 'block'; // Display matching ads
                } else {
                    adCards[i].style.display = 'none'; // Hide non-matching ads
                }
            }
        }

        function handleFilterClick(type) {
            filterAds(type);
            searchAds();
        }

    </script>


</body>
</html>