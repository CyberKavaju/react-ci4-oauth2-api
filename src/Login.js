import {BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import LoginForm from './comp/LoginForm';
import RegisterForm from './comp/RegisterForm';
const Login = () => {
  return ( 
    <Router>
      <div className="container">
        <div className="logo">
          <h1>Logo</h1>
        </div>
      <Switch>
        
        <Route exact path="/">
          <LoginForm/>
        </Route>
        <Route path="/register">
          <RegisterForm/>
        </Route>
      </Switch>
      </div>
    </Router>
   );
}
 
export default Login;