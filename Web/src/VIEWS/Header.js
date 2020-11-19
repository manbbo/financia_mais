import './Header.css';

import { NavLink } from "react-router-dom";

function Header() {
  return (
    <div className ="Header">
    
        <div className="Header-navicons">
        <nav>
        <NavLink className="inactive" exact activeClassName="active" to="/" style={{ textDecoration: 'none' }}>
                Início
            </NavLink>
            <NavLink className="inactive" exact activeClassName="active" to="/quem-somos" style={{ textDecoration: 'none' }}>
                Quem somos?
            </NavLink>
            
            <NavLink className="inactive" exact activeClassName="active" to="/atendimento" style={{ textDecoration: 'none' }}>
                Atendimento
            </NavLink>
            <NavLink className="inactive" activeClassName="active" to="/blog" style={{ textDecoration: 'none' }} >
                Blog
            </NavLink>
            <NavLink className="inactive" activeClassName="active" to="/emprestimo" style={{ textDecoration: 'none' }}>
                Empréstimos
            </NavLink>
            <NavLink className="inactive" exact activeClassName="active" to="/investimento" style={{ textDecoration: 'none' }}>
                Investimento
            </NavLink>
            
            </nav>
        </div>
    </div>
  );
}

export default Header;
