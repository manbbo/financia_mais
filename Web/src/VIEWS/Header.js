import './Header.css';

import { NavLink } from "react-router-dom";


 

function Header() {
    const imageClick = () => {
        console.log('Click');
      } 
  return (
    <div className ="Header">
        <div className="Header-mainicon">
        <a href='http://localhost:3000/'><img src="https://cdn.worldvectorlogo.com/logos/react.svg"
            alt = "Ir para a Home"
            width = "100vh"
            onClick ={() => imageClick()}
            style={{"pointer-events": "all"}}/></a>
        </div>
        <div className="Header-navicons">
        <nav>
            <NavLink className="inactive" exact activeClassName="active" to="/" style={{ textDecoration: 'none' }}>
                Home
            </NavLink>
            <NavLink className="inactive" activeClassName="active" to="/users" style={{ textDecoration: 'none' }} >
                Users
            </NavLink>
            <NavLink className="inactive" activeClassName="active" to="/contact" style={{ textDecoration: 'none' }}>
                Contact
            </NavLink>
            </nav>
        </div>
    </div>
  );
}

export default Header;
