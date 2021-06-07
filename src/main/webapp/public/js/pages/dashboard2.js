//[Dashboard Javascript]

//Project:	Rhythm Admin - Responsive Admin Template
//Primary use:   Used only for the main dashboard (index.html)


$(function() {

    'use strict';

    $('.inner-user-div3').slimScroll({
        height: '200px'
    });


    $('.owl-carousel').owlCarousel({
        loop: true,
        margin: 0,
        responsiveClass: true,
        autoplay: true,
        dots: false,
        nav: true,
        responsive: {
            0: {
                items: 1,
            },
            600: {
                items: 1,
            },
            1000: {
                items: 1,
            }
        }
    });


    var options = {
        series: [{
            name: 'Total',
            data: [4, 5, 7, 6, 1, 8, 3, 6, 2, 5]
        }],
        chart: {
            type: 'bar',
            height: 200,
            toolbar: {
                show: false
            }
        },
        colors: ['#2444e8'],
        plotOptions: {
            bar: {
                horizontal: false,
                columnWidth: '20%',
                endingShape: 'rounded'
            },
        },
        dataLabels: {
            enabled: false
        },
        grid: {
            show: false,
        },
        stroke: {
            show: false,
            width: 0,
            colors: ['transparent']
        },
        xaxis: {
            categories: ['8:00', '9:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00'],
        },

        yaxis: {
            axisBorder: {
                show: false
            },
            axisTicks: {
                show: false,
            },
            labels: {
                show: false,
            }

        },
        fill: {
            opacity: 1
        },
        tooltip: {
            y: {
                formatter: function(val) {
                    return val + " Appointment"
                }
            }
        }
    };

    var chart = new ApexCharts(document.querySelector("#appointment_overview"), options);
    chart.render();




    var options = {
        series: [{
                name: "New Patient",
                data: [28, 15, 30, 18, 35, 13, 43]
            },
            {
                name: "Return Patient",
                data: [10, 39, 20, 36, 15, 32, 17]
            }
        ],
        chart: {
            height: 200,
            type: 'line',
            toolbar: {
                show: false
            }
        },
        colors: ['#ee3158', '#1dbfc1'],
        dataLabels: {
            enabled: false,
        },
        stroke: {
            curve: 'smooth'
        },
        grid: {
            show: false,
        },
        xaxis: {
            categories: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Set', 'Sun'],
        },
        legend: {
            show: true,
        },
        xaxis: {
            axisBorder: {
                show: false
            },
            axisTicks: {
                show: false,
            },
            labels: {
                show: false,
            }
        },
        yaxis: {
            axisBorder: {
                show: false
            },
            axisTicks: {
                show: false,
            },
            labels: {
                show: false,
            }
        },
    };

    var chart = new ApexCharts(document.querySelector("#patients_pace"), options);
    chart.render();



    var options = {
        series: [60, 20, 5, 5, 1, 2],
        chart: {
            type: 'donut',
            width: 250,
        },
        dataLabels: {
            enabled: false,
        },
        colors: ['#3246D3', '#00D0FF', '#ee3158', '#ffa800', '#1dbfc1', '#e4e6ef'],
        legend: {
            show: false,
        },

        plotOptions: {
            pie: {
                donut: {
                    size: '75%',
                }
            }
        },
        labels: ["Application Developer", "Ethical Hacker", "Lorem Ipsum", "Dolor Sit", "DB Admin", "Etc etc"],
        responsive: [{
            breakpoint: 1600,
            options: {
                chart: {
                    width: 250,
                }
            }
        }, {
            breakpoint: 500,
            options: {
                chart: {
                    width: 200,
                }
            }
        }]
    };

    var chart = new ApexCharts(document.querySelector("#chart124"), options);
   // chart.render();

}); // End of use strict