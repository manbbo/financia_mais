
import { Route, Switch } from "react-router-dom";

import App from './VIEWS/App';
import Users from './VIEWS/Users'
import Contact from './VIEWS/Contact'
import Notfound from './VIEWS/Notfound'
import Loan from "./VIEWS/Loan";

function Routting() {
  return (
    <Switch>
        <Route exact path="/" component={App} />
        <Route path="/quem-somos" component={Users} />
        <Route path="/atendimento" component={Contact} />
        <Route path="/blog" component={Contact} />
        <Route path="/emprestimo" component={Loan} />
        <Route path="/investimento" component={Contact} />
        <Route component={Notfound} />
      </Switch>
  );
}

export default Routting;
