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


// Uncomment to style it like Apple Watch
/*
if (!Highcharts.theme) {
  Highcharts.setOptions({
    chart: {
      backgroundColor: 'black'
    },
    colors: ['#F62366', '#9DFF02', '#0CCDD6'],
    title: {
      style: {
        color: 'silver'
      }
    },
    tooltip: {
      style: {
        color: 'silver'
      }
    }
  });
}
// */

/**
 * In the chart render event, add icons on top of the circular shapes
 */
function renderIcons() {

  // Move icon
  if (!this.series[0].icon) {
    this.series[0].icon = this.renderer.path(['M', -8, 0, 'L', 8, 0, 'M', 0, -8, 'L', 8, 0, 0, 8])
      .attr({
        stroke: '#303030',
        'stroke-linecap': 'round',
        'stroke-linejoin': 'round',
        'stroke-width': 2,
        zIndex: 10
      })
      .add(this.series[2].group);
  }
  this.series[0].icon.translate(
    this.chartWidth / 2 - 10,
    this.plotHeight / 2 - this.series[0].points[0].shapeArgs.innerR -
      (this.series[0].points[0].shapeArgs.r - this.series[0].points[0].shapeArgs.innerR) / 2
  );

  // Exercise icon
  if (!this.series[1].icon) {
    this.series[1].icon = this.renderer.path(
      ['M', -8, 0, 'L', 8, 0, 'M', 0, -8, 'L', 8, 0, 0, 8,
        'M', 8, -8, 'L', 16, 0, 8, 8]
    )
      .attr({
        stroke: '#ffffff',
        'stroke-linecap': 'round',
        'stroke-linejoin': 'round',
        'stroke-width': 2,
        zIndex: 10
      })
      .add(this.series[2].group);
  }
  this.series[1].icon.translate(
    this.chartWidth / 2 - 10,
    this.plotHeight / 2 - this.series[1].points[0].shapeArgs.innerR -
      (this.series[1].points[0].shapeArgs.r - this.series[1].points[0].shapeArgs.innerR) / 2
  );

  // Stand icon
  if (!this.series[2].icon) {
    this.series[2].icon = this.renderer.path(['M', 0, 8, 'L', 0, -8, 'M', -8, 0, 'L', 0, -8, 8, 0])
      .attr({
        stroke: '#303030',
        'stroke-linecap': 'round',
        'stroke-linejoin': 'round',
        'stroke-width': 2,
        zIndex: 10
      })
      .add(this.series[2].group);
  }

  this.series[2].icon.translate(
    this.chartWidth / 2 - 10,
    this.plotHeight / 2 - this.series[2].points[0].shapeArgs.innerR -
      (this.series[2].points[0].shapeArgs.r - this.series[2].points[0].shapeArgs.innerR) / 2
  );
}

Highcharts.chart('container', {

  chart: {
    type: 'solidgauge',
    height: '110%',
    events: {
      render: renderIcons
    }
  },

  title: {
    text: 'Activity',
    style: {
      fontSize: '24px'
    }
  },

  tooltip: {
    borderWidth: 0,
    backgroundColor: 'none',
    shadow: false,
    style: {
      fontSize: '16px'
    },
    pointFormat: '{series.name}<br><span style="font-size:2em; color: {point.color}; font-weight: bold">{point.y}%</span>',
    positioner: function (labelWidth) {
      return {
        x: (this.chart.chartWidth - labelWidth) / 2,
        y: (this.chart.plotHeight / 2) + 15
      };
    }
  },

  pane: {
    startAngle: 0,
    endAngle: 360,
    background: [{ // Track for Move
      outerRadius: '112%',
      innerRadius: '88%',
      backgroundColor: Highcharts.Color(Highcharts.getOptions().colors[0])
        .setOpacity(0.3)
        .get(),
      borderWidth: 0
    }, { // Track for Exercise
      outerRadius: '87%',
      innerRadius: '63%',
      backgroundColor: Highcharts.Color(Highcharts.getOptions().colors[1])
        .setOpacity(0.3)
        .get(),
      borderWidth: 0
    }, { // Track for Stand
      outerRadius: '62%',
      innerRadius: '38%',
      backgroundColor: Highcharts.Color(Highcharts.getOptions().colors[2])
        .setOpacity(0.3)
        .get(),
      borderWidth: 0
    }]
  },

  yAxis: {
    min: 0,
    max: 100,
    lineWidth: 0,
    tickPositions: []
  },

  plotOptions: {
    solidgauge: {
      dataLabels: {
        enabled: false
      },
      linecap: 'round',
      stickyTracking: false,
      rounded: true
    }
  },

  series: [{
    name: 'Move',
    data: [{
      color: Highcharts.getOptions().colors[0],
      radius: '112%',
      innerRadius: '88%',
      y: 80
    }]
  }, {
    name: 'Exercise',
    data: [{
      color: Highcharts.getOptions().colors[1],
      radius: '87%',
      innerRadius: '63%',
      y: 65
    }]
  }, {
    name: 'Stand',
    data: [{
      color: Highcharts.getOptions().colors[2],
      radius: '62%',
      innerRadius: '38%',
      y: 50
    }]
  }]
});
