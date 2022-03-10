import {useState} from 'react';
import { useHistory } from 'react-router-dom';
import GLOBAL from './GLOBAL';
const Login = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const history = useHistory();

  const login = async () => {
    const user = {email, password};
    fetch(GLOBAL.BASE_URL+'/login', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify(user)
    })
    .then(res => res.json())
    .then(data => {localStorage.setItem('user-info', data); history.push('/'); console.log('login')});
  }
  return ( 
    <div className="container">
      <h1>Login</h1>
      <div className="row">
        <div className="col-md-6">
          <label>Email address</label>
          <input type="email" className="form-control" placeholder="Email" value={email} onChange={(e)=>setEmail(e.target.value)}/>
        </div>
        <div className="col-md-6">
          <label>Password</label>
          <input type="password" className="form-control" placeholder="Password" value={password} onChange={(e)=>setPassword(e.target.value)}/>
        </div>
        <div className="col-md-6 mt-2">
          <button className="btn btn-primary" onClick={login}>Login</button>
        </div>
      </div>
    </div>
   );
}
 
export default Login;