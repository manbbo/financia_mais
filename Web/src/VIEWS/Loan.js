import React from "react";

import './Loan.css';

class Loan extends React.Component {
  state = {
    name: '',
  }

  render() {
    return (
      <div className = "Loan">
        <div className="Loan-info">
          <text className="Loan-info-text1" style={{fontStyle: "italic"}}>Peça agora seu empréstimo!</text>
          <text className="Loan-info-text2">Coloque abaixo o valor desejado:</text>
          <br></br>
          <br></br>
          <div className="Loan-values-row1">
          <button className="Loan-info-button">R$3.000</button>
          <button className="Loan-info-button">R$5.000</button>
          </div>
          <div className="Loan-values-row2">
          <button className="Loan-info-button">R$10.000</button>
          <button className="Loan-info-button">R$30.000</button>
          </div>
          <input className="Loan-info-button" min="1000" defaultValue="0" id="other_value" type="number" label="OUTRO VALOR" InputLabelProps={{
            shrink: true,
          }}/>
          <br></br>
          <a href='http://localhost:3000/emprestimo-signup'><button className="Loan-info-simulate">CONTAR O QUE VOU FAZER</button></a>
          <button className="Loan-info-simulate">PEDIR EMPRÉSTIMO</button>
              
          <br></br>
          
        </div>
      </div>
    )
  }
}

export default Loan;