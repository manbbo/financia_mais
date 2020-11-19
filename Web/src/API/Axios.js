import axios from 'axios';

class AxiosInstance {
  constructor(props) {
    pipelineURL: ""
    aditionalVals : ""
    aditionalHeaders : []
  }


  theAxios = axios.create({
    baseURL: `https://gateway.gr1d.io/sandbox/easycredito/v2/${pipelineURL}`,
    headers: aditionalHeaders
    // signup /process/signup
    //{ "accept" : "application/json", 
    //"Api-Key" ou "X-Api-Key" : "9495c25e-6dc9-4698-8f1a-8c56bce6e93e",
    //"Content-Type" : "application/json"  }
  });

  //axiosGet = axios.create({
  //  baseURL: `https://gateway.gr1d.io/sandbox/easycredito/v2/process/status/${id}`,
  //  headers: 
    // get
    //{ "accept" : "application/json", "Api-Key" : "9495c25e-6dc9-4698-8f1a-8c56bce6e93e" }
  //});

  //axiosPut = axios.create({
  //  baseURL: `https://gateway.gr1d.io/sandbox/easycredito/v2/process/document/${id}`,
  //  headers: 
    // get
    //{ "accept" : "application/json", "Content-Type" : "application/json", "Api-Key" : "9495c25e-6dc9-4698-8f1a-8c56bce6e93e" }
  //});

  //axiosUpdate = axios.create({
  //  baseURL: `https://gateway.gr1d.io/sandbox/easycredito/v2/process/proposal/${id}`,
  //  headers: 
    // get
    //{ "accept" : "application/json", "Content-Type" : "application/json", "Api-Key" : "9495c25e-6dc9-4698-8f1a-8c56bce6e93e" }
  //});
}

export default AxiosInstance