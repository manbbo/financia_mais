// src/App.js

import React from "react";
import Axios from '../API/Axios';

class App extends React.Component {
  state = {
    name: '',
  }

  handleSubmit = event => {
    event.preventDefault();

    console.log("HELLO")

    const req = {
      cpf: "00000000191",
      name: "Fulano d'Tal",
      birthday: "1992-07-25",
      email: "fulano@email.com",
      phone: "62987654321",
      zipCode: "74180040",
      hasCreditCard: true,
      hasRestriction: true,
      hasOwnHouse: true,
      hasVehicle: true,
      logData: {
        latitude: -16.6982283,
        longitude: -49.2581201,
        occurrenceDate: "2019-08-21T14:31:17.459Z",
        userAgent: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36",
        ip: "0.0.0.0",
        mac: "00:00:00:00:00:00"
      }
    };

    Axios.post(`process/signup/${req}`)
      .then(res => {
        console.log(res);
        console.log(res.data);
      })
  }

  render() {
    return (
      <div>
        <form onSubmit={this.handleSubmit}>
          <label>
            Person Name:
            <input type="text" name="Name"  />
          </label>
          <button type="submit">Add</button>
        </form>
      </div>
    )
  }
}

export default App;