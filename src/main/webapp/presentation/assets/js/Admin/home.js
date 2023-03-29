function getCategoriesAndTotalSales() {
    $.ajax
    (
      {
        url: '/petpet/admin',
        data: { "action": "categories" },
        type: 'post',
        cache: false,
        success: function (data) {
        const obj = JSON.parse(data);
        let barChartData = {};
        console.log(obj);
        obj.forEach(function(item,index,arr){
             barChartData[item.categoryName] = item.categorySales;
            });

        buildbarChar(barChartData);

        },
        error: function () {

        }
      }
    );


}
getCategoriesAndTotalSales();
function buildbarChar(data) {
   
    const ctx = document.getElementById('canvas').getContext('2d');
    
    const myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: Object.keys(data),
                    datasets: [
                        {
                            label: 'Category Performance',
                            data: Object.values(data),
                        },
                    ],
                }, options: {
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',  // Bar 1
                            'rgba(54, 162, 235, 0.2)',  // Bar 2
                            'rgba(255, 206, 86, 0.2)',  // Bar 3
                            'rgba(75, 192, 192, 0.2)',  // Bar 4
                            'rgba(153, 102, 255, 0.2)', // Bar 5
                            'rgba(255, 159, 64, 0.2)'   // Bar 6
                        ],
                        borderWidth: 2,
                        borderColor: 'black'
                    }
            });
}
function getRandomColor() {
    var letters = '0123456789ABCDEF'.split('');
    var color = '#';
    for (var i = 0; i < 6; i++ ) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}
$('.counter-count').each(function () {
    $(this).prop('Counter',0).animate({
        Counter: $(this).text()
    }, {
        duration:1000,
        easing: 'swing',
        step: function (now) {
            $(this).text(Math.ceil(now));
        }
    });
});