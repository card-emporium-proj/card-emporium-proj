

let input = document.querySelector('#searchbar')
input.addEventListener('keyup', filter)
function filter() {
    let inputQuery = document.querySelector('#searchbar').value.toLowerCase();
    let filteredAds = [];
    Ads.forEach(function (Ad) {
        let name = Ad.name.toLowerCase();
        if (name.includes(inputQuery))  {
            filteredAds.push(Ad);
        }
    });
    tbody.innerHTML = renderCoffees(filteredCoffees);
}