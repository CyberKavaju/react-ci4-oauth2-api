import {BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import LoginForm from './comp/LoginForm';
import RegisterForm from './comp/RegisterForm';
const Login = () => {
  return ( 
    <Router>
      <div className="container">
        <div className="card position-absolute top-50 start-50 translate-middle">
          <div className="card-body">
            <Switch>
              <Route exact path="/">
                <LoginForm/>
              </Route>
              <Route exact path="/register">
                <RegisterForm/>
              </Route>
            </Switch>
          </div>
        </div>
      </div>
    </Router>
   );
}
 
export default Login;