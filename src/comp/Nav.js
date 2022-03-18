import {Link} from 'react-router-dom';
const Nav = ({data}) => {
  return ( 
    <header className='p-3 bg-dark text-white'>
    <div className="container">
      <div className="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" className="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <h1>logo</h1>
        </a>

        <ul className="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><Link className='nav-link px-2 text-white' to="/">Home</Link></li>
          <li><Link className='nav-link px-2 text-white' to="/new">Add note</Link></li>
        </ul>

        <div className="text-end">
          <button type="button" className="btn btn-warning" onClick={data}>Logout</button>
        </div>
      </div>
    </div>
    </header>
   );
}
 
export default Nav;