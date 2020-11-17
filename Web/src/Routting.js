
import { Route, Switch } from "react-router-dom";

import App from './VIEWS/App';
import Users from './VIEWS/Users'
import Contact from './VIEWS/Contact'
import Notfound from './VIEWS/Notfound'

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
