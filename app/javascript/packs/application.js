import "bootstrap";
// Data retrieved from http://vikjavev.no/ver/index.php?spenn=2d&sluttid=16.06.2015.

Highcharts.chart('container', {
  chart: {
    type: 'spline',
    scrollablePlotArea: {
      minWidth: 3000,
      scrollPositionX: 1
    }
  },
  title: {
    text: 'Cycle de vie de ma plante',
    align: 'left'
  },
  subtitle: {
    text: 'Evolution depuis son adoption',
    align: 'left'
  },
  xAxis: {
    type: 'datetime',
    labels: {
      overflow: 'justify'
    }
  },
  yAxis: {
    title: {
      text: 'Etat de ma plante'
    },
    minorGridLineWidth: 0,
    gridLineWidth: 0,
    alternateGridColor: '#F7F7F7',
    offset: 30,
    tickWidth: 0,
    plotBands: [{ // Light air
      from: 0.3,
      to: 2,
      color: 'rgba(68, 170, 213, 0.1)',
      label: {
        text: 'Awful',
        style: {
          color: '#606060'
        }
      }
    }, { // Light breeze
      from: 2,
      to: 4,
      color: 'rgba(0, 0, 0, 0)',
      label: {
        text: 'Bad',
        style: {
          color: '#606060'
        }
      }
    }, { // Gentle breeze
      from: 4,
      to: 6,
      color: 'rgba(68, 170, 213, 0.1)',
      label: {
        text: 'Ok',
        style: {
          color: '#606060'
        }
      }
    }, { // Moderate breeze
      from: 6,
      to: 8,
      color: 'rgba(0, 0, 0, 0)',
      label: {
        text: 'Good',
        style: {
          color: '#606060'
        }
      }
    }, { // Fresh breeze
      from: 8,
      to: 10,
      color: 'rgba(68, 170, 213, 0.1)',
      label: {
        text: 'Excellent',
        style: {
          color: '#606060'
        }
      }
    },
    // { // Strong breeze
    //   from: 11,
    //   to: 14,
    //   color: 'rgba(0, 0, 0, 0)',
    //   label: {
    //     text: 'Strong breeze',
    //     style: {
    //       color: '#606060'
    //     }
    //   }
    // }
    // ,{ // High wind
    //   from: 14,
    //   to: 15,
    //   color: 'rgba(68, 170, 213, 0.1)',
    //   label: {
    //     text: 'High wind',
    //     style: {
    //       color: '#606060'
    //     }
    //   }
    // }
    ]
  }
  ,
  tooltip: {
    valueSuffix: ' Etat de bien être'
  },
  plotOptions: {
    spline: {
      lineWidth: 6,
      states: {
        hover: {
          lineWidth: 8
        }
      },
      marker: {
        enabled: false
      },
      pointInterval: 604800000, // one hour
      pointStart: Date.UTC(2018, 1, 14)
    }
  },
  series: [{
    name: 'COCO',
    data: [
      2, 3, 5, 1, 4, 4, 5, 5, 2, 3, 3, 4, 4 ,4, 2, 3, 5, 1, 4,
      4, 5, 5, 2, 3, 3, 4, 4 ,4, 3, 5, 1, 4, 4, 5, 5, 2, 3, 3,
      4, 4 ,4, 4, 5, 5, 2, 3, 3, 4, 4 ,4, 3, 5, 1, 4, 4, 5, 5
    ]

  }, {
    name: 'Fleuraison',
    data: [
      0.2, 0.1, 0.1, 0.1, 0.3, 0.2, 0.3, 0.1, 0.7, 0.3, 0.2, 0.2,
      0.3, 0.1, 0.3, 0.4, 0.3, 0.2, 0.3, 0.2, 0.4, 0.0, 0.9, 0.3,
      0.7, 1.1, 1.8, 1.2, 1.4, 1.2, 0.9, 0.8, 0.9, 0.2, 0.4, 1.2,
      0.3, 2.3, 1.0, 0.7, 1.0, 0.8, 2.0, 1.2, 1.4, 3.7, 2.1, 2.0,
      1.5
    ]
  }],
  navigation: {
    menuItemStyle: {
      fontSize: '10px'
    }
  }
});
