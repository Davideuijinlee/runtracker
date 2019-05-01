import React, { Component } from 'react';
import Chart from './chart';
import RunHeader from '../nav_folder/run_nav';
import './total_stats.scss';
import PersonalBests from './personal_bests';
import axios from 'axios';
import PieChart from './piechart';

class TotalStats extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      chartData: {},
      pieChartData: {},
      // totalRunCount: 0,
      // monthlyRunCount: 0,
      // weeklyRunCount: 0
    }
  }

  componentDidMount() {
    this.getChartData();
    this.getRunCount();
  }

  getRunCount(){
    axios.get('/api/run-count.php').then(resp => {
      const {totalCount, monthCount, weekCount} = resp.data;
      this.setState ({
        // totalRunCount: totalCount,
        // monthlyRunCount: monthCount,
        // weeklyRunCount: weekCount,
        // pieChartData: {
        //   // labels: ['Last 7 Days', 'Last 30 Days', 'Total Runs'],
        //      labels: ['Less than 2 mi', '2-4mi', '3-6mi', '6-8mi', '8 or more mi'],
        //   datasets: [
        //     {
        //       label: 'miles',
        //       fill: true,
        //       // data: [weekCount, monthCount, totalCount],
        //       data: [90, 10],
        //       borderColor: 'blue',
        //     }
        //   ]
        // },
      })
    })
  }

  getChartData() {
    axios.get('/api/get_table_data.php').then(resp => {
      const { tableItems } = resp.data;
      const dates = tableItems.reverse().map(item => item.date);
      const distances = tableItems.map(item => item.distance);
      const dataArray = [0,0,0,0,0];

      tableItems.forEach(run => {
        const {distance} = run
        if(distance > 8) {
          dataArray[4]++;
        } else if(distance > 6 ) {
          dataArray[3]++;
        } else if(distance > 4) {
          dataArray[2]++;
        } else if(distance > 2) {
          dataArray[1]++;
        } else {
          dataArray[0]++;
        }
      })

      this.setState({
        pieChartData: {
          // labels: ['Last 7 Days', 'Last 30 Days', 'Total Runs'],
             labels: ['Less than 2 mi', '2-4mi', '3-6mi', '6-8mi', '8 or more mi'],
          datasets: [
            {
              label: 'miles',
              fill: true,
              // data: [weekCount, monthCount, totalCount],
              data: [...dataArray],
              borderColor: 'blue',
              backgroundColor: ['#e4cc31', '#8a1181', '#cce787', 'dodgerblue', '#36122e'],
            }
          ]
        },
        chartData: {
          labels: [...dates],
          datasets: [
            {
              label: 'miles',
              data: [...distances],
              borderColor: 'blue',
            }
          ]
        },
      })
    })
  }

  render() {
    const {totalRunCount, monthlyRunCount, weeklyRunCount, chartData, options, pieChartData} = this.state;
    return (
      <div className="total-stats">
        <RunHeader />
        <Chart options={options} chartData={chartData} />
        <div className="d-flex chart-container">
          <div className="col-6  text-center">
            {/* <div className="runCount">
              <div>Total Runs: {this.state.totalRunCount}</div>
              <div>Last 30 Days: {this.state.monthlyRunCount}</div>
              <div>Last Week: {this.state.weeklyRunCount}</div>
            </div> */}

            <PieChart pieChartData={pieChartData} />
          </div>
          <div className="offset-2 col-4">
          <div className="col-sm-3 col-md-2">
            <div className="eventProgress" data-percentage="90">
              <span className="eventProgress-left">
                <span className="eventProgress-bar"></span>
              </span>
              <span className="eventProgress-right">
                <span className="eventProgress-bar"></span>
              </span>
            <div className="eventProgress-value">
            Event Date
              {/* <span>completed</span> */}
            </div>
            </div>
            </div>
          </div>
        </div>
        <PersonalBests />
      </div>
    )
  }
}

export default TotalStats;
