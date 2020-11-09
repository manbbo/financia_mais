
import { Route, Switch } from "react-router-dom";

import App from './App';
import Users from './Users'
import Contact from './Contact'
import Notfound from './Notfound'

function Routting() {
  return (
    <Switch>
        <Route exact path="/" component={App} />
        <Route path="/users" component={Users} />
        <Route path="/contact" component={Contact} />
        <Route component={Notfound} />
      </Switch>
  );
}

export default Routting;
