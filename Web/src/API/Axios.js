import axios from 'axios';

//class  {
  
const AxiosInstance = axios.create({
    baseURL: `https://cors-anywhere.herokuapp.com/https://gateway.gr1d.io/sandbox/easycredito/v2`,
    // signup /process/signup
    //{ "accept" : "application/json", 
    //"Api-Key" ou "X-Api-Key" : "9495c25e-6dc9-4698-8f1a-8c56bce6e93e",
    //"Content-Type" : "application/json"  }
  });

  /** post update
   * {
  "mother": "Fulana Mãe",
  "gender": "MASCULINO",
  "nationality": "BRASILEIRO",
  "hometownState": "GO",
  "hometown": "Goiânia",
  "education": "POS_GRADUACAO",
  "relationshipStatus": "CASADO",
  "phoneLandline": "6232345678",
  "identity": {
    "type": "RG",
    "number": "123456",
    "issuer": "SSP",
    "state": "GO",
    "issuingDate": "2010-01-01"
  },
  "address": {
    "zipCode": "74000000",
    "address": "Cidade de Goiânia",
    "number": 0,
    "complement": "toda a cidade",
    "district": "geral",
    "state": "GO",
    "city": "Goiânia",
    "homeType": "ALUGADA",
    "homeSince": "MAIOR_2_ANOS"
  },
  "vehicle": {
    "licensePlate": "XXX0000"
  },
  "business": {
    "occupation": "ASSALARIADO",
    "profession": "ADMINISTRADOR",
    "companyName": "Abobrinha",
    "phone": "6239413142",
    "income": 1500,
    "payday": 1,
    "benefitNumber": "",
    "zipCode": "74000000",
    "address": "Cidade de Goiânia",
    "number": 1,
    "complement": "toda a cidade",
    "district": "geral",
    "state": "GO",
    "city": "Goiânia"
  },
  "bank": {
    "bank": "001",
    "type": "CONTA_CORRENTE_INDIVIDUAL",
    "agency": "0001",
    "account": "5647891"
  },
  "reference": [
    {
      "name": "Joana",
      "phone": "11987654321"
    }
  ]
}
   * 
   */


   /**
    * Post Signup
    * {
  "cpf": "00000000191",
  "name": "Fulano d'Tal",
  "birthday": "1992-07-25",
  "email": "fulano@email.com",
  "phone": "62987654321",
  "zipCode": "74180040",
  "hasCreditCard": true,
  "hasRestriction": true,
  "hasOwnHouse": true,
  "hasVehicle": true,
  "logData": {
    "latitude": -16.6982283,
    "longitude": -49.2581201,
    "occurrenceDate": "2019-08-21T14:31:17.459Z",
    "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36",
    "ip": "0.0.0.0",
    "mac": "00:00:00:00:00:00"
  }
}
    */

    /**
     * PUT 
     * image in base64
     * {
  "type": "SELF",
  "mimeType": "image/png",
  "name": "self1347.png",
  "base64": "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"
}
     */

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

export default AxiosInstance