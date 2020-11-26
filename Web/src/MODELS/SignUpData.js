import React from "react";
import PropTypes from "prop-types";

import "bootstrap/dist/css/bootstrap.min.css";
import "shards-ui/dist/css/shards.min.css";

import { Card } from "shards-react";

import AxiosInstance from '../API/Axios'

class SignUpData extends React.Component {
  state = {
    isLoading: true,
    data: ""
  }

  componentDidMount() {
    AxiosInstance.defaults.headers = {
      "accept" : "application/json", 
      "X-Api-Key" : "9495c25e-6dc9-4698-8f1a-8c56bce6e93e", 
      "Content-Type" : "application/json", 
      'Access-Control-Allow-Origin': "http://localhost:3000/"
    }

    AxiosInstance.post('process/signup',{
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
    },  ).then((response) => {
      console.log(response.data)
      this.setState({isLoading:false, data: response.data.string})
    })
  }
  
  render() {
    const loadingMessage = <span className="d-flex m-auto">Loading...</span>;

    console.log(this.state.isLoading)

    const userDetails = (
      <div>
        <h4 className="mb-0">Deu certo</h4>
        <span className="text-muted">{this.state.data}</span>
      </div>
    );

    return (
      <Card
        className="mx-auto mt-4 text-center p-5"
        style={{ maxWidth: "300px", minHeight: "250px" }}
      >
        {this.state.isLoading ? loadingMessage : userDetails}
      </Card>
      
    );
  }
}

SignUpData.propTypes = {
  name: PropTypes.string,
  cpf: PropTypes.string,
  email: PropTypes.string,
  isLoading: PropTypes.bool
};

export default SignUpData;