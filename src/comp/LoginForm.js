import {useState} from 'react';
import { useHistory , Link} from 'react-router-dom';
import GLOBAL from '../GLOBAL';
const LoginForm = () => {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const history = useHistory();
  const handelLogin = () => {
    //make a simple fecth to check if the user is login or not
    const params = new URLSearchParams();
    params.append('username', username);
    params.append('password', password);
    params.append('grant_type', 'client_credentials');
    params.append('client_id', GLOBAL.OAUTH2_CLIENT_ID);
    params.append('client_secret', GLOBAL.OAUTH2_CLIENT_SECRET);
    //send the data to the server
    console.log(params.toString());
    fetch(`${GLOBAL.BASE_URL}/users/login`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: params,
    })
    .then(res => res.json())
    .then(data => {
      if(data.access_token){
        //if the user is login then save the token to the local storage
        localStorage.setItem('user-info', JSON.stringify(data));
        history.push('/');
      }
    })

  }
  return ( 
    <div className="loginform">
      <div className="container">
      <div className="row">
        <div className="col-sm-8 mx-auto">  
          <h1>Login</h1>
          <div className="row">
            <div className="col-md-12">
              <label>Username</label>
              <input type="text" className="form-control" placeholder="Username" value={username} onChange={(e)=>setUsername(e.target.value)}/>
            </div>
            <div className="col-md-12">
              <label>Password</label>
              <input type="password" className="form-control" placeholder="Password" value={password} onChange={(e)=>setPassword(e.target.value)}/>
            </div>
            <div className="col-md-12 mt-2">
              <button className="btn btn-primary" onClick={handelLogin}>Login</button>
            </div>
          </div>
        </div>
        <div className="col-sm-8 mx-auto mt-3 border-top">
          <p>You don't have an account? <Link to="/register">Register</Link></p>
        </div>
      </div>
    </div>
    </div>
   );
}
 
export default LoginForm;