import {Link} from 'react-router-dom';
const Nav = () => {
  return ( 
    <nav>
      <Link to="/">Home</Link>
      <Link to="/new">Add note</Link>
    </nav>
   );
}
 
export default Nav;