import React from "react";

import logo from '../assets/images/logofirstpage.svg'
import './App.css';
//import AxiosInstance from '../API/Axios'

class App extends React.Component {

  render() {
    return (
      <div className = "App">
        <div className="App-info">
          <text className="App-info-text1" style={{fontStyle: "italic"}}>Quanto custa SEU SONHO?</text>
          <text className="App-info-text2">Com o Financa+ você consegue realizar! </text>
          <a href='http://localhost:3000/emprestimo'><button className="App-info-simulate">SIMULAR AGORA!!!</button></a>
          <br></br>
          <a href='http://localhost:3000/investimento'><button className="App-info-invest">Investir</button></a>
        </div>
        <img className="App-logo" src={logo} alt ="logo"/>
      </div>
    )
  }
}

export default App;