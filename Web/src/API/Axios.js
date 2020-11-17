import axios from 'axios';

export default axios.create({
  baseURL: `https://gateway.gr1d.io/sandbox/easycredito/v2/`,
  headers: { "accept" : "application/json", 
  "Api-Key" : "9495c25e-6dc9-4698-8f1a-8c56bce6e93e",
  "Content-Type" : "application/json"  }
});